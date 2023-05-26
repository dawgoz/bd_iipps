prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Services'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.cursorPointer{',
'    cursor: pointer;',
'}',
'',
'.a-ListView-item .ui-li-aside{',
'    color: black;',
'    margin-top: 15px;',
'    margin-bottom: 10px;',
'    font-size: 15px;',
'    font-weight: bold;',
'}',
'',
'.a-ListView-item{',
'    font-size: 13px !important;',
'}',
'.a-ListView-item > a{',
'    padding-right: 25px !important;',
'}',
'.a-ListView-item .ui-li-count{',
'    font-size: 13px;',
'    background-color: inherit;',
'}',
'',
'.a-ListView-divider{',
'    font-size: 15px;',
'}',
'',
'',
'.a-ListView{',
'    border: 1px solid rgba(0,0,0,.1) !important;',
'}',
'',
'.fa-angle-right{',
'    font-size: 15px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'OSKARAS.STARINSKAS@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230517143602'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1428263438089674629)
,p_plug_name=>'My Appointments'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-table-user'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1630970202323047722)
,p_plug_name=>'Order Reviews'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(56838272500189891993)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Rating: '' || o.rating as rating, o.review, ''User: '' || u.user_name, s.name || '' ('' || i.supplier || '' ''|| i.model || '') ''as name from orders o, services s, items i, users u',
'where s.id = o.service_id',
'and i.id = s.item_id',
'and u.id = o.client_id',
'and o.rating is not null',
'and o.review is not null'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_plug_query_no_data_found=>'No reviews'
,p_plug_display_condition_type=>'USER_IS_PUBLIC_USER'
,p_attribute_01=>'DIVIDER'
,p_attribute_02=>'REVIEW'
,p_attribute_06=>'RATING'
,p_attribute_08=>'''USER:''||U.USER_NAME'
,p_attribute_14=>'NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24089960026223304731)
,p_plug_name=>'My Orders'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-table-user'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375348780892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24089960890720304739)
,p_plug_name=>'User Management'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-user-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375244020892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24089961316927304744)
,p_plug_name=>'Item Management'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-table-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375244020892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24089961772823304748)
,p_plug_name=>'Service Management'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-server-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375244020892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(56838384486817892057)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70385448855230536301)
,p_plug_name=>'Phones'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-phone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70385449036009536303)
,p_plug_name=>'Tablets'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-tablet'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70385449187994536304)
,p_plug_name=>'Laptops'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-laptop'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70385449276724536305)
,p_plug_name=>'Appointment'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-forms'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select * from users where user_name = upper(:APP_USER) and upper(user_role) = ''CLIENT'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73369031009616634724)
,p_plug_name=>'Assigned Orders'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-table-clock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>100
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56840823242651022426)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73369033523683634749)
,p_plug_name=>'My Appointments'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-calendar-clock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56840823242651022426)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427251037228361302)
,p_plug_name=>'Administration'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-window-lock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375244020892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73427252571338361317)
,p_plug_name=>'Part Storage'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-server-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>80
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(56838375470517892046)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(73974811307182951201)
,p_plug_name=>'Orders'
,p_region_css_classes=>'cursorPointer'
,p_icon_css_classes=>'fa-table-clock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(56838239512870891979)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>3
,p_plug_grid_column_css_classes=>'cursorPointer'
,p_plug_required_role=>wwv_flow_imp.id(61647200996464177234)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(73170483078842707444)
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42::'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'APPOINTMENTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70428339436052477918)
,p_name=>'Redirect 24'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70385448855230536301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70428339501487477919)
,p_event_id=>wwv_flow_imp.id(70428339436052477918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 24'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:24:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369029844353634712)
,p_name=>'Redirect 19'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70385449036009536303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369030267237634716)
,p_event_id=>wwv_flow_imp.id(73369029844353634712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 19'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:19:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369030006067634714)
,p_name=>'Redirect 30'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70385449187994536304)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369030305393634717)
,p_event_id=>wwv_flow_imp.id(73369030006067634714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 30'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:30:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24089960137495304732)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24089960026223304731)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24089960391377304734)
,p_event_id=>wwv_flow_imp.id(24089960137495304732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 27'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:27:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24089961059512304741)
,p_name=>'Redirect 5'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24089960890720304739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24089961261060304743)
,p_event_id=>wwv_flow_imp.id(24089961059512304741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 5'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:5:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24089961414009304745)
,p_name=>'Redirect 9'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24089961316927304744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24089961643502304747)
,p_event_id=>wwv_flow_imp.id(24089961414009304745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 9'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:9:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24089961951124304750)
,p_name=>'Redirect 20'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24089961772823304748)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24089961807137304749)
,p_event_id=>wwv_flow_imp.id(24089961951124304750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 20'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:20:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73427251163887361303)
,p_name=>'Redirect 10000'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73427251037228361302)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73427251394650361305)
,p_event_id=>wwv_flow_imp.id(73427251163887361303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 10000'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10000:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369031178126634725)
,p_name=>'Redirect 33'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73369031009616634724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73369031339108634727)
,p_event_id=>wwv_flow_imp.id(73369031178126634725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 33'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:33:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73427252609452361318)
,p_name=>'Redirect 39'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73427252571338361317)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73427252808098361320)
,p_event_id=>wwv_flow_imp.id(73427252609452361318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 39'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:39:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73974811430472951202)
,p_name=>'Redirect 3'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73974811307182951201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(73974811634346951204)
,p_event_id=>wwv_flow_imp.id(73974811430472951202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 3'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:3:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(73369033604790634750)
,p_name=>'Redirect 37'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(73369033523683634749)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1071366091913947602)
,p_event_id=>wwv_flow_imp.id(73369033604790634750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 37'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:37:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1428263265126674627)
,p_name=>'Redirect to 42'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(70385449276724536305)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1428263163143674626)
,p_event_id=>wwv_flow_imp.id(1428263265126674627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 42'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'APPOINTMENTS'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1428263524852674630)
,p_name=>'Redirect to 44'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1428263438089674629)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1428263780113674632)
,p_event_id=>wwv_flow_imp.id(1428263524852674630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Redirect to 27'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:44:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(73170483447455707448)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'New'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'oskaras.starinskas@gmail.com'
,p_attribute_06=>'test'
,p_attribute_07=>'test'
,p_attribute_10=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>73170483447455707448
);
wwv_flow_imp.component_end;
end;
/
