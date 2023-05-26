prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'Return option'
,p_alias=>'RETURN-OPTION'
,p_page_mode=>'MODAL'
,p_step_title=>'Return option'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var disabledDays = ["04-13-2023"];',
'apex.items.P41_APPOINTMENT_DATE.dayFormatter = function (pCurrentDate) {',
'   // Parse the current day''s date using ISO8860 format mask',
'   const curDate = apex.date.parse(pCurrentDate,"YYYY-MM-DD");',
'   const dayOfWeek = curDate.getDay();',
'   const isWeekend = (dayOfWeek == 6 /*Sat*/ || dayOfWeek == 0 /*Sun*/ );',
'   return {',
'      disabled: isWeekend,',
'      class:    null,            /* no day formatting class         */',
'      tooltip:  isWeekend ? null /* no tooltip for weekend, else... */',
'                          : "Choose appointment date"',
'   };',
'};',
'',
'apex.items.P41_APPOINTMENT_DATE.refresh();',
''))
,p_step_template=>wwv_flow_imp.id(56838199866992891961)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_dialog_height=>'400'
,p_dialog_width=>'740px'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421125201'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73279073396155744606)
,p_plug_name=>'Order type'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73279073550178744606)
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
 p_id=>wwv_flow_imp.id(1857491966957701008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73279073550178744606)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_ID:&P41_ORDER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1857491125565701008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73279073550178744606)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1857508421410701019)
,p_branch_name=>'Go To Page 16'
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_ID:&P41_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1857491125565701008)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72285834440565178950)
,p_name=>'P41_RETURN_OPTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_item_default=>'Shop'
,p_prompt=>'How you would like to deliver your item to us? (You can change it while order is "In progress" stage)'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:I will bring item to physical shop;Shop,I will send item using post box;Post Box,I will send item using courier;Courier'
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(56838342992797892025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72285834636937178952)
,p_name=>'P41_RETURN_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_prompt=>'Item return address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73170482388356707437)
,p_name=>'P41_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_item_default=>'select to_char(sysdate, ''YYYY-MM-DD'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73307706200395874219)
,p_name=>'P41_APPOINTMENT_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_prompt=>'Appointment date'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>6
,p_grid_column_css_classes=>'datefield'
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P41_DATE_FROM'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P41_DATE_TO'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73307707301456874230)
,p_name=>'P41_DATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_item_default=>'select to_char(sysdate, ''YYYY-MM-DD'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73307707313408874231)
,p_name=>'P41_DATE_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_item_default=>'select  to_char(add_months(sysdate, 1),''YYYY-MM-DD'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73307707406371874232)
,p_name=>'P41_RETURN_TIME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73279073396155744606)
,p_prompt=>'Appointment time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with tbl as(',
'select ''08:30'' t, 1 s from dual',
'union',
'select ''09:00'' t, 2 s from dual',
'union',
'select ''09:30'' t, 3 s from dual',
'union',
'select ''10:00'' t, 4 s from dual',
'union',
'select ''10:30'' t, 5 s from dual',
'union',
'select ''11:00'' t, 6 s from dual',
'union',
'select ''11:30'' t, 7 s from dual',
'union',
'select ''13:00'' t, 8 s from dual',
'union',
'select ''13:30'' t, 9 s from dual',
'union',
'select ''14:00'' t, 10 s from dual',
'union',
'select ''14:30'' t, 11 s from dual',
'union',
'select ''15:00'' t, 12 s from dual',
'union',
'select ''15:30'' t, 13 s from dual',
'union',
'select ''16:00'' t, 14 s from dual',
'union',
'select ''16:30'' t, 15 s from dual',
')',
'select to_char(t) d, to_char(t) r from tbl',
'where exists (  select u.id',
'                from users u ',
'                where  upper(u.user_role) = ''SPECIALIST''',
'                and u.active = 1',
'                and not exists (select * from appointments a ',
'                                where a.specialist_id = u.id ',
'                                and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P41_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' || tbl.t))',
'and  not exists (select * from appointments a ',
'                                where a.client_id = (select id from users where upper(user_name) = upper(:APP_USER)) ',
'                                and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P41_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' || tbl.t)                         ',
'order by s',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose -'
,p_lov_cascade_parent_items=>'P41_APPOINTMENT_DATE'
,p_ajax_items_to_submit=>'P41_APPOINTMENT_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1857495422210701012)
,p_validation_name=>'Shop Delivery Date'
,p_validation_sequence=>10
,p_validation=>'P41_APPOINTMENT_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Appointment date (delivery) must have some value'
,p_validation_condition=>'P41_RETURN_OPTION'
,p_validation_condition2=>'Shop'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(1857491125565701008)
,p_associated_item=>wwv_flow_imp.id(73307706200395874219)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1857495800127701012)
,p_validation_name=>'Shop Delivery Time'
,p_validation_sequence=>30
,p_validation=>'P41_RETURN_TIME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Appointment time (delivery) must have some value'
,p_validation_condition=>'P41_RETURN_OPTION'
,p_validation_condition2=>'Shop'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(1857491125565701008)
,p_associated_item=>wwv_flow_imp.id(73307707406371874232)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1857496261723701012)
,p_validation_name=>'Courier Delivery Address'
,p_validation_sequence=>50
,p_validation=>'P41_RETURN_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item pick up address must have some value'
,p_validation_condition=>'P41_RETURN_OPTION'
,p_validation_condition2=>'Courier'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(1857491125565701008)
,p_associated_item=>wwv_flow_imp.id(72285834636937178952)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1857496652937701013)
,p_validation_name=>'Post Box Delivery Address'
,p_validation_sequence=>70
,p_validation=>'P41_RETURN_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item pick up address must have some value'
,p_validation_condition=>'P41_RETURN_OPTION'
,p_validation_condition2=>'Post Box'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(1857491125565701008)
,p_associated_item=>wwv_flow_imp.id(72285834636937178952)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857505647978701017)
,p_name=>'Shop Delivery'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Shop'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857506682696701018)
,p_event_id=>wwv_flow_imp.id(1857505647978701017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857506199420701017)
,p_event_id=>wwv_flow_imp.id(1857505647978701017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857504271760701017)
,p_name=>'Post Box Delivery'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Post Box'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857505245995701017)
,p_event_id=>wwv_flow_imp.id(1857504271760701017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857504784366701017)
,p_event_id=>wwv_flow_imp.id(1857504271760701017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857502893786701016)
,p_name=>'Courier Delivery'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Courier'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857503808198701016)
,p_event_id=>wwv_flow_imp.id(1857502893786701016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857503333334701016)
,p_event_id=>wwv_flow_imp.id(1857502893786701016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857498685157701014)
,p_name=>'Shop Return'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Shop'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857499154834701014)
,p_event_id=>wwv_flow_imp.id(1857498685157701014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE_RETURN,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857499669700701014)
,p_event_id=>wwv_flow_imp.id(1857498685157701014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857500058952701014)
,p_name=>'Post Box Return'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Post Box'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857500542820701015)
,p_event_id=>wwv_flow_imp.id(1857500058952701014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857501024153701015)
,p_event_id=>wwv_flow_imp.id(1857500058952701014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE_RETURN,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857501447079701015)
,p_name=>'Courier Return'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Courier'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857501955857701015)
,p_event_id=>wwv_flow_imp.id(1857501447079701015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857502441204701016)
,p_event_id=>wwv_flow_imp.id(1857501447079701015)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_APPOINTMENT_DATE_RETURN,P41_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1857507060505701018)
,p_name=>'Null Return'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_RETURN_OPTION'
,p_condition_element=>'P41_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1857507549618701018)
,p_event_id=>wwv_flow_imp.id(1857507060505701018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73170482415596707438)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    delete from appointments',
'    where order_id = :P41_ORDER_ID',
'    and type = ''Return'';',
'    ',
'    update orders',
'    set return_option = :P41_RETURN_OPTION,',
'    return_address = :P41_RETURN_ADDRESS',
'    where id = :P41_ORDER_ID;',
'',
'',
'    IF :P41_RETURN_OPTION = ''Shop'' THEN',
'        INSERT INTO appointments',
'            (client_id,',
'            order_id,',
'            type,',
'            date_and_time,',
'            submission_date)',
'        SELECT  client_id,',
'                :P41_ORDER_ID,',
'                ''Return'',',
'                to_timestamp(to_char(to_date(:P41_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||:P41_RETURN_TIME',
'                           , ''YYYY-MM-DD HH24:MI''), ',
'                SYSDATE',
'        FROM    orders',
'        where   id = :P41_ORDER_ID;',
'    ELSE',
'        null;      ',
'    END IF;',
' end;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Delivery option updated'
,p_internal_uid=>73170482415596707438
);
wwv_flow_imp.component_end;
end;
/
