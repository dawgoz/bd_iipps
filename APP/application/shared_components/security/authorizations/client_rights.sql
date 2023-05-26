prompt --application/shared_components/security/authorizations/client_rights
begin
--   Manifest
--     SECURITY SCHEME: Client Rights
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(56838375348780892046)
,p_name=>'Client Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Client'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Client'
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
