prompt --application/shared_components/user_interface/lovs/users_user_role
begin
--   Manifest
--     USERS.USER_ROLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>56834162540286699751
,p_default_application_id=>92329
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BDOS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(73161972559544031296)
,p_lov_name=>'USERS.USER_ROLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USERS'
,p_return_column_name=>'ID'
,p_display_column_name=>'USER_ROLE'
,p_default_sort_column_name=>'USER_ROLE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
