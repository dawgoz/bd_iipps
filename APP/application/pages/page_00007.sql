prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'User'
,p_alias=>'USER'
,p_page_mode=>'MODAL'
,p_step_title=>'User'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838170694133891946)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(56838375244020892046)
,p_dialog_width=>'500px'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230424122323'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70408759329365149518)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70408766072122149523)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70408766414031149523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(70408766072122149523)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70408767808920149524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(70408766072122149523)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Are you sure you want to delete this user?'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70408768249339149525)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70408766072122149523)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70408768689571149525)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(70408766072122149523)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408759740403149518)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408760192677149519)
,p_name=>'P7_USER_ROLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'User Role'
,p_source=>'USER_ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(ROLE_NAME) d, UPPER(ROLE_NAME) r',
'from APEX_APPL_ACL_ROLES ',
'where application_id = 92329 '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408760510486149519)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408760923802149519)
,p_name=>'P7_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408761329386149520)
,p_name=>'P7_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
,p_attribute_06=>'UPPER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408762132044149520)
,p_name=>'P7_ACTIVE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70408762930710149521)
,p_name=>'P7_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_item_source_plug_id=>wwv_flow_imp.id(70408759329365149518)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70408766598242149523)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70408766414031149523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70408767322252149524)
,p_event_id=>wwv_flow_imp.id(70408766598242149523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70408769488758149525)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_role_id number;',
'begin',
'    insert into users(user_role, name, last_name, user_name, password, active, email) ',
'    values (:P7_USER_ROLE, :P7_NAME, :P7_LAST_NAME, :P7_USER_NAME, ''1'', :P7_ACTIVE, :P7_EMAIL);',
'',
'    select role_id',
'    into n_role_id',
'    from APEX_APPL_ACL_ROLES ',
'    where application_id = 92329 ',
'    and upper(role_name) = upper(:P7_USER_ROLE);',
'',
'    APEX_ACL.ADD_USER_ROLE (',
'            p_application_id => 92329,',
'            p_user_name      => :P7_USER_NAME,',
'            p_role_id        => n_role_id);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70408768689571149525)
,p_process_success_message=>'User successfully created'
,p_internal_uid=>70408769488758149525
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70428338837134477912)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_role_id number;',
'begin',
'    update users',
'    set user_role = :P7_USER_ROLE, ',
'    name = :P7_NAME, ',
'    last_name = :P7_LAST_NAME, ',
'    user_name = :P7_USER_NAME,',
'    active = :P7_ACTIVE, ',
'    email = :P7_EMAIL ',
'    where id = :P7_ID;',
'',
'    select role_id',
'    into n_role_id',
'    from APEX_APPL_ACL_ROLES ',
'    where application_id = 92329 ',
'    and upper(role_name) = upper(:P7_USER_ROLE);',
'',
'    APEX_ACL.REPLACE_USER_ROLES (',
'        p_application_id => 92329,',
'        p_user_name      => :P7_USER_NAME,',
'        p_role_ids       => wwv_flow_t_number(n_role_id));    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70408768249339149525)
,p_process_success_message=>'User successfully updated'
,p_internal_uid=>70428338837134477912
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70428338913071477913)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_role_id number;',
'    n_count number;',
'begin',
'',
'    select count(*) ',
'    into n_count',
'    from orders',
'    where (specialist_id = :P7_ID',
'    or client_id = :P7_ID)',
'    and status != ''Completed'';',
'',
'    if n_count > 0  then',
'        apex_error.add_error',
'        (p_message               => ''User is associated with active order'',',
'        p_display_location      => apex_error.c_inline_in_notification',
'        );',
'    else',
'        select role_id',
'        into n_role_id',
'        from APEX_APPL_ACL_ROLES ',
'        where application_id = 92329 ',
'        and upper(role_name) = upper(:P7_USER_ROLE);',
'',
'        delete from appointments ',
'        where (client_id = :P7_ID',
'        or specialist_id = :P7_ID);',
'        ',
'        delete from users',
'        where id = :P7_ID;',
'',
'        APEX_ACL.REMOVE_USER_ROLE (',
'            p_application_id => 92329,',
'            p_user_name      => :P7_USER_NAME,',
'            p_role_id       => n_role_id);    ',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70408767808920149524)
,p_process_success_message=>'User successfully deleted'
,p_internal_uid=>70428338913071477913
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70408769886964149525)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>70408769886964149525
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70408769066497149525)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(70408759329365149518)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>70408769066497149525
);
wwv_flow_imp.component_end;
end;
/
