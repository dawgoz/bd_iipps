prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Import Parts'
,p_alias=>'IMPORT-PARTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Import Parts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375470517892046)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421123614'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427255004636361342)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73427255284316361344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73427255004636361342)
,p_button_name=>'IMPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73170483216792707446)
,p_name=>'P26_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73427255004636361342)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Format:'
,p_source=>'ID | Item Name | Part Name | Description | Quantity | Price | Order ID |'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-none:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427255192753361343)
,p_name=>'P26_FILE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73427255004636361342)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
,p_attribute_13=>'Parts File'
,p_attribute_14=>'Choose Excel or CSV file'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427255531391361347)
,p_name=>'P26_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73427255004636361342)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73427255328777361345)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_file_id number;',
'    n_item_id number;',
'    n_order_id number;',
'    n_flag_wrong_item number := 0;',
'    s_error_item varchar2(100);',
'    n_count number;',
'begin',
'    select id ',
'    into n_file_id ',
'    from apex_application_temp_files ',
'    where upper(filename) like ''%.CSV%'' ',
'    or upper(filename) like ''%.XLSX%''',
'    order by created_on desc',
'    fetch first row only;',
'',
'    for x in (SELECT col001, col002, col003, col004, col005, replace(col006, '','', ''.'') as col006, col007',
'                           FROM   apex_application_temp_files  f',
'                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content',
'                                                              ,p_add_headers_row               => ''Y''',
'                                                              ,p_skip_rows                     => 1',
'                                                              ,p_max_rows                      => 10000000',
'                                                              ,p_store_profile_to_collection   => ''FILE_PARSER_COLLECTION''',
'                                                              ,p_file_name                     => f.filename)) p',
'                           WHERE  f.id = n_file_id) ',
'    loop',
'        begin',
'            select id',
'            into n_item_id',
'            from items ',
'            where upper(replace(supplier || '' ''|| model,'' '', '''')) = upper(replace(x.col002,'' '', ''''));',
'',
'        exception when others then null;',
'            n_item_id := 0;',
'            n_flag_wrong_item :=1;',
'            :P26_FLAG :=  1;',
'            s_error_item := x.col002;',
'        end;',
'        begin',
'            select id ',
'            into n_order_id',
'            from orders ',
'            where upper(trim(sid)) =  upper(trim(x.col007));',
'        exception when others then ',
'            n_order_id := null;',
'        end;',
'        if n_flag_wrong_item = 0 then',
'            insert into storage_parts(sid, item_id, part_name, description, quantity, price, order_id)',
'            values(x.col001, n_item_id, x.col003, x.col004, x.col005, x.col006, n_order_id);',
'        end if;',
'        n_flag_wrong_item := 0;',
'',
'        select count(*)',
'        into n_count',
'        from part_requests p',
'        where not exists (select * from storage_parts where sid = p.sid)',
'        and p.order_id = n_order_id;',
'',
'        if n_count = 0 then',
'            update orders ',
'            set status = ''In progress''',
'            where id = n_order_id;',
'        end if;',
'    end loop;',
'',
'    if :P26_FLAG = 1 then',
'        apex_error.add_error',
'        (p_message               => ''Parts were imported, but item "'' ||s_error_item|| ''" was not found. Please make sure that item names are correct.'',',
'        p_display_location      => apex_error.c_inline_in_notification',
'        );',
'    end if;',
'',
'    delete from apex_application_temp_files;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73427255284316361344)
,p_process_success_message=>'Parts successfully imported'
,p_internal_uid=>73427255328777361345
);
wwv_flow_imp.component_end;
end;
/
