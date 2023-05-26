prompt --application/shared_components/user_interface/lovs/item_categories
begin
--   Manifest
--     ITEM_CATEGORIES
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
 p_id=>wwv_flow_imp.id(70511689902711260990)
,p_lov_name=>'ITEM_CATEGORIES'
,p_lov_query=>'.'||wwv_flow_imp.id(70511689902711260990)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70511690264061260991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Phones'
,p_lov_return_value=>'Phones'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70511690686119260992)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Tablets'
,p_lov_return_value=>'Tablets'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70511691033662260992)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Laptops'
,p_lov_return_value=>'Laptops'
);
wwv_flow_imp.component_end;
end;
/
