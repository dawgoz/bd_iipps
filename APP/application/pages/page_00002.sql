prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Create Account'
,p_alias=>'CREATE-ACCOUNT'
,p_step_title=>'Create Account'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.logIn{',
'    font-weight: bold;',
'}'))
,p_step_template=>wwv_flow_imp.id(56838181295578891953)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230427120120'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(126229855802644521441)
,p_plug_name=>'SMART DEVICE MAINTENANCE SOFTWARE SYSTEM'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838267352961891990)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69391478966239629394)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_button_name=>'REGISTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Account'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69391479326115629395)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_button_name=>'LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'logIn'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(23510291260760114550)
,p_branch_name=>'Go to SIgn In'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.::P9999_USERNAME:&P2_USERNAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23510290401573114542)
,p_name=>'P2_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Name'
,p_placeholder=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23510290564228114543)
,p_name=>'P2_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Last Name'
,p_placeholder=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23510290655026114544)
,p_name=>'P2_CONFIRM_PASSWORD'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Confirm Password'
,p_placeholder=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23510290709750114545)
,p_name=>'P2_ADDRESS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Address'
,p_placeholder=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69391479777969629395)
,p_name=>'P2_USERNAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Username'
,p_placeholder=>'USERNAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69391480161415629435)
,p_name=>'P2_PASSWORD'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70385449560832536308)
,p_name=>'P2_EMAIL'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(126229855802644521441)
,p_prompt=>'E-Mail'
,p_placeholder=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(56838342631425892025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69391480863688629436)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_user_exists number;',
'    n_email_exists number;',
'    n_role_id number;',
'    l_body_html CLOB;',
'    v_name nvarchar2 (50);',
'    v_code  nvarchar2 (50);',
'    v_email nvarchar2(50);',
'begin',
'    select count(*) ',
'    into n_user_exists ',
'    from users ',
'    where user_name = :P2_USERNAME; ',
'',
'    select count(*) ',
'    into n_email_exists ',
'    from users ',
'    where email = :P2_EMAIL; ',
'',
'    select ROLE_ID',
'    into n_role_id',
'    from APEX_APPL_ACL_ROLES ',
'    where application_id = 92329 ',
'    and ROLE_STATIC_ID = ''CLIENT'';',
'    ',
'    if n_email_exists > 0 then',
'        apex_error.add_error(p_message            => ''E-Mail is already associated with another account!''',
'                            ,p_display_location   => apex_error.c_inline_in_notification); ',
'        :P2_PASSWORD := null; ',
'        :P2_CONFIRM_PASSWORD := null;  ',
'    elsif n_user_exists > 0 then',
'        apex_error.add_error(p_message            => ''Username is already taken!''',
'                            ,p_display_location   => apex_error.c_inline_in_notification); ',
'        :P2_PASSWORD := null; ',
'        :P2_CONFIRM_PASSWORD := null;  ',
'    elsif :P2_PASSWORD != :P2_CONFIRM_PASSWORD then    ',
'        apex_error.add_error(p_message            => ''Passwords do not match!''',
'                            ,p_display_location   => apex_error.c_inline_in_notification); ',
'        :P2_PASSWORD := null; ',
'        :P2_CONFIRM_PASSWORD := null;                                     ',
'    else                        ',
'        insert into users(user_role, name, last_name, user_name, password, address, email, active)',
'        values (''CLIENT'', :P2_NAME, :P2_LAST_NAME, :P2_USERNAME, :P2_PASSWORD, :P2_ADDRESS, :P2_EMAIL, 0);',
'',
'        APEX_ACL.ADD_USER_ROLE (',
'        p_application_id => 92329,',
'        p_user_name      => :P2_USERNAME,',
'        p_role_id        => n_role_id );',
'',
'        send_verify_email(:P2_EMAIL);',
'    end if;    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69391478966239629394)
,p_process_success_message=>'Account created! Please check your email for confirmation!'
,p_internal_uid=>69391480863688629436
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69391484293211629478)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P2_USERNAME := apex_authentication.get_login_username_cookie;',
':P2_REMEMBER := case when :P2_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>69391484293211629478
);
wwv_flow_imp.component_end;
end;
/
