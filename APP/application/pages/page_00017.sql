prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Appointment'
,p_alias=>'APPOINTMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var disabledDays = ["04-13-2023"];',
'apex.items.P17_DATE.dayFormatter = function (pCurrentDate) {',
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
'apex.items.P17_DATE.refresh();',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230420120826'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73628421869064856301)
,p_plug_name=>'Appointment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       DATE_AND_TIME as "date",',
'       to_char(DATE_AND_TIME, ''HH24:MI'') as "time"',
'  from APPOINTMENTS',
'  where specialist_id = (select id from users where upper(user_name) = upper(:APP_USER))'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73628428149908856307)
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
 p_id=>wwv_flow_imp.id(73628428503020856308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(73628428149908856307)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RR,:P18_ORDER_ID:&P17_ORDER_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73628429914474856309)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(73628428149908856307)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73628430336798856309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(73628428149908856307)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(73628430718969856309)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(73628428149908856307)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(56838345472654892027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73427254487955361336)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_ORDER_ID:&P17_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427253729450361329)
,p_name=>'P17_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_item_source_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_prompt=>'Date'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'date'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P17_DATE_FROM'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P17_DATE_TO'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427253806288361330)
,p_name=>'P17_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_item_source_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_prompt=>'Time'
,p_source=>'time'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with tbl as(',
'select ''8:30'' t, 1 s from dual',
'union',
'select ''9:00'' t, 2 s from dual',
'union',
'select ''9:30'' t, 3 s from dual',
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
'select t d, t r from tbl',
'order by s'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Choose -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(56838344278130892026)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427253973447361331)
,p_name=>'P17_DATE_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_item_default=>'select to_char(sysdate, ''YYYY-MM-DD'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427254043388361332)
,p_name=>'P17_DATE_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_item_default=>'select  to_char(add_months(sysdate, 1),''YYYY-MM-DD'') from dual'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73427254270348361334)
,p_name=>'P17_ORDER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(73628422125612856302)
,p_name=>'P17_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_item_source_plug_id=>wwv_flow_imp.id(73628421869064856301)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73427254170169361333)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  INSERT INTO appointments',
'            (client_id,',
'            order_id,',
'            TYPE,',
'            date_and_time,',
'            submission_date,',
'            specialist_id)',
'        SELECT   (SELECT id',
'                  FROM   users',
'                  WHERE  user_name = :APP_USER),',
'                :P17_ORDER_ID,',
'                ''Return'',',
'                to_timestamp(to_char(to_date(:P17_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'')',
'                            ||:P17_TIME, ''YYYY-MM-DD HH24:MI''), ',
'                SYSDATE,',
'                (select specialist_id',
'                FROM orders where id = :P17_ORDER_ID)',
'        from dual;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73628430718969856309)
,p_internal_uid=>73427254170169361333
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73427254376615361335)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update appointments',
'set    date_and_time =  to_timestamp(to_char(to_date(:P17_DATE, ''YYYY-MM-DD''), ''YYYY-MM-DD'')',
'                            ||:P17_TIME, ''YYYY-MM-DD HH24:MI'')',
'where id = :P17_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(73628430336798856309)
,p_internal_uid=>73427254376615361335
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73628431191268856309)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(73628421869064856301)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Appointment'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73628431191268856309
);
wwv_flow_imp.component_end;
end;
/
