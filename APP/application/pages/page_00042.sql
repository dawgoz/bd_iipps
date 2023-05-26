prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Date and Time'
,p_alias=>'DATE-AND-TIME'
,p_page_mode=>'MODAL'
,p_step_title=>'Date and Time'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var disabledDays = ["04-13-2023"];',
'apex.items.P42_APPOINTMENT_DATE.dayFormatter = function (pCurrentDate) {',
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
'apex.items.P42_APPOINTMENT_DATE.refresh();',
''))
,p_step_template=>wwv_flow_imp.id(56838199866992891961)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421111323'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73289087524081424489)
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
 p_id=>wwv_flow_imp.id(73289087562042424489)
,p_plug_name=>'Date and Time'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73289087716065424489)
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
 p_id=>wwv_flow_imp.id(1867506230273380891)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73289087716065424489)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1867505440542380891)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73289087716065424489)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(56838345573505892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1867522870306380903)
,p_branch_name=>'Go To Page 16'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1867505440542380891)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1428262816848674623)
,p_name=>'P42_APPOINTMENT_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(73289087562042424489)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73317720522972554102)
,p_name=>'P42_APPOINTMENT_DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(73289087562042424489)
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
,p_attribute_05=>'P42_DATE_FROM'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P42_DATE_TO'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73317721624033554113)
,p_name=>'P42_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73289087562042424489)
,p_item_default=>'select to_char(sysdate, ''YYYY-MM-DD'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73317721635985554114)
,p_name=>'P42_DATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73289087562042424489)
,p_item_default=>'select  to_char(add_months(sysdate, 1),''YYYY-MM-DD'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73317721728948554115)
,p_name=>'P42_APPOINTMENT_TIME'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(73289087562042424489)
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
'                                and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' || tbl.t))',
'and  not exists (select * from appointments a ',
'                                where a.client_id = (select id from users where upper(user_name) = upper(:APP_USER)) ',
'                                and to_char(a.date_and_time, ''YYYY-MM-DD HH24:MI'') = to_char(to_date(:P42_APPOINTMENT_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'') ||'' '' || tbl.t)                         ',
'order by s',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose -'
,p_lov_cascade_parent_items=>'P42_APPOINTMENT_DATE'
,p_ajax_items_to_submit=>'P42_APPOINTMENT_DATE'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867512139306380896)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1867506230273380891)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867512603366380897)
,p_event_id=>wwv_flow_imp.id(1867512139306380896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867520059735380901)
,p_name=>'Shop Delivery'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_DELIVERY_OPTION'
,p_condition_element=>'P42_DELIVERY_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Shop'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867521010363380902)
,p_event_id=>wwv_flow_imp.id(1867520059735380901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_DELIVERY,P42_DELIVERY_TIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867520582053380901)
,p_event_id=>wwv_flow_imp.id(1867520059735380901)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_DELIVERY_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867518650183380900)
,p_name=>'Post Box Delivery'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_DELIVERY_OPTION'
,p_condition_element=>'P42_DELIVERY_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Post Box'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867519605786380901)
,p_event_id=>wwv_flow_imp.id(1867518650183380900)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_DELIVERY_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867519112854380900)
,p_event_id=>wwv_flow_imp.id(1867518650183380900)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_DELIVERY,P42_DELIVERY_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867517229302380899)
,p_name=>'Courier Delivery'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_DELIVERY_OPTION'
,p_condition_element=>'P42_DELIVERY_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Courier'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867518249836380900)
,p_event_id=>wwv_flow_imp.id(1867517229302380899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_DELIVERY_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867517746145380900)
,p_event_id=>wwv_flow_imp.id(1867517229302380899)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_DELIVERY,P42_DELIVERY_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867513072187380897)
,p_name=>'Shop Return'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_RETURN_OPTION'
,p_condition_element=>'P42_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Shop'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867513506181380897)
,p_event_id=>wwv_flow_imp.id(1867513072187380897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_RETURN,P42_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867514054685380898)
,p_event_id=>wwv_flow_imp.id(1867513072187380897)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867514439025380898)
,p_name=>'Post Box Return'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_RETURN_OPTION'
,p_condition_element=>'P42_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Post Box'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867514916958380898)
,p_event_id=>wwv_flow_imp.id(1867514439025380898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867515414910380898)
,p_event_id=>wwv_flow_imp.id(1867514439025380898)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_RETURN,P42_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867515858429380899)
,p_name=>'Courier Return'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_RETURN_OPTION'
,p_condition_element=>'P42_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Courier'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867516392266380899)
,p_event_id=>wwv_flow_imp.id(1867515858429380899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_RETURN_ADDRESS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867516881386380899)
,p_event_id=>wwv_flow_imp.id(1867515858429380899)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_APPOINTMENT_DATE_RETURN,P42_RETURN_TIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1867521472974380902)
,p_name=>'Null Return'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_RETURN_OPTION'
,p_condition_element=>'P42_RETURN_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Null'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1867521927314380902)
,p_event_id=>wwv_flow_imp.id(1867521472974380902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_RETURN_ADDRESS'
);
wwv_flow_imp.component_end;
end;
/
