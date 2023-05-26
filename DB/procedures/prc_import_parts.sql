CREATE OR REPLACE PROCEDURE import_parts
AS
    n_file_id           NUMBER;
    n_item_id           NUMBER;
    n_order_id          NUMBER;
    n_flag_wrong_item   NUMBER := 0;
    s_error_item        VARCHAR2(100);
    n_count             NUMBER;
BEGIN
    SELECT   id
    INTO     n_file_id
    FROM     apex_application_temp_files
    WHERE    UPPER(filename) LIKE '%.CSV%'
    OR       UPPER(filename) LIKE '%.XLSX%'
    ORDER BY created_on DESC
    FETCH    FIRST ROW ONLY;

    FOR x IN (SELECT col001
                    ,col002
                    ,col003
                    ,col004
                    ,col005
                    ,REPLACE(col006
                            ,','
                            ,'.')    AS col006
                    ,col007
              FROM   apex_application_temp_files  f
                    ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                 ,p_add_headers_row               => 'Y'
                                                 ,p_skip_rows                     => 1
                                                 ,p_max_rows                      => 10000000
                                                 ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                 ,p_file_name                     => f.filename)) p
              WHERE  f.id = n_file_id)
    LOOP
        BEGIN
            SELECT id
            INTO   n_item_id
            FROM   items
            WHERE  UPPER(REPLACE(supplier || ' ' || model
                                ,' '
                                ,'')) = UPPER(REPLACE(x.col002
                                                     ,' '
                                                     ,''));
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
                n_item_id := 0;
                n_flag_wrong_item := 1;
                :p26_flag := 1;
                s_error_item := x.col002;
        END;

        BEGIN
            SELECT id
            INTO   n_order_id
            FROM   orders
            WHERE  UPPER(TRIM(sid)) = UPPER(TRIM(x.col007));
        EXCEPTION
            WHEN OTHERS THEN
                n_order_id := NULL;
        END;

        IF n_flag_wrong_item = 0 THEN
            INSERT INTO storage_parts(sid
                                     ,item_id
                                     ,part_name
                                     ,description
                                     ,quantity
                                     ,price
                                     ,order_id)
            VALUES      (x.col001
                        ,n_item_id
                        ,x.col003
                        ,x.col004
                        ,x.col005
                        ,x.col006
                        ,n_order_id);
        END IF;

        n_flag_wrong_item := 0;

        SELECT COUNT(*)
        INTO   n_count
        FROM   part_requests p
        WHERE  NOT EXISTS
                   (SELECT *
                    FROM   storage_parts
                    WHERE  sid = p.sid)
        AND    p.order_id = n_order_id;

        IF n_count = 0 THEN
            UPDATE orders
            SET    status = 'In progress'
            WHERE  id = n_order_id;
        END IF;
    END LOOP;

    IF :p26_flag = 1 THEN
        apex_error.add_error(
            p_message            => 'Parts were imported, but item "' || s_error_item || '" was not found. Please make sure that item names are correct.'
           ,p_display_location   => apex_error.c_inline_in_notification);
    END IF;

    DELETE FROM apex_application_temp_files;
END;