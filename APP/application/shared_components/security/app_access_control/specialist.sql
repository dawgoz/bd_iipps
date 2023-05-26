prompt --application/shared_components/security/app_access_control/specialist
begin
--   Manifest
--     ACL ROLE: Specialist
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
 p_id=>wwv_flow_imp.id(56840350200114996871)
,p_static_id=>'SPECIALIST'
,p_name=>'Specialist'
);
wwv_flow_imp.component_end;
end;
/
