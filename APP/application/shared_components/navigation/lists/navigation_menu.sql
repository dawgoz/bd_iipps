prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(56838170364044891946)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56838383509948892056)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1433189397186227539)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Phones'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-phone'
,p_list_item_disp_cond_type=>'NOT_EXISTS'
,p_list_item_disp_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1433718632289237751)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tablets'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tablet'
,p_list_item_disp_cond_type=>'NOT_EXISTS'
,p_list_item_disp_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1433773246031241100)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Laptops'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-laptop'
,p_list_item_disp_cond_type=>'NOT_EXISTS'
,p_list_item_disp_condition=>'select id from users where user_name = upper(:APP_USER) and upper(user_role) != ''CLIENT'''
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1531223352830282773)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'My Appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-alarm'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73171424406691726586)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_security_scheme=>wwv_flow_imp.id(61647200996464177234)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73414463390464855937)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'My Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_security_scheme=>wwv_flow_imp.id(56838375348780892046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73427847629080877480)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Assigned Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_security_scheme=>wwv_flow_imp.id(56840823242651022426)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(73453034217013296675)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Storage'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_security_scheme=>wwv_flow_imp.id(56838375470517892046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1887421318710179742)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'My Appointments'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-alarm'
,p_security_scheme=>wwv_flow_imp.id(56838375348780892046)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(56838558394115892947)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-window-lock'
,p_security_scheme=>wwv_flow_imp.id(56838375244020892046)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70403671093397021613)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Management'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_parent_list_item_id=>wwv_flow_imp.id(56838558394115892947)
,p_security_scheme=>wwv_flow_imp.id(56838375244020892046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70423593975283392069)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Item Management'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_parent_list_item_id=>wwv_flow_imp.id(56838558394115892947)
,p_security_scheme=>wwv_flow_imp.id(56838375244020892046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70541274067596826466)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Service Management'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-wrench'
,p_parent_list_item_id=>wwv_flow_imp.id(56838558394115892947)
,p_security_scheme=>wwv_flow_imp.id(56838375244020892046)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp.component_end;
end;
/
