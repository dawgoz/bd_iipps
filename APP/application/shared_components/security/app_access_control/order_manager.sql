prompt --application/shared_components/security/app_access_control/order_manager
begin
--   Manifest
--     ACL ROLE: Order Manager
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(61647132049894174658)
,p_static_id=>'ORDER_MANAGER'
,p_name=>'Order Manager'
);
wwv_flow_imp.component_end;
end;
/
