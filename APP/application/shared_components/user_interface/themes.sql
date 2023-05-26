prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 92329
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(56838348475322892030)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(56838196432745891960)
,p_default_dialog_template=>wwv_flow_imp.id(56838191248570891957)
,p_error_template=>wwv_flow_imp.id(56838181295578891953)
,p_printer_friendly_template=>wwv_flow_imp.id(56838196432745891960)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(56838181295578891953)
,p_default_button_template=>wwv_flow_imp.id(56838345472654892027)
,p_default_region_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_chart_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_form_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_reportr_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_tabform_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_wizard_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_menur_template=>wwv_flow_imp.id(56838284957836891998)
,p_default_listr_template=>wwv_flow_imp.id(56838272500189891993)
,p_default_irr_template=>wwv_flow_imp.id(56838262780684891988)
,p_default_report_template=>wwv_flow_imp.id(56838310444671892010)
,p_default_label_template=>wwv_flow_imp.id(56838342992797892025)
,p_default_menu_template=>wwv_flow_imp.id(56838347038437892028)
,p_default_calendar_template=>wwv_flow_imp.id(56838347191329892028)
,p_default_list_template=>wwv_flow_imp.id(56838326836253892018)
,p_default_nav_list_template=>wwv_flow_imp.id(56838338647939892023)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(56838338647939892023)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(56838333283107892021)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(56838209349165891966)
,p_default_dialogr_template=>wwv_flow_imp.id(56838206533071891965)
,p_default_option_label=>wwv_flow_imp.id(56838342992797892025)
,p_default_required_label=>wwv_flow_imp.id(56838344278130892026)
,p_default_navbar_list_template=>wwv_flow_imp.id(56838332867355892020)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
