prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'Client Appointments'
,p_alias=>'CLIENT-APPOINTMENTS'
,p_step_title=>'Client Appointments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421115455'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76346014109831818163)
,p_plug_name=>'Appointments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'a.id,',
'utl_i18n.unescape_reference(''<a>''|| a.type || ''<br>''||',
'case nvl(a.specialist_id,-1) ',
'when -1 then ''Unassigned''',
'else us.name || '' '' || us.last_name ',
'end ||''<br>'' || (select sid from orders where id(+) = a.order_id) ||''</a>'') as type,',
'a.date_and_time,',
'a.date_and_time + interval ''30'' minute as end_time,',
'a.description',
'from appointments a, users us',
'where us.id(+) = a.specialist_id',
'and a.client_id = (select id from users where user_name = :APP_USER)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'DATE_AND_TIME'
,p_attribute_02=>'END_TIME'
,p_attribute_03=>'TYPE'
,p_attribute_04=>'ID'
,p_attribute_07=>'N'
,p_attribute_10=>'CSV:ICAL:XML'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_17=>'Y'
,p_attribute_18=>'24'
,p_attribute_19=>'Y'
,p_attribute_20=>'8'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2954033919125513256)
,p_name=>'P44_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76346014109831818163)
,p_source=>'select id from users where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1882668231195565654)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(76346014109831818163)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1882668740120565654)
,p_event_id=>wwv_flow_imp.id(1882668231195565654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(76346014109831818163)
);
wwv_flow_imp.component_end;
end;
/
