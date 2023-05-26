prompt --application/shared_components/user_interface/lovs/apponitment_types
begin
--   Manifest
--     APPONITMENT_TYPES
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
 p_id=>wwv_flow_imp.id(73150135779055750414)
,p_lov_name=>'APPONITMENT_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(73150135779055750414)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73150136055217750415)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Delivery'
,p_lov_return_value=>'Delivery'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73150136428859750415)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Return'
,p_lov_return_value=>'Return'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(73150136886696750415)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Consultation'
,p_lov_return_value=>'Consultation'
);
wwv_flow_imp.component_end;
end;
/
