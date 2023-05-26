prompt --application/shared_components/security/app_access_control/storekeeper
begin
--   Manifest
--     ACL ROLE: Storekeeper
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
 p_id=>wwv_flow_imp.id(56838375019880892046)
,p_static_id=>'STOREKEEPER'
,p_name=>'Storekeeper'
,p_description=>'Role assigned to application contributors.'
);
wwv_flow_imp.component_end;
end;
/
