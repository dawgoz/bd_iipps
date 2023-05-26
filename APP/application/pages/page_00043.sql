prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'Appointment Overview'
,p_alias=>'APPOINTMENT-OVERVIEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Overview'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(56838199866992891961)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_dialog_height=>'400'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421102427'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73289154585305427841)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(1867246886226891052)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(56838341241908892024)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73289154708056427841)
,p_plug_name=>'Appointment Overview'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73289154795967427841)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1867562560270384238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73289154795967427841)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1867563309774384238)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(73289154795967427841)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1867562996176384238)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73289154795967427841)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838344739143892027)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1867569874048384244)
,p_branch_name=>'Go To Page 27'
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1867569420895384244)
,p_branch_name=>'Go To Page 42'
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1867562996176384238)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1428262997494674624)
,p_name=>'P43_SPECIALIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73289154708056427841)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Specialist:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.name || '' '' || u.last_name',
'from users u where  upper(u.user_role) = ''SPECIALIST''',
'and not exists (select * from appointments a where a.specialist_id = u.id and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' || :P42_APPOINTMENT_TIME)',
'order by (select count(*) from appointments where specialist_id  = u.id)',
'fetch first row only'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74989706832527426447)
,p_name=>'P43_DATE_ANT_TIME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73289154708056427841)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date and Time:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') || '' '' || :P42_APPOINTMENT_TIME ',
'from dual;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74989707498929426454)
,p_name=>'P43_CONFIRM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73289154708056427841)
,p_item_default=>'0'
,p_prompt=>'Confirm appointment'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(56838343094543892026)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(74989707728799426456)
,p_name=>'P43_SERVICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73289154708056427841)
,p_prompt=>'Type:'
,p_source=>'Consultation'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(56838342738815892025)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock:margin-top-none:margin-bottom-none:margin-left-md:t-Form-fieldContainer--boldDisplay'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1867566836177384242)
,p_validation_name=>'Confirm Order'
,p_validation_sequence=>10
,p_validation=>'P43_CONFIRM'
,p_validation2=>'0'
,p_validation_type=>'ITEM_IN_VALIDATION_NOT_EQ_STRING2'
,p_error_message=>'Please confirm appointment'
,p_associated_item=>wwv_flow_imp.id(74989707498929426454)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867568477104384243)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1867562560270384238)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867568992390384243)
,p_event_id=>wwv_flow_imp.id(1867568477104384243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867567508692384242)
,p_name=>'Set value'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867568082690384243)
,p_event_id=>wwv_flow_imp.id(1867567508692384242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Set value'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P43_CONFIRM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1867567108225384242)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Appointment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    n_user_id NUMBER;',
'    s_sid VARCHAR2(254);',
'    n_order_id NUMBER;',
'    n_spec_id number;',
'BEGIN',
'    SELECT id',
'    INTO   n_user_id',
'    FROM   users',
'    WHERE  user_name = :APP_USER;',
'    select u.id',
'    into n_spec_id',
'    from users u where  upper(u.user_role) = ''SPECIALIST''',
'    and not exists (select * from appointments a where a.specialist_id = u.id and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' ||:P42_APPOINTMENT_TIME)',
'    order by (select count(*) from appointments where specialist_id  = u.id)',
'    fetch first row only;',
'    ',
'        INSERT INTO appointments',
'            (client_id,',
'            specialist_id,',
'            type,',
'            date_and_time,',
'            submission_date)',
'        SELECT  n_user_id,',
'                n_spec_id,',
'                ''Consultation'',',
'                to_timestamp(to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||:P42_APPOINTMENT_TIME',
'                           , ''YYYY-MM-DD HH24:MI''), ',
'                SYSDATE',
'        FROM    dual;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1867563309774384238)
,p_process_success_message=>'Appointment successfully placed'
,p_internal_uid=>1867567108225384242
);
wwv_flow_imp.component_end;
end;
/
