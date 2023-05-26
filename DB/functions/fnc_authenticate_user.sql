CREATE OR REPLACE FUNCTION authenticate_user(p_username   IN VARCHAR2
                                            ,p_password   IN VARCHAR2)
    RETURN BOOLEAN
IS
    l_user_name         users.user_name%TYPE := UPPER(p_username);
    l_password          users.password%TYPE;
    l_hashed_password   VARCHAR2(1000);
    l_count             NUMBER;
    l_is_active         NUMBER;
BEGIN
    --
    --    0    Normal, successful authentication
    --    1    Unknown User Name
    --    2    Account Locked
    --    3    Account Expired
    --    4    Incorrect Password
    --    5    Password First Use
    --    6    Maximum Login Attempts Exceeded
    --    7    Unknown Internal Error
    --
    SELECT COUNT(*)
    INTO   l_count
    FROM   users
    WHERE  user_name = l_user_name;

    IF l_count > 0 THEN
        SELECT active
        INTO   l_is_active
        FROM   users
        WHERE  user_name = l_user_name;

        l_hashed_password :=
            hash_password(l_user_name
                         ,p_password);

        SELECT password
        INTO   l_password
        FROM   users
        WHERE  user_name = l_user_name;

        IF l_is_active = 1 THEN
            IF l_hashed_password = l_password THEN
                apex_util.set_authentication_result(0);
                RETURN TRUE;
            ELSE
                apex_util.set_authentication_result(4);
                RETURN FALSE;
            END IF;
        ELSE
            apex_util.set_authentication_result(1);
            apex_util.set_custom_auth_status('Account is not activated! Please check your email!');
            RETURN FALSE;
        END IF;
    ELSE
        apex_util.set_authentication_result(1);
        RETURN FALSE;
    END IF;

    --
    RETURN TRUE;
EXCEPTION
    WHEN OTHERS THEN
        apex_util.set_authentication_result(7);
        apex_util.set_custom_auth_status(SQLERRM);
        RETURN FALSE;
END authenticate_user;