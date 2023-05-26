prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>'Payment'
,p_alias=>'PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Payment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230509095208'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1630970969648047729)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1630972511839047745)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838209349165891966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630972620979047746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1630972511839047745)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_ID:&P45_ORDER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1630971574558047735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1630972511839047745)
,p_button_name=>'CONFIRM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm payment'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971089571047730)
,p_name=>'P45_CARD_NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_prompt=>'Card number'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>16
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'numeric'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971138536047731)
,p_name=>'P45_ORDER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971294517047732)
,p_name=>'P45_SECURITY_CODE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_prompt=>'Security code'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971365440047733)
,p_name=>'P45_EXPIRATION_YEAR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_prompt=>'Expiration year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with tbl as (select rownum as num',
'from dual',
'connect by Rownum <= 10 )',
'SELECT to_char(add_months( sysdate, 12 * t.num), ''YYYY'') as d, to_char(add_months( sysdate, 12 * t.num), ''YYYY'') as r FROM DUAL, tbl t;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose - '
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971460061047734)
,p_name=>'P45_EXPIRATION_MONTH'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_prompt=>'Expiration month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9,10;10,11;11,12;12'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630971736090047737)
,p_name=>'P45_NEW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_item_default=>'1'
,p_item_default_type=>'ITEM'
,p_prompt=>'Use same billing address as registration address'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1630972255262047742)
,p_name=>'P45_BILLING_ADDRESS'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1630970969648047729)
,p_prompt=>'Billing address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1630971829161047738)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_NEW'
,p_condition_element=>'P45_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1630971953238047739)
,p_event_id=>wwv_flow_imp.id(1630971829161047738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_BILLING_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1630972020038047740)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_NEW'
,p_condition_element=>'P45_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1630972165313047741)
,p_event_id=>wwv_flow_imp.id(1630972020038047740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_BILLING_ADDRESS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630971649997047736)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pay'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
's_email varchar2(100);',
'begin',
'if :P45_NEW = 1 then',
'insert into payments (order_id, card_number, security_code, expiration_year, expiration_month, billing_address, date_and_time)',
'select :P45_ORDER_ID, :P45_CARD_NUMBER,:P45_SECURITY_CODE, :P45_EXPIRATION_YEAR, :P45_EXPIRATION_MONTH, (select address from users where id = (select client_id from orders where id = :P45_ORDER_ID) ), systimestamp from dual;',
'else',
'insert into payments (order_id, card_number, security_code, expiration_year, expiration_month, billing_address, date_and_time)',
'select :P45_ORDER_ID, :P45_CARD_NUMBER, :P45_SECURITY_CODE, :P45_EXPIRATION_YEAR, :P45_EXPIRATION_MONTH, :P45_BILLING_ADDRESS, systimestamp from dual;',
'end if;',
'',
'select email ',
'into s_email',
'from users',
'where id = (select client_id from orders where id = :P45_ORDER_ID);',
'',
'update orders ',
'set status = ''Payment completed''',
'where id = :P45_ORDER_ID;',
'',
'send_order_payment_email(s_email, :P45_ORDER_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630971574558047735)
,p_process_success_message=>'Payment successfully completed!'
,p_internal_uid=>1630971649997047736
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1630972451203047744)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1630971574558047735)
,p_process_success_message=>'Payment successfully completed!'
,p_internal_uid=>1630972451203047744
);
wwv_flow_imp.component_end;
end;
/
