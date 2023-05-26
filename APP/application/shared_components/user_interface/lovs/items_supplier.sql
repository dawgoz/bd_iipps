prompt --application/shared_components/user_interface/lovs/items_supplier
begin
--   Manifest
--     ITEMS.SUPPLIER
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
 p_id=>wwv_flow_imp.id(73161972391346031295)
,p_lov_name=>'ITEMS.SUPPLIER'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ITEMS'
,p_return_column_name=>'ID'
,p_display_column_name=>'SUPPLIER'
,p_default_sort_column_name=>'SUPPLIER'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
