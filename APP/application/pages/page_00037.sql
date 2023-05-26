prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_name=>'Appointments'
,p_alias=>'SPECIALIST-APPOINTMENTS'
,p_step_title=>'Appointments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230421121727'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(74463347331991252514)
,p_plug_name=>'Appointments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838206533071891965)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'a.id,',
'utl_i18n.unescape_reference(''<a>''|| a.type || ''<br>''|| uc.name || '' '' || uc.last_name  || ''<br>'' || (select sid from orders where id(+) = a.order_id)) as type,',
'a.date_and_time,',
'a.date_and_time + interval ''30'' minute as end_time,',
'a.description,',
'(select id from orders where id(+) = a.order_id) order_id',
'from appointments a, users uc',
'where uc.id = a.client_id',
'and a.specialist_id = (select id from users where user_name = :APP_USER)'))
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
 p_id=>wwv_flow_imp.id(1071366183147947603)
,p_name=>'P37_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(74463347331991252514)
,p_source=>'select id from users where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1071367480735947616)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(74463347331991252514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1071367562815947617)
,p_event_id=>wwv_flow_imp.id(1071367480735947616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(74463347331991252514)
);
wwv_flow_imp.component_end;
end;
/
