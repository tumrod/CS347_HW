set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.0.00.20'
,p_default_workspace_id=>870603513516334133
,p_default_application_id=>11774
,p_default_owner=>'HOMEWORK'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 11774 - 2015 SIM
--
-- Application Export:
--   Application:     11774
--   Name:            2015 SIM
--   Date and Time:   19:34 Tuesday March 3, 2015
--   Exported By:     ATOOPS@YAHOO.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.20
--   Instance ID:     108896930943639
--

-- Application Statistics:
--   Pages:                     13
--     Items:                   47
--     Processes:               24
--     Regions:                 25
--     Buttons:                 31
--     Dynamic Actions:         19
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              7
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   4
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,11774)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'PHILWS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'2015 SIM')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_11908')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A0F507DA702F9AF4E2216D7E6B451ED07C10EBC3613AE910D2A60E2335746671'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(1481518927737451978)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:2015 SIM'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303192819'
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1481426746029450149)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1481519129710451978)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1481877656488519555)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'People'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,5,7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1482009463816517087)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Project Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1481877656488519555)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1482161860176534555)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Managers'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1481877656488519555)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1482271936286555747)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Departments'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1482372316532587290)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(1482271936286555747)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1482472846176604280)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Project Assignments'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1481518572685451977)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1481518824333451977)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1481426399449450149)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1481426480163450149)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1481426569583450149)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1482730551268643952)
,p_lov_name=>'DEPARTMENTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       dept_id as r',
'  from sim_dept',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1482701816516624351)
,p_lov_name=>'MANAGERS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       person_id as r',
'  from sim_manager',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1482444362455613144)
,p_lov_name=>'PROJECT EMPLOYEES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       person_id as r',
'  from sim_project_person',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1482762010372647581)
,p_lov_name=>'PROJECTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       project_id as r',
'  from sim_project',
' order by 1'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(1481519005332451978)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1481519368636451979)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1481878563079519557)
,p_short_name=>'People'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1482010491974517089)
,p_short_name=>'Project Employees'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1482162934020534556)
,p_parent_id=>wwv_flow_api.id(1481878563079519557)
,p_short_name=>'Managers'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1482272778962555748)
,p_short_name=>'Departments'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1482373452211587292)
,p_parent_id=>wwv_flow_api.id(1482272778962555748)
,p_short_name=>'Projects'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1482473725991604281)
,p_short_name=>'Project Assignments'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481426862928450150)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481426899750450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481426969568450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427092462450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427258159450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427318820450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427396343450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427491050450151)
,p_page_template_id=>wwv_flow_api.id(1481426862928450150)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481427662783450193)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427673802450193)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427849180450193)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481427896044450193)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428011355450193)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428073052450193)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428265595450194)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428293287450194)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428414372450194)
,p_page_template_id=>wwv_flow_api.id(1481427662783450193)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481428506731450228)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428598852450229)
,p_page_template_id=>wwv_flow_api.id(1481428506731450228)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428708397450229)
,p_page_template_id=>wwv_flow_api.id(1481428506731450228)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481428789114450265)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-regionModals">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428891403450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481428976170450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429148898450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429191052450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429335248450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429386270450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429513733450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429609843450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429744429450265)
,p_page_template_id=>wwv_flow_api.id(1481428789114450265)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481429774428450298)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429933609450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481429994375450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430109511450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430235958450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430358489450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430457150450298)
,p_page_template_id=>wwv_flow_api.id(1481429774428450298)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481430549815450334)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'600'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430611487450334)
,p_page_template_id=>wwv_flow_api.id(1481430549815450334)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430729138450334)
,p_page_template_id=>wwv_flow_api.id(1481430549815450334)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481430854159450334)
,p_page_template_id=>wwv_flow_api.id(1481430549815450334)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481430900751450366)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431058555450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431091672450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431179040450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431315375450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431392794450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431477230450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431606806450367)
,p_page_template_id=>wwv_flow_api.id(1481430900751450366)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481431719984450403)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431812070450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481431870088450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432015972450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432158665450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432230298450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432285575450403)
,p_page_template_id=>wwv_flow_api.id(1481431719984450403)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1481432532010450438)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'680'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432626720450439)
,p_page_template_id=>wwv_flow_api.id(1481432532010450438)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432730368450439)
,p_page_template_id=>wwv_flow_api.id(1481432532010450438)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481432800293450439)
,p_page_template_id=>wwv_flow_api.id(1481432532010450438)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1481513371796451827)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon t-Button--iconOnly #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon t-Button--iconOnly #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><'
||'/button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1481513561464451864)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1481513584296451898)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#"></span>#LABEL#<span class="t-Icon t-Icon--right #ICON_CSS_CLAS'
||'SES#"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#"></span>#LABEL#<span class="t-Icon t-Icon--right '
||'#ICON_CSS_CLASSES#"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481432905444450474)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481433047745450475)
,p_plug_template_id=>wwv_flow_api.id(1481432905444450474)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481484366221450514)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481484533201450550)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481484636560450550)
,p_plug_template_id=>wwv_flow_api.id(1481484533201450550)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481484760758450550)
,p_plug_template_id=>wwv_flow_api.id(1481484533201450550)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481485525639450588)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #CHANGE#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481485638617450588)
,p_plug_template_id=>wwv_flow_api.id(1481485525639450588)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481485701404450588)
,p_plug_template_id=>wwv_flow_api.id(1481485525639450588)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481488589873450627)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481488744383450627)
,p_plug_template_id=>wwv_flow_api.id(1481488589873450627)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481488796574450627)
,p_plug_template_id=>wwv_flow_api.id(1481488589873450627)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481490552526450664)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481490639846450665)
,p_plug_template_id=>wwv_flow_api.id(1481490552526450664)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481490679956450702)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-draggable:js-modal:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481490818884450702)
,p_plug_template_id=>wwv_flow_api.id(1481490679956450702)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481491575066450737)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481491801684450775)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481491916333450775)
,p_plug_template_id=>wwv_flow_api.id(1481491801684450775)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481491971209450808)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>12
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481492158576450808)
,p_plug_template_id=>wwv_flow_api.id(1481491971209450808)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481492208556450808)
,p_plug_template_id=>wwv_flow_api.id(1481491971209450808)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481494158667450841)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481494173664450841)
,p_plug_template_id=>wwv_flow_api.id(1481494158667450841)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481494287109450841)
,p_plug_template_id=>wwv_flow_api.id(1481494158667450841)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481495277218450879)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1481495839884450916)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_default_template_options=>'t-Wizard--headerBG'
,p_preset_template_options=>'t-Wizard--hideStepsSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1481495868647450916)
,p_plug_template_id=>wwv_flow_api.id(1481495839884450916)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481504094116451242)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481505830933451281)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481508110827451320)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481509128814451356)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481509984534451392)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481510525424451428)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup(e);',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481510619297451464)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button--header t-Button--navBar" onclick="apex.navigation.redirect(''#LINK#'')" type="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </button>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button--header t-Button--navBar" onclick="apex.navigation.redirect(''#LINK#'')" type="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </button>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar a-MenuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar a-MenuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481510689358451501)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree"><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481510812638451538)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481511734477451574)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1481512202793451612)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayCurrentLabelOnly'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481496489712450952)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481496592929450992)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481498292669451029)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481500464001451063)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481500852112451096)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481500897182451128)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(1481500897182451128)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481502207040451167)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1481503170555451205)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1481512675288451648)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1481512971843451685)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1481513077030451722)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1481513193127451757)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" onclick="popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'');" type="button"><span class="a-Icon ic'
||'on-help"></span><span class="u-VisuallyHidden">#CURRENT_ITEM_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1481513345552451792)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="CURRENT_ITEM_HELP_LABEL" tabindex="-1" onclick="popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'');" type="button"><span class="a-Icon icon'
||'-help"></span><span class="u-VisuallyHidden">#CURRENT_ITEM_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1481514055684451933)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1481514263091451972)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1481514153768451971)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>0
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1481514466405451973)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>wwv_flow_api.id(4941680600541642284)
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1481431719984450403)
,p_default_dialog_template=>wwv_flow_api.id(1481430549815450334)
,p_error_template=>wwv_flow_api.id(1481428506731450228)
,p_printer_friendly_template=>wwv_flow_api.id(1481431719984450403)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(1481428506731450228)
,p_default_button_template=>wwv_flow_api.id(1481513561464451864)
,p_default_region_template=>wwv_flow_api.id(1481491971209450808)
,p_default_chart_template=>wwv_flow_api.id(1481491971209450808)
,p_default_form_template=>wwv_flow_api.id(1481491971209450808)
,p_default_reportr_template=>wwv_flow_api.id(1481491971209450808)
,p_default_tabform_template=>wwv_flow_api.id(1481491971209450808)
,p_default_wizard_template=>wwv_flow_api.id(1481491971209450808)
,p_default_menur_template=>wwv_flow_api.id(1481495277218450879)
,p_default_listr_template=>wwv_flow_api.id(1481491971209450808)
,p_default_irr_template=>wwv_flow_api.id(1481491575066450737)
,p_default_report_template=>wwv_flow_api.id(1481500897182451128)
,p_default_label_template=>wwv_flow_api.id(1481512971843451685)
,p_default_menu_template=>wwv_flow_api.id(1481514055684451933)
,p_default_calendar_template=>wwv_flow_api.id(1481514153768451971)
,p_default_list_template=>wwv_flow_api.id(1481508110827451320)
,p_default_nav_list_template=>wwv_flow_api.id(1481511734477451574)
,p_default_top_nav_list_temp=>wwv_flow_api.id(1481511734477451574)
,p_default_side_nav_list_temp=>wwv_flow_api.id(1481510689358451501)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1481484533201450550)
,p_default_dialogr_template=>wwv_flow_api.id(1481484366221450514)
,p_default_option_label=>wwv_flow_api.id(1481512971843451685)
,p_default_required_label=>wwv_flow_api.id(1481513193127451757)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(1481510619297451464)
,p_file_prefix=>'#IMAGE_PREFIX#themes/theme_42/'
,p_files_version=>61
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#MODERNIZR_DIRECTORY#modernizr#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1481514358834451972)
,p_theme_id=>42
,p_name=>'Blue'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Standard.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Theme-Standard#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1481514408324451972)
,p_theme_id=>42
,p_name=>'Gray'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Standard.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Theme-Gray#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481433226632450513)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481433463568450513)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481483578193450514)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481484836399450588)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481485048464450588)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481485780878450623)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Extend to Fit Contents'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481486246725450623)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481486496109450624)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481487136871450624)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481487358901450626)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481488188577450627)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481489587219450664)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481490995894450737)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481494386313450878)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481494592042450878)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481495023789450878)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481495378829450915)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481496146340450952)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481496687618451029)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481496943760451029)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481498552288451062)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481499171822451062)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481499475081451062)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481500201217451063)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481500558339451096)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481500981617451167)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481501300958451167)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481501543992451167)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481502319940451204)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481504239225451280)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481505006881451280)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481506228479451319)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481506870005451319)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481507186847451319)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481507938580451320)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481508668271451356)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481511219190451574)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481512339098451647)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481512768635451685)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481513756539451933)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481514583039451975)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481514834536451975)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481514997289451975)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481515185260451975)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481515408946451975)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481515854283451975)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481516494004451976)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Width'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481516952571451976)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481517150979451976)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default Size'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481517344587451976)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481517558590451976)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default Padding'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481517808556451976)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1481518164894451977)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481433165351450513)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481433349187450513)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(1481433226632450513)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481433488976450513)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(1481433463568450513)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481483716944450514)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(1481483578193450514)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481483822569450514)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(1481433226632450513)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481483909166450514)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(1481433463568450513)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481484006593450514)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>6
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(1481433226632450513)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481484145025450514)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(1481433463568450513)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481484233506450514)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>8
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(1481433226632450513)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481484340334450514)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>9
,p_region_template_id=>wwv_flow_api.id(1481432905444450474)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(1481483578193450514)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481484868818450588)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481484533201450550)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481485085713450588)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1481484533201450550)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(1481485048464450588)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481485251576450588)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1481484533201450550)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481485339833450588)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1481484533201450550)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(1481485048464450588)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481485412470450588)
,p_theme_id=>42
,p_name=>'USEDFORWIZARDDIALOGS'
,p_display_name=>'Used for Wizard Dialogs'
,p_display_sequence=>6
,p_region_template_id=>wwv_flow_api.id(1481484533201450550)
,p_css_classes=>'t-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481485904171450623)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486065061450623)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486163134450623)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486281876450623)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(1481486246725450623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486417233450624)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486646024450624)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486708189450624)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486820460450624)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486876603450624)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481486997384450624)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487198734450624)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1481487136871450624)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487447542450626)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide Overflow'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487544192450626)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>6
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1481487136871450624)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487584796450626)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>7
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487690854450627)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>8
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487773319450627)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487959217450627)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll Body'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481487995240450627)
,p_theme_id=>42
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll Body (with shadows)'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_help_text=>'Enables the region body to scroll when a height is applied to the region, and shows shadows at top or bottom of region to indicate that content exists outside of viewable area.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481488131651450627)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481488281929450627)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(1481488188577450627)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481488446661450627)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(1481488188577450627)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481488474224450627)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_api.id(1481485525639450588)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481488924872450664)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489050578450664)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489073501450664)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489224555450664)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489321985450664)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489379633450664)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489490211450664)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489703234450664)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(1481489587219450664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489814320450664)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(1481489587219450664)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481489880467450664)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide Overflow'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490009321450664)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>7
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490129556450664)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>8
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490213497450664)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll Body'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490364124450664)
,p_theme_id=>42
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll Body (with shadows)'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_help_text=>'Enables the region body to scroll when a height is applied to the region, and shows shadows at top or bottom of region to indicate that content exists outside of viewable area.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490383147450664)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_api.id(1481488589873450627)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481490935202450737)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491163165450737)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(1481490995894450737)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491248908450737)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(1481490995894450737)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491356793450737)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491445636450737)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491542947450737)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481490679956450702)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(1481490995894450737)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481491724425450774)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481491575066450737)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492409049450840)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492519412450840)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492587906450840)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492681527450840)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1481485780878450623)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492791957450840)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481492903575450840)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493057024450840)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493086225450840)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493180979450840)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1481486496109450624)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493333841450840)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1481487136871450624)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493393368450841)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide Overflow'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493549433450841)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>6
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1481487136871450624)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493635000450841)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>7
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493739143450841)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>8
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493822290450841)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll Body'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493877439450841)
,p_theme_id=>42
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll Body (with shadows)'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(1481487358901450626)
,p_template_types=>'REGION'
,p_help_text=>'Enables the region body to scroll when a height is applied to the region, and shows shadows at top or bottom of region to indicate that content exists outside of viewable area.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481493972352450841)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_api.id(1481491971209450808)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1481484836399450588)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481494561952450878)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(1481494386313450878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481494699176450878)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(1481494592042450878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481494797050450878)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481494882443450878)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(1481494592042450878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481495093440450878)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(1481495023789450878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481495231835450879)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481494158667450841)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(1481495023789450878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481495527250450916)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481495277218450879)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(1481495378829450915)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481495652934450916)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481495277218450879)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481495705223450916)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481495277218450879)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(1481495378829450915)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481496022056450952)
,p_theme_id=>42
,p_name=>'HEADERSHADING'
,p_display_name=>'Header Shading'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1481495839884450916)
,p_css_classes=>'t-Wizard--headerBG'
,p_template_types=>'REGION'
,p_help_text=>'Adds background shading for the wizard header.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481496176376450952)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_api.id(1481495839884450916)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(1481496146340450952)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481496335848450952)
,p_theme_id=>42
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1481495839884450916)
,p_css_classes=>'t-Wizard--noTitle'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481496401631450952)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1481495839884450916)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(1481496146340450952)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481496856350451029)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1481496687618451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497064600451029)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>2
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497154505451029)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>3
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1481496687618451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497204527451029)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>4
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497337634451029)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1481496687618451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497411270451029)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>6
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497544341451029)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>7
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497586660451029)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>8
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1481496687618451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497712352451029)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>9
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1481496687618451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497801059451029)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481497934271451029)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>11
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498037949451029)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>12
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498109584451029)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>13
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498255517451029)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>14
,p_report_template_id=>wwv_flow_api.id(1481496592929450992)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498430602451062)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498654090451062)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1481498552288451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498754669451062)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498810764451062)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1481498552288451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498869606451062)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481498982526451062)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1481498552288451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499154853451062)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499338050451062)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1481499171822451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499380540451062)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1481499171822451062)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499616304451063)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1481499475081451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499744792451063)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1481499475081451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499809658451063)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1481499171822451062)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481499908877451063)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481500039800451063)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1481498552288451062)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481500069243451063)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481500293855451063)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481498292669451029)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(1481500201217451063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481500656201451096)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481500464001451063)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(1481500558339451096)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481500680781451096)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481500464001451063)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(1481500558339451096)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501112893451167)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(1481500981617451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501198280451167)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(1481500981617451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501386234451167)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(1481501300958451167)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501635049451167)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(1481501543992451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501695743451167)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'Remove All Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(1481501543992451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501835148451167)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(1481501543992451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481501928689451167)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(1481501300958451167)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502010209451167)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502136014451167)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481500897182451128)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(1481501543992451167)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502424177451204)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502505344451204)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502583547451204)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502734535451204)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502780304451205)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502913120451205)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481502979707451205)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503102235451205)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1481502207040451167)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503309471451241)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503367067451241)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>2
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503473745451241)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>3
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503591119451242)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503735738451242)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1481496943760451029)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503774859451242)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>4
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481503886463451242)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>6
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504019507451242)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>7
,p_report_template_id=>wwv_flow_api.id(1481503170555451205)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1481502319940451204)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504352270451280)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504400548451280)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>2
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504543258451280)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>3
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504629137451280)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>4
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504723799451280)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504806971451280)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>6
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481504955493451280)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>7
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505085628451280)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>8
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1481505006881451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505244851451280)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>9
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1481505006881451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505280598451280)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505432895451281)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>11
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1481505006881451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505501829451281)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>12
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505653448451281)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>13
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1481505006881451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481505763634451281)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>14
,p_list_template_id=>wwv_flow_api.id(1481504094116451242)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1481505006881451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506112598451319)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506294760451319)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1481506228479451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506421346451319)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506467869451319)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1481506228479451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506641560451319)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506749319451319)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1481506228479451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506770538451319)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481506988242451319)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507077078451319)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507333989451319)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1481507186847451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507393463451320)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1481507186847451319)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507507519451320)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507652219451320)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507747124451320)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1481506228479451319)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481507804350451320)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508028713451320)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481505830933451281)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(1481507938580451320)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508199512451356)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508330378451356)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508378167451356)
,p_theme_id=>42
,p_name=>'ICONSONLY'
,p_display_name=>'Icons Only'
,p_display_sequence=>2
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--iconOnly'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
,p_help_text=>'Displays icons that are useful for header bar navigation.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508519032451356)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>3
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508640670451356)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>4
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508848831451356)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For all items'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(1481508668271451356)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508957835451356)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>6
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(1481508668271451356)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481508978995451356)
,p_theme_id=>42
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>7
,p_list_template_id=>wwv_flow_api.id(1481508110827451320)
,p_css_classes=>'t-LinksList--brightHover'
,p_template_types=>'LIST'
,p_help_text=>'Uses a more colorful hover-state for links'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509248773451392)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509329214451392)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>2
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509430804451392)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>3
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509490107451392)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>4
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509638113451392)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509703773451392)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509805397451392)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481509895445451392)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>12
,p_list_template_id=>wwv_flow_api.id(1481509128814451356)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510123061451428)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481509984534451392)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510211071451428)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481509984534451392)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510342443451428)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481509984534451392)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510426855451428)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481509984534451392)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510940972451574)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(1481507186847451319)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481510972276451574)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(1481504239225451280)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511087496451574)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(1481507186847451319)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511349655451574)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(1481511219190451574)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511377591451574)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511525436451574)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(1481506870005451319)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511628920451574)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1481510812638451538)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(1481511219190451574)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511850444451612)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481511734477451574)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511884954451612)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481511734477451574)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481511976731451612)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481511734477451574)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481512117588451612)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481511734477451574)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481512378118451647)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1481512202793451612)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(1481512339098451647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481512512352451647)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>2
,p_list_template_id=>wwv_flow_api.id(1481512202793451612)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(1481512339098451647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481512586391451647)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>3
,p_list_template_id=>wwv_flow_api.id(1481512202793451612)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(1481512339098451647)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481512904502451685)
,p_theme_id=>42
,p_name=>'NO_LABEL_SPACE'
,p_display_name=>'No'
,p_display_sequence=>1
,p_field_template_id=>wwv_flow_api.id(1481512675288451648)
,p_css_classes=>'t-Form-fieldContainer--noLabelSpacing'
,p_group_id=>wwv_flow_api.id(1481512768635451685)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481513848337451933)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(1481513584296451898)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(1481513756539451933)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481513959371451933)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>2
,p_button_template_id=>wwv_flow_api.id(1481513584296451898)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(1481513756539451933)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481514741117451975)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>1
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(1481514583039451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481514888816451975)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>1
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(1481514834536451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515072339451975)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>1
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(1481514997289451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515319303451975)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(1481515185260451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515514206451975)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(1481515408946451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515601802451975)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>1
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(1481514834536451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515725442451975)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>1
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(1481514997289451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481515930864451975)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>1
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(1481515854283451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516020329451975)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>1
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(1481515854283451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516104960451976)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(1481515854283451975)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516185842451976)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(1481514583039451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516329703451976)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(1481515408946451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516379834451976)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(1481515185260451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516570770451976)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(1481516494004451976)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516705425451976)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(1481514583039451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516774627451976)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(1481514583039451975)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481516980269451976)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>1
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(1481516952571451976)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481517234405451976)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(1481517150979451976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481517462793451976)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(1481517344587451976)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481517631252451976)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(1481517558590451976)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481517731075451976)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(1481517558590451976)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481517932201451976)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>1
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(1481517808556451976)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481518035968451976)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>1
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(1481517150979451976)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481518222571451977)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(1481518164894451977)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481518345998451977)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>1
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481518386294451977)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>1
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(1481518164894451977)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1481518540570451977)
,p_theme_id=>42
,p_name=>'WIDTH50P'
,p_display_name=>'50% Width'
,p_display_sequence=>1
,p_css_classes=>'w50p'
,p_group_id=>wwv_flow_api.id(1481516494004451976)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(1482090951536527023)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(1481518927737451978)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_gritter_notification
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(4423206111359457813)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.GRITTER_NOTIFICATION'
,p_display_name=>'Notification'
,p_category=>'NOTIFICATION'
,p_supported_ui_types=>'DESKTOP'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_gritter_notification (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_title          varchar2(4000) := p_dynamic_action.attribute_01;',
'    l_text           varchar2(4000) := p_dynamic_action.attribute_02;',
'    l_image_url      varchar2(4000) := p_dynamic_action.attribute_03;',
'    l_is_sticky      varchar2(1)    := nvl(p_dynamic_action.attribute_04, ''N'');',
'    l_hide_after_sec number         := to_number(p_dynamic_action.attribute_05);',
'',
'    l_result         apex_plugin.t_dynamic_action_render_result;',
'begin',
'    -- During plug-in development it''s very helpful to have some debug information',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_dynamic_action (',
'            p_plugin         => p_plugin,',
'            p_dynamic_action => p_dynamic_action );',
'    end if;',
'    -- Register the javascript and CSS library the plug-in uses.',
'    apex_css.add_file (',
'        p_name      => ''apex.jquery.gritter'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'    apex_javascript.add_library (',
'        p_name      => ''apex.jquery.gritter.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'    apex_javascript.add_library (',
'        p_name      => ''com_oracle_apex_gritter_notification.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'    -- Register the function and the used attributes with the dynamic action framework',
'    l_result.javascript_function := ''com_oracle_apex_gritter_notification'';',
'    l_result.attribute_01 := l_title;',
'    l_result.attribute_02 := l_text;',
'    l_result.attribute_03 := l_image_url;',
'    l_result.attribute_04 := l_is_sticky;',
'    l_result.attribute_05 := l_hide_after_sec;',
'    return l_result;',
'end render_gritter_notification;'))
,p_render_function=>'render_gritter_notification'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	The <strong>Notification</strong> dynamic action plug-in provides an unobtrusive stylish notification popup where the message automatically goes away after some time.</p>',
'<p>',
'	The plug-in is based on the jQuery plug-in Gritter&nbsp;<a href="http://github.com/jboesch/Gritter">http://github.com/jboesch/Gritter</a></p>'))
,p_version_identifier=>'1.3'
,p_about_url=>'http://apex.oracle.com/plugins/'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4423206410105466892)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>60
,p_is_translatable=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	The heading of the notification.</p>',
'<p>',
'	The following placeholder syntax is available:</p>',
'<ul>',
'	<li>',
'		Server Side Substitution syntax: Replaces a placeholder during rendering of the page. Example: &amp;P6_CATEGORY.</li>',
'	<li>',
'		Client Side Substitution syntax: Replaces a placeholder with the current value of the browser. Example: #P6_CATEGORY#</li>',
'</ul>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4423206924996471208)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Text'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_display_length=>60
,p_is_translatable=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	The text inside the notification.</p>',
'<p>',
'	The following placeholder syntax''s are available:</p>',
'<ul>',
'	<li>',
'		Server Side Substitution syntax: Replaces a placeholder during rendering of the page. Example: &amp;P6_CATEGORY.</li>',
'	<li>',
'		Client Side Substitution syntax: Replaces a placeholder with the current value of the browser. Example: #P6_CATEGORY#</li>',
'</ul>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4423207431922473163)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Image URL'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>60
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	The image URL used to display an image on the left.</p>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4423207939540475364)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Sticky'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>If you want it to fade out on its own or just sit there sticky.</p>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(4423208425604490310)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Hide After x Seconds'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>4
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(4423207939540475364)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Specifies the number of seconds the message should be displayed before it should fade out.</p>',
''))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20696536207472617368202A2F0D0A2A2068746D6C2023677269747465722D6E6F746963652D77726170706572207B0D0A09706F736974696F6E3A6162736F6C7574653B200D0A7D0D0A2A2068746D6C202E677269747465722D746F70207B0D0A09';
wwv_flow_api.g_varchar2_table(2) := '6D617267696E2D626F74746F6D3A2D313070783B0D0A7D0D0A2A2068746D6C202E677269747465722D6974656D207B0D0A0970616464696E672D626F74746F6D3A303B0D0A7D0D0A2A2068746D6C202E677269747465722D626F74746F6D207B0D0A096D';
wwv_flow_api.g_varchar2_table(3) := '617267696E2D626F74746F6D3A303B0D0A7D0D0A2A2068746D6C202E677269747465722D636C6F7365207B0D0A096261636B67726F756E643A75726C28677269747465722D636C6F73652D6965362E676966293B0D0A0977696474683A323270783B0D0A';
wwv_flow_api.g_varchar2_table(4) := '096865696768743A323270783B0D0A09746F703A3770783B0D0A096C6566743A3770783B0D0A7D0D0A0D0A2F2A20746865206E6F726D202A2F0D0A23677269747465722D6E6F746963652D77726170706572207B0D0A09706F736974696F6E3A66697865';
wwv_flow_api.g_varchar2_table(5) := '643B0D0A09746F703A323070783B0D0A0972696768743A323070783B0D0A0977696474683A33303170783B0D0A097A2D696E6465783A393939393B0D0A7D0D0A2E677269747465722D6974656D2D77726170706572207B0D0A09706F736974696F6E3A72';
wwv_flow_api.g_varchar2_table(6) := '656C61746976653B0D0A096D617267696E3A302030203130707820303B0D0A096261636B67726F756E643A75726C282769652D7370616365722E67696627293B202F2A206965372F3820666978202A2F200D0A7D0D0A2E677269747465722D746F70207B';
wwv_flow_api.g_varchar2_table(7) := '0D0A096261636B67726F756E643A75726C28677269747465722E706E6729206E6F2D726570656174206C656674202D333070783B0D0A096865696768743A313070783B0D0A7D0D0A2E686F766572202E677269747465722D746F70207B0D0A096261636B';
wwv_flow_api.g_varchar2_table(8) := '67726F756E642D706F736974696F6E3A7269676874202D333070783B0D0A7D0D0A2E677269747465722D626F74746F6D207B0D0A096261636B67726F756E643A75726C28677269747465722E706E6729206E6F2D726570656174206C65667420626F7474';
wwv_flow_api.g_varchar2_table(9) := '6F6D3B0D0A096865696768743A3870783B0D0A096D617267696E3A303B0D0A7D0D0A2E686F766572202E677269747465722D626F74746F6D207B0D0A096261636B67726F756E642D706F736974696F6E3A20626F74746F6D2072696768743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(10) := '2E677269747465722D6974656D207B0D0A09646973706C61793A626C6F636B3B0D0A096261636B67726F756E643A75726C28677269747465722E706E6729206E6F2D726570656174206C656674202D343070783B0D0A09636F6C6F723A23303B0D0A0970';
wwv_flow_api.g_varchar2_table(11) := '616464696E673A32707820313170782038707820313170783B0D0A09666F6E742D73697A653A20313170783B0D0A09666F6E742D66616D696C793A76657264616E613B0D0A7D0D0A2E686F766572202E677269747465722D6974656D207B0D0A09626163';
wwv_flow_api.g_varchar2_table(12) := '6B67726F756E642D706F736974696F6E3A7269676874202D343070783B0D0A7D0D0A2E677269747465722D6974656D2070207B0D0A0970616464696E673A303B0D0A096D617267696E3A303B0D0A09636F6C6F723A236565653B202F2A206E6563657373';
wwv_flow_api.g_varchar2_table(13) := '61727920666F72207468656D65203134202A2F0D0A7D0D0A2E677269747465722D636C6F7365207B0D0A09706F736974696F6E3A6162736F6C7574653B0D0A09746F703A3570783B0D0A096C6566743A3370783B0D0A096261636B67726F756E643A7572';
wwv_flow_api.g_varchar2_table(14) := '6C28677269747465722E706E6729206E6F2D726570656174206C65667420746F703B0D0A09637572736F723A706F696E7465723B0D0A0977696474683A333070783B0D0A096865696768743A333070783B0D0A7D0D0A2E677269747465722D7469746C65';
wwv_flow_api.g_varchar2_table(15) := '207B0D0A09666F6E742D73697A653A313470783B0D0A09666F6E742D7765696768743A626F6C643B0D0A09636F6C6F723A236565653B202F2A206E656365737361727920666F72207468656D65203134202A2F0D0A0970616464696E673A302030203770';
wwv_flow_api.g_varchar2_table(16) := '7820303B0D0A09646973706C61793A626C6F636B3B0D0A09746578742D736861646F773A3170782031707820233030303B202F2A204E6F7420737570706F72746564206279204945203A28202A2F0D0A7D0D0A2E677269747465722D696D616765207B0D';
wwv_flow_api.g_varchar2_table(17) := '0A0977696474683A343870783B0D0A096865696768743A343870783B0D0A09666C6F61743A6C6566743B0D0A7D0D0A2E677269747465722D776974682D696D6167652C0D0A2E677269747465722D776974686F75742D696D616765207B0D0A0970616464';
wwv_flow_api.g_varchar2_table(18) := '696E673A3020302035707820303B0D0A7D0D0A2E677269747465722D776974682D696D616765207B0D0A0977696474683A32323070783B0D0A09666C6F61743A72696768743B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(870981367871997101)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'apex.jquery.gritter.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839610100010080000000000000000021F90401000000002C00000000010001000002024401003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(880709350341278180)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'ie-spacer.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2824297B242E677269747465723D7B7D3B242E677269747465722E6F7074696F6E733D7B666164655F696E5F73706565643A276D656469756D272C666164655F6F75745F73706565643A313030302C74696D653A363030307D0A24';
wwv_flow_api.g_varchar2_table(2) := '2E677269747465722E6164643D66756E6374696F6E28706172616D73297B7472797B72657475726E20477269747465722E61646428706172616D737C7C7B7D293B7D63617463682865297B766172206572723D2747726974746572204572726F723A2027';
wwv_flow_api.g_varchar2_table(3) := '2B653B28747970656F6628636F6E736F6C6529213D27756E646566696E6564272626636F6E736F6C652E6572726F72293F636F6E736F6C652E6572726F72286572722C706172616D73293A616C65727428657272293B7D7D0A242E677269747465722E72';
wwv_flow_api.g_varchar2_table(4) := '656D6F76653D66756E6374696F6E2869642C706172616D73297B477269747465722E72656D6F766553706563696669632869642C706172616D737C7C7B7D293B7D0A242E677269747465722E72656D6F7665416C6C3D66756E6374696F6E28706172616D';
wwv_flow_api.g_varchar2_table(5) := '73297B477269747465722E73746F7028706172616D737C7C7B7D293B7D0A76617220477269747465723D7B666164655F696E5F73706565643A27272C666164655F6F75745F73706565643A27272C74696D653A27272C5F637573746F6D5F74696D65723A';
wwv_flow_api.g_varchar2_table(6) := '302C5F6974656D5F636F756E743A302C5F69735F73657475703A302C5F74706C5F636C6F73653A273C64697620636C6173733D22677269747465722D636C6F7365223E3C2F6469763E272C5F74706C5F6974656D3A273C6469762069643D226772697474';
wwv_flow_api.g_varchar2_table(7) := '65722D6974656D2D5B5B6E756D6265725D5D2220636C6173733D22677269747465722D6974656D2D77726170706572205B5B6974656D5F636C6173735D5D22207374796C653D22646973706C61793A6E6F6E65223E3C64697620636C6173733D22677269';
wwv_flow_api.g_varchar2_table(8) := '747465722D746F70223E3C2F6469763E3C64697620636C6173733D22677269747465722D6974656D223E5B5B696D6167655D5D3C64697620636C6173733D225B5B636C6173735F6E616D655D5D223E3C7370616E20636C6173733D22677269747465722D';
wwv_flow_api.g_varchar2_table(9) := '7469746C65223E5B5B757365726E616D655D5D3C2F7370616E3E3C703E5B5B746578745D5D3C2F703E3C2F6469763E3C646976207374796C653D22636C6561723A626F7468223E3C2F6469763E3C2F6469763E3C64697620636C6173733D226772697474';
wwv_flow_api.g_varchar2_table(10) := '65722D626F74746F6D223E3C2F6469763E3C2F6469763E272C5F74706C5F777261703A273C6469762069643D22677269747465722D6E6F746963652D77726170706572223E3C2F6469763E272C6164643A66756E6374696F6E28706172616D73297B6966';
wwv_flow_api.g_varchar2_table(11) := '2821706172616D732E7469746C657C7C21706172616D732E74657874297B7468726F7727596F75206E65656420746F2066696C6C206F757420746865206669727374203220706172616D733A20227469746C652220616E6420227465787422273B7D0A69';
wwv_flow_api.g_varchar2_table(12) := '662821746869732E5F69735F7365747570297B746869732E5F72756E536574757028293B7D0A76617220757365723D706172616D732E7469746C652C746578743D706172616D732E746578742C696D6167653D706172616D732E696D6167657C7C27272C';
wwv_flow_api.g_varchar2_table(13) := '737469636B793D706172616D732E737469636B797C7C66616C73652C6974656D5F636C6173733D706172616D732E636C6173735F6E616D657C7C27272C74696D655F616C6976653D706172616D732E74696D657C7C27273B746869732E5F766572696679';
wwv_flow_api.g_varchar2_table(14) := '5772617070657228293B746869732E5F6974656D5F636F756E742B2B3B766172206E756D6265723D746869732E5F6974656D5F636F756E742C746D703D746869732E5F74706C5F6974656D3B24285B276265666F72655F6F70656E272C2761667465725F';
wwv_flow_api.g_varchar2_table(15) := '6F70656E272C276265666F72655F636C6F7365272C2761667465725F636C6F7365275D292E656163682866756E6374696F6E28692C76616C297B477269747465725B275F272B76616C2B275F272B6E756D6265725D3D28242E697346756E6374696F6E28';
wwv_flow_api.g_varchar2_table(16) := '706172616D735B76616C5D29293F706172616D735B76616C5D3A66756E6374696F6E28297B7D7D293B746869732E5F637573746F6D5F74696D65723D303B69662874696D655F616C697665297B746869732E5F637573746F6D5F74696D65723D74696D65';
wwv_flow_api.g_varchar2_table(17) := '5F616C6976653B7D0A76617220696D6167655F7374723D28696D616765213D2727293F273C696D67207372633D22272B696D6167652B272220636C6173733D22677269747465722D696D61676522202F3E273A27272C636C6173735F6E616D653D28696D';
wwv_flow_api.g_varchar2_table(18) := '616765213D2727293F27677269747465722D776974682D696D616765273A27677269747465722D776974686F75742D696D616765273B746D703D746869732E5F7374725F7265706C616365285B275B5B757365726E616D655D5D272C275B5B746578745D';
wwv_flow_api.g_varchar2_table(19) := '5D272C275B5B696D6167655D5D272C275B5B6E756D6265725D5D272C275B5B636C6173735F6E616D655D5D272C275B5B6974656D5F636C6173735D5D275D2C5B757365722C746578742C696D6167655F7374722C746869732E5F6974656D5F636F756E74';
wwv_flow_api.g_varchar2_table(20) := '2C636C6173735F6E616D652C6974656D5F636C6173735D2C746D70293B746869735B275F6265666F72655F6F70656E5F272B6E756D6265725D28293B24282723677269747465722D6E6F746963652D7772617070657227292E617070656E6428746D7029';
wwv_flow_api.g_varchar2_table(21) := '3B766172206974656D3D24282723677269747465722D6974656D2D272B746869732E5F6974656D5F636F756E74293B6974656D2E66616465496E28746869732E666164655F696E5F73706565642C66756E6374696F6E28297B477269747465725B275F61';
wwv_flow_api.g_varchar2_table(22) := '667465725F6F70656E5F272B6E756D6265725D2824287468697329293B7D293B69662821737469636B79297B746869732E5F7365744661646554696D6572286974656D2C6E756D626572293B7D0A24286974656D292E62696E6428276D6F757365656E74';
wwv_flow_api.g_varchar2_table(23) := '6572206D6F7573656C65617665272C66756E6374696F6E286576656E74297B6966286576656E742E747970653D3D276D6F757365656E74657227297B69662821737469636B79297B477269747465722E5F726573746F72654974656D4966466164696E67';
wwv_flow_api.g_varchar2_table(24) := '28242874686973292C6E756D626572293B7D7D0A656C73657B69662821737469636B79297B477269747465722E5F7365744661646554696D657228242874686973292C6E756D626572293B7D7D0A477269747465722E5F686F7665725374617465282428';
wwv_flow_api.g_varchar2_table(25) := '74686973292C6576656E742E74797065293B7D293B72657475726E206E756D6265723B7D2C5F636F756E7452656D6F7665577261707065723A66756E6374696F6E28756E697175655F69642C65297B652E72656D6F766528293B746869735B275F616674';
wwv_flow_api.g_varchar2_table(26) := '65725F636C6F73655F272B756E697175655F69645D2865293B6966282428272E677269747465722D6974656D2D7772617070657227292E6C656E6774683D3D30297B24282723677269747465722D6E6F746963652D7772617070657227292E72656D6F76';
wwv_flow_api.g_varchar2_table(27) := '6528293B7D7D2C5F666164653A66756E6374696F6E28652C756E697175655F69642C706172616D732C756E62696E645F6576656E7473297B76617220706172616D733D706172616D737C7C7B7D2C666164653D28747970656F6628706172616D732E6661';
wwv_flow_api.g_varchar2_table(28) := '646529213D27756E646566696E656427293F706172616D732E666164653A747275653B666164655F6F75745F73706565643D706172616D732E73706565647C7C746869732E666164655F6F75745F73706565643B746869735B275F6265666F72655F636C';
wwv_flow_api.g_varchar2_table(29) := '6F73655F272B756E697175655F69645D2865293B696628756E62696E645F6576656E7473297B652E756E62696E6428276D6F757365656E746572206D6F7573656C6561766527293B7D0A69662866616465297B652E616E696D617465287B6F7061636974';
wwv_flow_api.g_varchar2_table(30) := '793A307D2C666164655F6F75745F73706565642C66756E6374696F6E28297B652E616E696D617465287B6865696768743A307D2C3330302C66756E6374696F6E28297B477269747465722E5F636F756E7452656D6F76655772617070657228756E697175';
wwv_flow_api.g_varchar2_table(31) := '655F69642C65293B7D297D297D0A656C73657B746869732E5F636F756E7452656D6F76655772617070657228756E697175655F69642C65293B7D7D2C5F686F76657253746174653A66756E6374696F6E28652C74797065297B696628747970653D3D276D';
wwv_flow_api.g_varchar2_table(32) := '6F757365656E74657227297B652E616464436C6173732827686F76657227293B7661722066696E645F696D673D652E66696E642827696D6727293B2866696E645F696D672E6C656E677468293F66696E645F696D672E6265666F726528746869732E5F74';
wwv_flow_api.g_varchar2_table(33) := '706C5F636C6F7365293A652E66696E6428277370616E27292E6265666F726528746869732E5F74706C5F636C6F7365293B652E66696E6428272E677269747465722D636C6F736527292E636C69636B2866756E6374696F6E28297B76617220756E697175';
wwv_flow_api.g_varchar2_table(34) := '655F69643D652E617474722827696427292E73706C697428272D27295B325D3B477269747465722E72656D6F7665537065636966696328756E697175655F69642C7B7D2C652C74727565293B7D293B7D0A656C73657B652E72656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(35) := '27686F76657227293B652E66696E6428272E677269747465722D636C6F736527292E72656D6F766528293B7D7D2C72656D6F766553706563696669633A66756E6374696F6E28756E697175655F69642C706172616D732C652C756E62696E645F6576656E';
wwv_flow_api.g_varchar2_table(36) := '7473297B6966282165297B76617220653D24282723677269747465722D6974656D2D272B756E697175655F6964293B7D0A746869732E5F6661646528652C756E697175655F69642C706172616D737C7C7B7D2C756E62696E645F6576656E7473293B7D2C';
wwv_flow_api.g_varchar2_table(37) := '5F726573746F72654974656D4966466164696E673A66756E6374696F6E28652C756E697175655F6964297B636C65617254696D656F757428746869735B275F696E745F69645F272B756E697175655F69645D293B652E73746F7028292E637373287B6F70';
wwv_flow_api.g_varchar2_table(38) := '61636974793A27277D293B7D2C5F72756E53657475703A66756E6374696F6E28297B666F72286F707420696E20242E677269747465722E6F7074696F6E73297B746869735B6F70745D3D242E677269747465722E6F7074696F6E735B6F70745D3B7D0A74';
wwv_flow_api.g_varchar2_table(39) := '6869732E5F69735F73657475703D313B7D2C5F7365744661646554696D65723A66756E6374696F6E28652C756E697175655F6964297B7661722074696D65725F7374723D28746869732E5F637573746F6D5F74696D6572293F746869732E5F637573746F';
wwv_flow_api.g_varchar2_table(40) := '6D5F74696D65723A746869732E74696D653B746869735B275F696E745F69645F272B756E697175655F69645D3D73657454696D656F75742866756E6374696F6E28297B477269747465722E5F6661646528652C756E697175655F6964293B7D2C74696D65';
wwv_flow_api.g_varchar2_table(41) := '725F737472293B7D2C73746F703A66756E6374696F6E28706172616D73297B766172206265666F72655F636C6F73653D28242E697346756E6374696F6E28706172616D732E6265666F72655F636C6F736529293F706172616D732E6265666F72655F636C';
wwv_flow_api.g_varchar2_table(42) := '6F73653A66756E6374696F6E28297B7D3B7661722061667465725F636C6F73653D28242E697346756E6374696F6E28706172616D732E61667465725F636C6F736529293F706172616D732E61667465725F636C6F73653A66756E6374696F6E28297B7D3B';
wwv_flow_api.g_varchar2_table(43) := '76617220777261703D24282723677269747465722D6E6F746963652D7772617070657227293B6265666F72655F636C6F73652877726170293B777261702E666164654F75742866756E6374696F6E28297B242874686973292E72656D6F766528293B6166';
wwv_flow_api.g_varchar2_table(44) := '7465725F636C6F736528293B7D293B7D2C5F7374725F7265706C6163653A66756E6374696F6E287365617263682C7265706C6163652C7375626A6563742C636F756E74297B76617220693D302C6A3D302C74656D703D27272C7265706C3D27272C736C3D';
wwv_flow_api.g_varchar2_table(45) := '302C666C3D302C663D5B5D2E636F6E63617428736561726368292C723D5B5D2E636F6E636174287265706C616365292C733D7375626A6563742C72613D7220696E7374616E63656F662041727261792C73613D7320696E7374616E63656F662041727261';
wwv_flow_api.g_varchar2_table(46) := '793B733D5B5D2E636F6E6361742873293B696628636F756E74297B746869732E77696E646F775B636F756E745D3D303B7D0A666F7228693D302C736C3D732E6C656E6774683B693C736C3B692B2B297B696628735B695D3D3D3D2727297B636F6E74696E';
wwv_flow_api.g_varchar2_table(47) := '75653B7D0A666F72286A3D302C666C3D662E6C656E6774683B6A3C666C3B6A2B2B297B74656D703D735B695D2B27273B7265706C3D72613F28725B6A5D213D3D756E646566696E65643F725B6A5D3A2727293A725B305D3B735B695D3D2874656D70292E';
wwv_flow_api.g_varchar2_table(48) := '73706C697428665B6A5D292E6A6F696E287265706C293B696628636F756E742626735B695D213D3D74656D70297B746869732E77696E646F775B636F756E745D2B3D2874656D702E6C656E6774682D735B695D2E6C656E677468292F665B6A5D2E6C656E';
wwv_flow_api.g_varchar2_table(49) := '6774683B7D7D7D0A72657475726E2073613F733A735B305D3B7D2C5F766572696679577261707065723A66756E6374696F6E28297B69662824282723677269747465722D6E6F746963652D7772617070657227292E6C656E6774683D3D30297B24282762';
wwv_flow_api.g_varchar2_table(50) := '6F647927292E617070656E6428746869732E5F74706C5F77726170293B7D7D7D7D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1756264638513483726)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'apex.jquery.gritter.min.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A204E6F74696669636174696F6E20506C75672D696E2076312E30202D20687474703A2F2F7777772E6F7261636C65617065782E696E666F2F0A202A200A202A204261736564206F6E206A5175657279204772697474657220687474703A2F2F';
wwv_flow_api.g_varchar2_table(2) := '626F6564657369676E2E636F6D2F626C6F672F323030392F30372F31312F67726F776C2D666F722D6A71756572792D677269747465722F0A202A0A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C69';
wwv_flow_api.g_varchar2_table(3) := '63656E7365733A0A202A202020687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E7068700A202A202020687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C';
wwv_flow_api.g_varchar2_table(4) := '2E68746D6C0A2A2F0A66756E6374696F6E20636F6D5F6F7261636C655F617065785F677269747465725F6E6F74696669636174696F6E28297B66756E6374696F6E2066286B297B76617220693D6E6577205265674578702822235C5C772B23222C226722';
wwv_flow_api.g_varchar2_table(5) := '292C672C6A2C683D6B3B7768696C6528673D692E65786563286B29297B6A3D247828675B305D2E7265706C616365282F232F672C222229293B6966286A297B683D682E7265706C61636528675B305D2C2476286A29297D7D72657475726E20687D766172';
wwv_flow_api.g_varchar2_table(6) := '20653D746869732E616374696F6E2E61747472696275746530312C623D746869732E616374696F6E2E61747472696275746530322C633D746869732E616374696F6E2E61747472696275746530332C613D2828746869732E616374696F6E2E6174747269';
wwv_flow_api.g_varchar2_table(7) := '6275746530343D3D3D225922293F747275653A66616C7365292C643D746869732E616374696F6E2E61747472696275746530353B617065782E6A51756572792E677269747465722E616464287B7469746C653A662865292C746578743A662862292C696D';
wwv_flow_api.g_varchar2_table(8) := '6167653A632C737469636B793A612C74696D653A642A313030307D297D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(3439666077251433058)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'com_oracle_apex_gritter_notification.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396116001600E66200050505DDDDDDE1E1E1B7B7B7383838353535ACACACC1C1C13B3B3B7F7F7F5E5E5ECFCFCFE7E7E70C0C0C4545453232321D1D1D4A4A4A2828289797977C7C7CA8A8A8E4E4E4D3D3D39A9A9A373737646464313131898989';
wwv_flow_api.g_varchar2_table(2) := '4C4C4C3A3A3AEBEBEB6A6A6A7171716D6D6DFCFCFC202020CDCDCDEEEEEEF9F9F9E2E2E26E6E6E3333339D9D9D1717179B9B9BF3F3F34D4D4DCBCBCB3D3D3D2C2C2C8484849999993F3F3FE5E5E52222220808089191915C5C5C252525F0F0F0ADADAD96';
wwv_flow_api.g_varchar2_table(3) := '96961010103E3E3E6B6B6B686868C7C7C74040405A5A5ACACACA797979565656AFAFAFA3A3A3F8F8F88787877A7A7A141414D8D8D8BCBCBCAEAEAEC2C2C2606060949494707070808080838383F1F1F16262628B8B8BDFDFDF727272C4C4C42E2E2EF6F6';
wwv_flow_api.g_varchar2_table(4) := 'F6FFFFFF0202022E2E2E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021F904';
wwv_flow_api.g_varchar2_table(5) := '01000062002C00000000160016000007FF8062828305453E015F5F012D5305838F831B210260950C5B956002295E9082043D6027130E61A661055A5F604A1E900430600324A7B5611246600B089151602B00B6B6005760070F825CB2C1C2C254604D6205';
wwv_flow_api.g_varchar2_table(6) := '022E10A70F08B52C590DA63828021E0A6039A7329509A637166013A71A6041346004A724AB60093BEC601CA74E230604E0612B023E2C950C30335502D1136111966452682B49A20BC2247CC864459801451F6C49605069043A5B5D02540063CDD40F9260';
wwv_flow_api.g_varchar2_table(7) := '0C74C007E214001303848011718A40C26006C15438E5004C1502026C7433A501C4C202095A86812200889823FD9A351BC744D08303601468AD85E0C4810C83882C0043616C181D5F2B1674805403EC05244B894A31F6C293181514287D298101C310139A';
wwv_flow_api.g_varchar2_table(8) := '66A0F52B0881088189020C0811C35320003B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4423211241510563763)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'gritter-close-ie6.gif'
,p_mime_type=>'image/gif'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000025A000002120806000000145061EB0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000183D4944415478DAECDD7B8C5D0581C7F133AF4E67987684694BB714';
wwv_flow_api.g_varchar2_table(2) := 'DA459E5254AC145808859414226E501A5C8998106ADA7F208A42220A289810374165FFD1440DB0A624B09180A96697260A5530F268BA509A4583427994472D954E3B9D5767F69CE9BDC36D295DD7DD9F4E3B9F4F723233771E4DCE1F27DFFEEE993B4DC5';
wwv_flow_api.g_varchar2_table(3) := '8135D58EE2BCF3CE6BEEEDED6DEAEFEF6F1A1818685AB972656B676767D377BFFBDDC1EAF353A74E1D9D366DDAE8238F3C3252FBDED1DAB15FA3A3A30500C0A1ACF50081D55C3B5A4E3CF1C4B6934E3AA9A37CDB598656EBE6CD9B475B5A5A0E6F6D6D6D';
wwv_flow_api.g_varchar2_table(4) := '29636BF382050B8A79F3E68D6EDAB46960E3C68DBBB66CD9325C7EDFEEF218A91DAA0A00105AB5C86AA98E993367B69D76DA699D175F7CF1AC534F3DF598F258DCDDDD7D6E5B5BDB99F52F5EB16245313C3CFC9FBDBDBD4FAE5FBF7EF5DB6FBFFDCC134F';
wwv_flow_api.g_varchar2_table(5) := '3CD13B3030305806D7502DB8768B2D0060B269DAE7E3FA8AD5367FFEFCF6D34F3F7DFA45175D74CCA73EF5A96BBBBABA2E6DFCC237DE7863A4BFBFBF5AB29A1B1FDFBE7DFB7D8B162DBAA1B3B373E0C5175FDCB96DDBB6EAA9C52AB8EAEBD6184F1D0200';
wwv_flow_api.g_varchar2_table(6) := '87BAE67DA2ABFA78CADCB9733BCE39E79C19575C71C587AFBCF2CA5555640D0D0D8D7EFFFBDF1FBAF0C20B77353535ED983D7B765F19637DD5FB6558F57DFBDBDF1E2AC36B74FAF4E9FFB461C386076EBFFDF6C5C71E7B6C77696AF5336B3FBBC9290700';
wwv_flow_api.g_varchar2_table(7) := '268BA686B7D5D3856D6528759C75D659472C5FBEFCD4CB2EBBECDE2A92D6AC59B37BC58A15FD9B366D3AE00C75D2492735AF5AB5AA7DE1C285D5CF2ACAEFBBE2F39FFFFC63AFBDF6DADBA5FE62CFB235F634A2450B0038D43537BCADE268CAFCF9F3BB97';
wwv_flow_api.g_varchar2_table(8) := '2C5972DCA5975E7A47F5F1DD77DF3DF4B18F7D6CD7FF145995E79E7B6EE48C33CED875DB6DB78DFD26E2D2A54B5795A175DA61871DD655EC59B55A0ACB1600308942ABFE9461DB8C19330E3BE79C738EFADCE73E77754B4BCB31D59255BE3FB07BF7EE3F';
wwv_flow_api.g_varchar2_table(9) := 'FB07565FFBD5AF7E75F07BDFFB5EB55E15575C71C5F59B376F9E56BEDB51FD1B420B00986CA1D5327DFAF4291FF8C007BA172D5A74FCE1871F7E715F5FDFC8F2E5CBFB1B23EB231FF948F3D9679FDDB2EF0F99356B5653F9B56D9D9D9DE38F7DE10B5F18';
wwv_flow_api.g_varchar2_table(10) := '28036BB8ABABEBACB56BD75E3677EEDC2AB6EAAB96D00200264568555A868787A71E79E4913D8B172F3EAF7AE0CE3BEFDCFDCA2BAF8C3F5DB860C182E675EBD6753EFAE8A31DB7DC72CB94FAE3C71E7B6CF3FAF5EB3B7FF8C31FB67FE73BDF69AF3F3E38';
wwv_flow_api.g_varchar2_table(11) := '3858945F375669A79C72CA79E5CFAA16ADEAF3AD420B00982CA155454F6B5B5BDBD49D3B777695B1F5A1EA13F7DC73CF70E317F6F6F68EEEDAB56BECFD9B6FBE794A155BC71F7F7CF3AF7EF5AB8E3973E68C85D3F6EDDBF7BA8FEBFEFBEF1FAE16B19E9E';
wwv_flow_api.g_varchar2_table(12) := '9EF3DE572A1F9A5A0BAD66A71E009834A13575EAD4CE32B68EE8E8E8F850195523BFF9CD6FF6BA31ABBA19FEB2CB2EDBD5185BEBD6AD1B8FAC071E7860F8CB5FFEF260E3F76CDDBA7574E3C68D638FAD5CB9F243D3A64D6B175A00C0A40AADAEAEAE9619';
wwv_flow_api.g_varchar2_table(13) := '336674CC9C397346F5E0EBAFBFBEDFDF30FCD9CF7EB6BB8AAD818181B18FCB701A8FACF2F1FEFDDD345F06DAD8DBF9F3E7CF1D1919A942CB3D5A00C0A409ADA20CA096A6A6A6B63294AAA7F68AA1A1A1F7FC86DFFFFEF7A33B76ECD82BC49E7DF6D991F7';
wwv_flow_api.g_varchar2_table(14) := 'FACDC4FAE35564EDDCB9B3A578E7251E00000EFDD0EAEBEB6B7AF3CD378BE79F7F7EEC79C1D9B367EFF78BAB17247DE491473A7A7A7A9A1A23EAA69B6E9AD278837CA33973E68CFDD99D175F7CB1B7A3A3C38DF000C0E40AADCAB66DDBAADF32EC1B1A1A';
wwv_flow_api.g_varchar2_table(15) := 'DA72C41147B4CC9D3B77AF20EAEEEE6EAA22EBC8238F1C7FBAF0939FFCE45EF76C5D7DF5D56D8DDFD3D2D252C5D9D81FAE7EE8A187360F0F0F3BE300C0A40BADEAA9C091CECECEE1975F7EF9B9EA8165CB96B5367EE1C9279FDCDC1859D53D59AB57AFDE';
wwv_flow_api.g_varchar2_table(16) := 'DD7883FCB9E79EBBD76B6C2D59B2A47A7DAED637DE78E3D9679E79E64F65C4EDAEFD5B00009326B4AA002A3B68A8FF273FF9C9EFAA076EB8E18696C61720AD7E0B71E5CA9503D75C73CD40E38DEFD50DF28B172FEEBBF5D65B07BFF8C52F0E34FEF01B6F';
wwv_flow_api.g_varchar2_table(17) := 'BC712CAA9E7CF2C917CB37D5E7866BFFD688530F001CEAC65EDAA13CBACB63567B7BFBDFCF9C3973C1E38F3F7EF99C39733E7CFBEDB70F5E7FFDF5837FC90FBEF2CA2B5BEFBAEBAEA93B76EC786DFEFCF9FFB275EBD6A7CB87AB5F41DC521E3B464747FB';
wwv_flow_api.g_varchar2_table(18) := '9D7E00E050562D5AD5EA542D4DD54AD5DBD7D7B7F56B5FFBDA13D527AFBBEEBA295530FD6F7F68F5677A7EF0831F8CDD1CFFA31FFDE8F132B2DE2CDFDD59FD1BB57FCBA205001CF2EAAF6935F6B20B2323236D838383535F79E59596C30E3B6CFBE9A79F';
wwv_flow_api.g_varchar2_table(19) := '7EF2273EF189D6D1D1D162EDDAB57FD65F96FEEC673FDBFAE31FFFB87DCA9429CDBFFEF5AF9F5CB66CD99AF2E157CAA38AADB76BB135F4F5AF7F5D6C01009322B49A6B474B1955ADFDFDFDAD8F3DF6D848195B7F5AB468D189E79F7F7ECBE5975F3EBA65';
wwv_flow_api.g_varchar2_table(20) := 'CB96E6175E7861647FAFB3B574E9D29655AB56355F73CD351DADADAD4D6564AD3FFBECB3FFBDFCD44BE5F17A796C2D8F1DC59E7BB57697A1E5A67800E090D654BC739F56F5AAED5DE551BD3AFC512D2D2DF3BABABA8E2D03EBE41B6FBCF1E4A38E3AEAF8';
wwv_flow_api.g_varchar2_table(21) := 'EA1B060606467EFBDBDF0E3FF5D45363A1F4C10F7EB038E18413C67EBBB0FAF8ADB7DEDA7CD75D77FDEEBAEBAE7BBCFCF00FC59EFBB25E2D8F3F3686561974162D00E0900FAD4A4B2DB6AA57869F5E8BADBF2B636B6E7B7BFBD17D7D7D47DD71C71D277C';
wwv_flow_api.g_varchar2_table(22) := 'FCE31F9FF1FEF7BFFFC4FDFDA0975E7AE90FBFF8C52FB6AE58B162E3D0D050F554E1CBC59EA70C5FAB45D6F6A2E11EADD1EAF948008049105AF5FBB4DA6AB135AD3C8E288F236BC7EC8E8E8E59BB76ED3AA2BBBBFB7D1FFDE847679E79E6998757DFB87E';
wwv_flow_api.g_varchar2_table(23) := 'FDFAB79F7EFAE93FBEFAEAABD553836F157BEEC5AA9E2A7CA376548FF5D622AB7ACE71ECB5B4741600305942AB31B6AADF16AC3F8D58BDEC4315543DB5F07A5FF5786B6B6B47F9B6B57AA5F7F2FDE19191915DE5513D2DF8A75A5855D1B5ADD873F37BFD';
wwv_flow_api.g_varchar2_table(24) := 'E9C2C17A64157B4ACBD907000E698D2FDD30F6EAF0B520AABF5F2D50D5CBBEF7D6E2A98AAFCE32B0DA6B515694EFEFAE85545F2DAA7A6BC7CEDAF70ED67ECE48E155E10180491A5A45430CD5436BB816515534550B551558536ADFD7DCF03DC3B5A01A68';
wwv_flow_api.g_varchar2_table(25) := '38066B8F0F8B2C004068EDD1B86C0DD5A26947F1CE4B40D47F5371DFEFA97FDF48C3FBA30D9F070098F4A155EC1348F5976168FA337FA6A80200384068558E2E8F8BCAE38CF298531EB3FE3FFFE1A6A626671F6854DDE759BDEEDE86F278B83C9EDCEFFF';
wwv_flow_api.g_varchar2_table(26) := 'E4DEFB1769A2D72C80BFE49AB5BFDAA97ECBF0EAF2F8C7E29DFBB000FEDAAA0BD76DC59EFB430F145AAE59C084BD66ED1B5AC795C71DE531DBF9022680EA82F5CDF2F8F97B84D65ED7AC071F7CB0B8F7DE7B8B75EBD615CF3FFFBCB307C4747777170B17';
wwv_flow_api.g_varchar2_table(27) := '2E2C2EBDF4D2E2D39FFE74D1D3D3B3DF6B5663685553FBBFD6FE77083091DC521EABF709ADF16BD62F7FF9CBE24B5FFA52F1D4534F3953C05FDD31C71C53DC79E79DC592254BDE75CDAACFECD5DB7F1659C004F595F238A1E1E3F16BD69A356B8AC58B17';
wwv_flow_api.g_varchar2_table(28) := '8B2CE06FE6A5975E2A2EB8E082E21BDFF8C6BBAE59F5D0AAEE6D38D9A90226A8EACF835DDDF0F1D835EBD9679F1D9BED0126829B6FBEB9B8FFFEFBF7BA66D543EB72A70798E0FEA1E13F8463D7ACBBEFBEBBD8B973A733034C18575D7555F1EAABAF8E5F';
wwv_flow_api.g_varchar2_table(29) := 'B3AAD0AA7E25FA38A70638089C5FBF66BDFCF2CBC5B7BEF52D67049850B66FDF5EFCFCE7E3F7C29F5F85D6294E0B709038A97ECDDAB06183B3014C480F3DF4D0F835AB0AAD1EA7043848CCAA5FB3DE7CF34D67039890366DDA347ECDAA42ABCD29010E22';
wwv_flow_api.g_varchar2_table(30) := '63D7AC818101670298F0BC8A327050F267BC00A105107280BF790820B400FE2F2C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(31) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(32) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(33) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(34) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(35) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(36) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(37) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(38) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(39) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(40) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(41) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(42) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(43) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(44) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(45) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(46) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(47) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(48) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(49) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(50) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(51) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(52) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(53) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(54) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(55) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(56) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(57) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(58) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(59) := '108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80108B1620B400422C5A80D00208B16801420B20C4A205082D80';
wwv_flow_api.g_varchar2_table(60) := '108B1620B400422C5A80D00208B16801420B20C4A2051C2CA1F5B0D3001C241EAD5FB32EBCF04267039890962F5F3E7ECDAA426B53793CEFB400078187EBD7AC79F3E615D75E7BAD33024C28EDEDEDC505175C307ECDAA3F75F86F4E0D30C13D5E1E1B1B';
wwv_flow_api.g_varchar2_table(61) := 'AF59575D75553165CA1467069830EEB9E79EE2E8A38F1EBF66D543EBC1F2F82FA70798A086CAE35F1A3E1EBB662D58B0A058BD7AB5B3034C0837DD7453B16CD9B2BDAE59F5D01A298FAF94C736A7099880BE591EBF6BF878FC9AB574E9D262EDDAB5C5C2';
wwv_flow_api.g_varchar2_table(62) := '850B9D25E06F62EEDCB9C59A356B8A5B6FBDF55DD7AC7D7F6DE7B8F2B8A33C663B6DC004B0A376C1FA8FFA03FBBCACC3F8356B6868A8F8E94F7F5ADC77DF7DC5134F3C51BCF0C20BCE1E10D3D9D9599C79E699C525975C527CE6339F297A7A7AF67BCDDA';
wwv_flow_api.g_varchar2_table(63) := 'DFEF471F5E1E5797C7254E23F037F470ED82B5B5F1C1FDBC7E966B163061AF59077A219AEA4EAE8BCAE38CDAFB3DCE211034501E7F288F0DE5B1B6D87323E9BB1CE0854A5DB3800977CDFA6F01060077AEF42CD62CA82D0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4423212034825566751)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'gritter-long.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000025A000001360806000000B9853C560000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000012B24944415478DAECDD7D8C55F59DC7F13373E799815186A7C55158';
wwv_flow_api.g_varchar2_table(2) := 'EA03546C6BA98AAB111A0C986AA342D09ADAAC918DA4894DABB5896EC556D298FEA1AD4DAC7FA851D768A29B1A75699385A42AEA6A4509AB404A0D6DA13C28285299618679BC7B7EC3BDE305D1ADBBF9D68179BD9213980B3326E78F93B79F7BEEA12AFB';
wwv_flow_api.g_varchar2_table(3) := '6455A5239B3B776E757B7B7BD5810307AABABBBBAB962E5D5AD3D4D45475EFBDF7F6A43F6F6868288E1E3DBAF8FCF3CF0F94BEB7583A8EA8582C660000C7B29A4F08ACEAD25138EDB4D36AA74F9FDE98FFDA948756CDCE9D3B8B8542E1F89A9A9A421E5B';
wwv_flow_api.g_varchar2_table(4) := '3B67CE9C994D9932A5B875EBD6EE8D1B3776BDFBEEBB7DF9F7F5E7C740E9505500C08853F531AF15D2317EFCF8DA33CF3CB3E9E28B2F9E70C619679C941F735A5A5A2EA8ADAD9D5DF90D7D7D7DFFDDDEDEFEDABA75EB56FCF297BF7C73CD9A35EDDDDDDD';
wwv_flow_api.g_varchar2_table(5) := '3D7970F59682ABFFF0D8B2680100232DB4CA2B56EDD4A953EBCF3AEBAC31175D74D149575C71C50DCDCDCD0B2BFFE2AE5DBB060E1C389096ACEACAD7F7EDDBF7C4D9679F7D4B535353F7962D5BF6EFDDBB37BDB59882ABBC6E092D006044A83E2CBAD2D7';
wwv_flow_api.g_varchar2_table(6) := '756D6D6D8DE79F7FFEB8ABAFBEFA4BD75C73CDA329B27A7B7B8BF7DD775FEF82050BBAAAAAAA3A264D9AD499C75867FA7D1E569D3FFBD9CF7AF3F02A8E1933E6CAF5EBD73F75E79D77CE99366D5A4BAE21FDCCD2CFAE72CA018091A2AAE2D7F476616D1E';
wwv_flow_api.g_varchar2_table(7) := '4A8DE79E7BEED8254B969CB178F1E2C75324AD5AB5AAFFBAEBAE3BB075EBD64F9CA1A64F9F5EFDE8A38FD6CF9A352BFDAC2CFFBEABBFFBDDEFFED7DB6FBFFD41EE407670D91A7C1BD1A205001CEBAA2B7E4D71543775EAD49679F3E69DBC70E1C2BBD3D7';
wwv_flow_api.g_varchar2_table(8) := '0F3FFC70EFD7BEF6B5AEFF2DB2924D9B360D9C73CE395D77DC71C7E02711E7CF9FFF681E5A678E1A35AA393BB86A1532CB16003042941FDF903E7D583F6EDCB831575C71C5B49FFCE427371F7FFCF117A7252B45567F7FFFA7FEC1F7DE7B6FFDB7BFFDED';
wwv_flow_api.g_varchar2_table(9) := 'DA8E8E8E57468F1EFD2FF94BEFE747477E74E7477FB1581C70FA01806359795D2A8C1933A6EEF39FFF7CCBD9679F7D4A8AACCECECE81254B961CA88CAC2F7FF9CBD5E79D775EE1F01F3261C284AAFCEFD63635350DBDF6BDEF7DAF7BE7CE9D7DCDCDCDE7';
wwv_flow_api.g_varchar2_table(10) := 'AE5EBD7A715B5BDBE8ECC355CBA205008C88D04A0A7D7D7D0D13274E6C9D3367CEDCF4C2830F3ED8BF7DFBF6A1B70B67CE9C59BD76EDDAA6975E7AA9F1F6DB6FAF2BBF3E6DDAB4EA75EBD6353DF0C003F53FFFF9CFEBCBAFF7F4F464F9DF1BACB4D34F3F';
wwv_flow_api.g_varchar2_table(11) := '7D6EFEB31AF3DFA63FAF115A00C04809ADC1B70E6B6B6B1BF6EFDFDF9CC7D617D31F3CF6D8637D957FB1BDBDBDD8D5D535F8FBDB6EBBAD2EC5D629A79C52FDE28B2F364E9E3C79309CF6EDDB77C87D5C4F3EF9645F5AC45A5B5BE71E97CB5F6A288556B5';
wwv_flow_api.g_varchar2_table(12) := '530F008C98D06A686868CA636B6C6363E317F3A81AF8DDEF7E77C88D59E966F8C58B177755C6D6DAB56B8722EBA9A79EEABBF9E69B7B2ABF67CF9E3DC58D1B370EBEB674E9D22F8E1E3DBA5E680100232AB49A9B9B0BE3C68D6B1C3F7EFCB8F4E23BEFBC';
wwv_flow_api.g_varchar2_table(13) := '73C44F18FEE637BFE94FB1D5DDDD3DF8751E4E439195BF7EE04837CDE78136F8EBD4A953DB0606065268B9470B001831A195E50154A8AAAAAACD4329BDB597F5F6F67EEC37FCF18F7F2C7674741C12621B366C18F8B84F26965F4F91B57FFFFE42F6E123';
wwv_flow_api.g_varchar2_table(14) := '1E00008EFDD0EAECECACDABD7B77B679F3E6C1F705274D9A74C4BF9C1E48FAFCF3CF37B6B6B6565546D4B265CBEA2A6F90AF3479F2E4C1C7386CD9B2A5BDB1B1D18DF000C0C80AAD64EFDEBDE953869DBDBDBDEF8E1D3BB6D0D6D6764810B5B4B454A5C8';
wwv_flow_api.g_varchar2_table(15) := '9A3871E2D0DB85975F7EF921F76C5D7FFDF5B595DF532814529CA5B8CA56AE5CB9B3AFAFCF190700465C68A5B702079A9A9AFAB66DDBB629BDB068D1A29ACABF3863C68CEACAC84AF764AD58B1A2BFF206F90B2EB8E090676CCD9B372F3D9FAB66D7AE5D';
wwv_flow_api.g_varchar2_table(16) := '1BDE7CF3CDBFE611D75FFA6F01008C98D04A01947750EF81679E79E6ADF4C22DB7DC52A87C0069FA14E2D2A54BBBBFF39DEF7457DEF89E6E909F33674EE7F2E5CB7B6EBCF1C6EECA1F7EEBADB70E46D56BAFBDB6253BF844F8BED27FCB53E10180635EF9';
wwv_flow_api.g_varchar2_table(17) := '9FDF69C98F09F5F5F5FF387EFCF899AFBEFAEA5593274FFED29D77DED9F3831FFCA0E7FFF283AFB9E69A9A871E7AA8A1A3A3E3EDA953A7FE62CF9E3D6FE42FA78F20BE9B1F1DC562F180D30F001CCBD2A29556A7B434A595AABDB3B373CF8F7EF4A335E9';
wwv_flow_api.g_varchar2_table(18) := '0F6FBAE9A6BA144C9FF687A67FA6E7FEFBEF1FBC39FE91471E79358FACDDF96FF7A7FF46E9BF65D102008E79E5675A0D3E76616060A0B6A7A7A761FBF6ED8551A346ED3BEBACB3665C76D96535C562315BBD7AF5DFF42F4B7FEB5BDFAAF9D5AF7E555F57';
wwv_flow_api.g_varchar2_table(19) := '5757FDF2CB2FBFB668D1A255F9CBDBF323C5D607A5D8EAFDF18F7F2CB60080635AE53D5AE91EAA8EFEFEFE3DEFBDF7DEDB3FFCE10F7F7FCF3DF7FC47FAC3F4E8864D9B36D55E79E5953595F76D559A3F7F7EE195575E293CF2C8230DF5F5F529B2D69D77';
wwv_flow_api.g_varchar2_table(20) := 'DE792BF33F7A273FF6A69F9D7D789F961BE20180635E55F6E17D5AE9A9EDCDF9919E0E7F42A15098D2DCDC3CEDAAABAE9A71EBADB7CE38E184134E49DFD0DDDD3DF0873FFCA1EFF5D75F1F8CA52F7CE10BD9A9A79E3AF8E9C2F4F5FBEFBFBFF3A1871E7A';
wwv_flow_api.g_varchar2_table(21) := 'EBA69B6E7A35FFF24FD9C1FBB276E4C77B15B1D55F2C162D5A00C0311F5A49A1145BE9C9F0634AB1F50F796CB5D5D7D79FD8D9D979C2DD77DF7DEA25975C32EE739FFBDC6947FA417FF9CB5FFEF4ECB3CFEEB9EEBAEB36F6F6F6A6B70AB76507DF327CBB';
wwv_flow_api.g_varchar2_table(22) := '1459FBB28A7BB48AE9FD48008011105AE5FBB46A4BB1353A3FC6E6C7C4D231A9B1B171425757D7D8969696E3BEF295AF8C9F3D7BF6F1E91BD7AD5BF7C11B6FBCF1DE8E1D3BF6E45FBE9F1DBC172BBD5DB8AB74A4D7DA4B9195FE6D9FC16769E92C0060A4';
wwv_flow_api.g_varchar2_table(23) := '8456656CA54F0B96DF464C8F7D4841D55A0AAFE3D2EB3535358DF9AF35E949EFF9EFFB060606BAF223BD2DF8D75258A5E84AF765A59BDFCB6F17F694232B3B585ACE3E003062422BA92E1DB5A5E04A41352A3BB8708D2EC5575329C4CA4F812FDF48DF59';
wwv_flow_api.g_varchar2_table(24) := '8AAAF6D2911EE7D0550AACB4640D64158F75105A00C0480BADF26B29B66A4A4779E12A1F75A5D7CB9F584CF1D4570AAAEE8AA3A7F47AF9B959879495D0020046626855BE5E8EAEF2AFE5DF1FFE7DC5D2315011559571F591AA125A00C0480DADFFCFDFFD';
wwv_flow_api.g_varchar2_table(25) := '9B0A4A6801002339B44ECC8F8BF2E39CFC989C1F139C2E2050BACF333D776F7D7E3C971FAF7DCAFF4973CD0286DD35EB48A1953E65787D7E7C3DFBF03E2C80BFB774E1BA233BF809E64F0A2DD72C60D85EB30E0FAD93F3E3EEFC98E47C01C340BA60FD34';
wwv_flow_api.g_varchar2_table(26) := '3F7EFB31A175C835EBE9A79FCE1E7FFCF16CEDDAB5D9E6CD9B9D3D204C4B4B4B366BD6AC6CE1C285D937BEF18DACB5B5F588D7ACCAD04A53FBBF95FEEF106038B93D3F561C165A43D7AC175E7821FBFEF7BF9FBDFEFAEBCE14F07777D24927650F3EF860';
wwv_flow_api.g_varchar2_table(27) := '366FDEBC8F5CB3CAA1555DBA60CD70BA8061283D8BEF9FF3E3AD52680D5DB356AD5A952D58B0C019023E73CB972FCF962D5B76C835AB7C3FC3D74516308CA587285F5FF1F5E0356BC3860D83B33DC07070DB6DB7654F3EF9E421D7AC72685DE5F400C3DC';
wwv_flow_api.g_varchar2_table(28) := '3F55FC0FE1E035EBE1871FCEF6EFDFEFCC00C3C6B5D75E9BEDD8B163E89A95422B7D24FA64A706380A7CB57CCDDAB66D5B76D75D773923C0B0B26FDFBEECB7BF1DBA17FEAB29B44E775A80A3C4F4F2356BFDFAF5CE06302CAD5CB972E89A9542ABD52901';
wwv_flow_api.g_varchar2_table(29) := '8E1213CAD7ACDDBB773B1BC0B0B475EBD6A16B560AAD5AA704388A0C5EB3BABBBB9D0960D8F31465E0A8545555E52400420B20827F981E105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801';
wwv_flow_api.g_varchar2_table(30) := '420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B1';
wwv_flow_api.g_varchar2_table(31) := '6801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D406801';
wwv_flow_api.g_varchar2_table(32) := '04B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40';
wwv_flow_api.g_varchar2_table(33) := '680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D802016';
wwv_flow_api.g_varchar2_table(34) := '2D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D80';
wwv_flow_api.g_varchar2_table(35) := '20162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A20508';
wwv_flow_api.g_varchar2_table(36) := '2D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A2';
wwv_flow_api.g_varchar2_table(37) := '05082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510';
wwv_flow_api.g_varchar2_table(38) := 'C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A1';
wwv_flow_api.g_varchar2_table(39) := '0510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B4';
wwv_flow_api.g_varchar2_table(40) := '00A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B40082';
wwv_flow_api.g_varchar2_table(41) := '58B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4';
wwv_flow_api.g_varchar2_table(42) := '008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B16';
wwv_flow_api.g_varchar2_table(43) := '20B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D10284164010';
wwv_flow_api.g_varchar2_table(44) := '8B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D1028416';
wwv_flow_api.g_varchar2_table(45) := '40108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102841640108B1620B4008258B400A10510C4A205082D8020162D40680104B16801420B2088450B105A00412C5A80D0020862D102';
wwv_flow_api.g_varchar2_table(46) := '841640108B1670B484D6734E03709478A97CCD5AB06081B3010C4B4B962C19BA66A5D0DA9A1F9B9D16E028F05CF99A3565CA94EC861B6E70468061A5BEBE3EBBF0C20B87AE59E5B70EFFDDA90186B957F36363E535EBDA6BAFCDEAEAEA9C1960D878ECB1';
wwv_flow_api.g_varchar2_table(47) := 'C7B2134F3C71E89A550EADA7F3E3F74E0F304CF5E6C72F2ABE1EBC66CD9C39335BB16285B3030C0BCB962DCB162D5A74C835AB1C5A03F9F1AFF9B1D7690286A19FE6C75B155F0F5DB3E6CF9F9FAD5EBD3A9B356B96B3047C26DADADAB255AB5665CB972F';
wwv_flow_api.g_varchar2_table(48) := 'FFC835EBF08FED9C9C1F77E7C724A70D18063A4A17ACFF2CBF70D8631D86AE59BDBDBDD9AF7FFDEBEC89279EC8D6AC5993FDF9CF7F76F680304D4D4DD9ECD9B3B34B2FBD34FBE637BF99B5B6B61EF19A75A4CF471F9F1FD7E7C7A54E23F0197AAE74C1DA';
wwv_flow_api.g_varchar2_table(49) := '53F9E2119E9FE59A050CDB6BD6273D8826DDC975517E9C53FA7DAB730804EACE8F3FE5C7FAFC589D1DBC91F4233EE141A5AE59C0B0BB66FD8F000300CED29779978A694F0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(4423212831590568332)
,p_plugin_id=>wwv_flow_api.id(4423206111359457813)
,p_file_name=>'gritter.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(1481518689667451977)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(1481426746029450149)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(1481510689358451501)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(1481518572685451977)
,p_nav_bar_list_template_id=>wwv_flow_api.id(1481510619297451464)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303192819'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(871126608437075318)
,p_plug_name=>'Feature Added'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1481491971209450808)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'The feature implemented was adding notifications to form regions.',
'1. We imported the Notification Plug-in from: ',
'    http://www.oracle.com/technetwork/developer-tools/apex/application-express/apex-plug-ins-182042.html#region',
'2. Then we modified the apex.jquery.gritter.css file so the notification was visible. (We had to change the background color from white to black).',
'3. We added a dynamic action on each region so a notification would appear once the modal form page had closed',
'4. The notification told you that the region had been modified.'))
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1481519519233451979)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'People'
,p_page_mode=>'NORMAL'
,p_step_title=>'People'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150223231501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1481878115669519556)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1481937589383509625)
,p_plug_name=>'People'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p.PERSON_ID,',
'       p.TYPE,',
'       p.NAME,',
'       d.name "DEPARTMENT NAME",',
'       p.SSNUM,',
'       p.GENDER,',
'       p.BIRTH_DATE,',
'       p.ADDRESS,',
'       p.CITY,',
'       p.STATE,',
'       p.ZIP,',
'       p.HIRE_DATE,',
'       p.SALARY,',
'       p.STATUS,',
'       p.TITLE,',
'       p.RATING,',
'       p.BONUS,',
'       p.SIM_DEPT_DEPT_ID,',
'       p.SIM_DEPT_DEPT_ID1,',
'       p.CREATED,',
'       p.CREATED_BY,',
'       p.ROW_VERSION_NUMBER,',
'       p.UPDATED,',
'       p.UPDATED_BY',
'  from SIM_PERSON p left outer join sim_dept d on(p.SIM_DEPT_DEPT_ID = d.dept_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1481937753043509625)
,p_name=>'People'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611174286914926691
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481937992477509626)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Person Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481938462292509627)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481938774513509627)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481939208476509628)
,p_db_column_name=>'SSNUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ssnum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481939577964509628)
,p_db_column_name=>'GENDER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481939969330509628)
,p_db_column_name=>'BIRTH_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Birth Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481940398105509628)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481940836210509629)
,p_db_column_name=>'CITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481941212701509629)
,p_db_column_name=>'STATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481941573518509629)
,p_db_column_name=>'ZIP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Zip'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481942006036509630)
,p_db_column_name=>'HIRE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481942460498509630)
,p_db_column_name=>'SALARY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481942807301509630)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481943208520509630)
,p_db_column_name=>'TITLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481943626189509631)
,p_db_column_name=>'RATING'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Rating'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481944018466509631)
,p_db_column_name=>'BONUS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481944460839509631)
,p_db_column_name=>'SIM_DEPT_DEPT_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Sim Dept Dept Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481944861387509632)
,p_db_column_name=>'SIM_DEPT_DEPT_ID1'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Sim Dept Dept Id1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481945222751509632)
,p_db_column_name=>'CREATED'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481945649157509632)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481945980902509633)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481946463301509633)
,p_db_column_name=>'UPDATED'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1481946810403509633)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1483140356181712112)
,p_db_column_name=>'DEPARTMENT NAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1481947229532509835)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6111838'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TYPE:NAME:DEPARTMENT NAME:SSNUM:GENDER:BIRTH_DATE:ADDRESS:CITY:STATE:ZIP:HIRE_DATE:SALARY:STATUS:TITLE:RATING:BONUS:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY:'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Project Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303191613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482010136493517089)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482104291498527042)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p."PERSON_ID", ',
'p."TYPE",',
'p."NAME",',
'p."SSNUM",',
'p."GENDER",',
'p."BIRTH_DATE",',
'p."ADDRESS",',
'p."CITY",',
'p."STATE",',
'p."ZIP",',
'p."HIRE_DATE",',
'p."SALARY",',
'p."STATUS",',
'p."TITLE",',
'p."RATING",',
'p."SIM_DEPT_DEPT_ID", ',
'd.name "Department Name"',
'from "#OWNER#"."SIM_PROJECT_PERSON" p join sim_dept d on(p.SIM_DEPT_DEPT_ID = d.dept_id)',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1482104696343527042)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::::P6_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611341230214944108
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482104828949527043)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Person Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482105218257527044)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482105581859527044)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482106059723527045)
,p_db_column_name=>'SSNUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ssnum'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482106277147527045)
,p_db_column_name=>'GENDER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482106748452527046)
,p_db_column_name=>'BIRTH_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Birth Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482107105719527046)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482107493969527047)
,p_db_column_name=>'CITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482107894537527047)
,p_db_column_name=>'STATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482108301631527047)
,p_db_column_name=>'ZIP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Zip'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482108727187527048)
,p_db_column_name=>'HIRE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482109099373527048)
,p_db_column_name=>'SALARY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482109552725527049)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482109879431527049)
,p_db_column_name=>'TITLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482110342812527049)
,p_db_column_name=>'RATING'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Rating'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482110733631527050)
,p_db_column_name=>'SIM_DEPT_DEPT_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Sim Dept Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1483327181838735069)
,p_db_column_name=>'Department Name'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1482126850200527327)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6113634'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'TYPE:NAME:Department Name:SSNUM:GENDER:BIRTH_DATE:ADDRESS:CITY:STATE:ZIP:HIRE_DATE:SALARY:STATUS:TITLE:RATING:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482112052616527051)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482104291498527042)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482111070544527050)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482104291498527042)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482111600371527051)
,p_event_id=>wwv_flow_api.id(1482111070544527050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482104291498527042)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482112396203527051)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482112052616527051)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482112925424527052)
,p_event_id=>wwv_flow_api.id(1482112396203527051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482104291498527042)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(871048256828015676)
,p_name=>'notification'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482104291498527042)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(871048643093015677)
,p_event_id=>wwv_flow_api.id(871048256828015676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.GRITTER_NOTIFICATION'
,p_attribute_01=>'Notification'
,p_attribute_02=>'Project Employees table has been updated.'
,p_attribute_04=>'N'
,p_attribute_05=>'3'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Form on SIM_PROJECT_PERSON'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on SIM_PROJECT_PERSON'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150222004833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482088376935527021)
,p_plug_name=>'Form on SIM_PROJECT_PERSON'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484366221450514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482089129026527021)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484533201450550)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1561110971476833514)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_button_name=>'P6_CREATE_DEPT'
,p_button_static_id=>'P6_CREATE_DEPT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Department'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482089565635527022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1482089129026527021)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482089023818527021)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1482089129026527021)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482088903211527021)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482089129026527021)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P6_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482088772413527021)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482089129026527021)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P6_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482092230722527030)
,p_name=>'P6_PERSON_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Person Id'
,p_source=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482092627311527030)
,p_name=>'P6_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482093039945527031)
,p_name=>'P6_SSNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ssnum'
,p_source=>'SSNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482093424833527031)
,p_name=>'P6_GENDER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482093776506527032)
,p_name=>'P6_BIRTH_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Date'
,p_source=>'BIRTH_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482094250525527032)
,p_name=>'P6_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482094606453527032)
,p_name=>'P6_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482095016110527033)
,p_name=>'P6_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482095396528527033)
,p_name=>'P6_ZIP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482095809494527033)
,p_name=>'P6_HIRE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire Date'
,p_source=>'HIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482096172736527034)
,p_name=>'P6_SALARY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482096622911527034)
,p_name=>'P6_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482097065583527034)
,p_name=>'P6_TITLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482097376030527035)
,p_name=>'P6_RATING'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rating'
,p_source=>'RATING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482097849501527035)
,p_name=>'P6_SIM_DEPT_DEPT_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1482088376935527021)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Name'
,p_source=>'SIM_DEPT_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       dept_id as r',
'  from sim_dept',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482089662140527022)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482089565635527022)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482090399125527022)
,p_event_id=>wwv_flow_api.id(1482089662140527022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482102790009527040)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SIM_PROJECT_PERSON'
,p_attribute_02=>'SIM_PROJECT_PERSON'
,p_attribute_03=>'P6_PERSON_ID'
,p_attribute_04=>'PERSON_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482103174533527040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SIM_PROJECT_PERSON'
,p_attribute_02=>'SIM_PROJECT_PERSON'
,p_attribute_03=>'P6_PERSON_ID'
,p_attribute_04=>'PERSON_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482103617231527041)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1482089023818527021)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482104013130527041)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Managers'
,p_page_mode=>'NORMAL'
,p_step_title=>'Managers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303191715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482162546179534556)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482283807810559194)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PERSON_ID", ',
'"TYPE",',
'"NAME",',
'"SSNUM",',
'"GENDER",',
'"BIRTH_DATE",',
'"ADDRESS",',
'"CITY",',
'"STATE",',
'"ZIP",',
'"HIRE_DATE",',
'"SALARY",',
'"STATUS",',
'"TITLE",',
'"BONUS",',
'"SIM_DEPT_DEPT_ID1"',
'from "#OWNER#"."SIM_MANAGER" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1482284174322559194)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:8:&APP_SESSION.::::P8_PERSON_ID:#PERSON_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611520708193976260
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482284269911559195)
,p_db_column_name=>'PERSON_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Person Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482284685546559196)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482285134150559196)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482285473497559196)
,p_db_column_name=>'SSNUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ssnum'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482285876544559197)
,p_db_column_name=>'GENDER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482286298082559197)
,p_db_column_name=>'BIRTH_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Birth Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482286742955559198)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482287164893559198)
,p_db_column_name=>'CITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482287494116559198)
,p_db_column_name=>'STATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482287927285559199)
,p_db_column_name=>'ZIP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Zip'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482288350640559199)
,p_db_column_name=>'HIRE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482288679630559199)
,p_db_column_name=>'SALARY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482289020774559200)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482289408328559200)
,p_db_column_name=>'TITLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482289829299559201)
,p_db_column_name=>'BONUS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482290201558559201)
,p_db_column_name=>'SIM_DEPT_DEPT_ID1'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Sim Dept Dept Id1'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1482292915606559399)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6115295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'TYPE:NAME:SSNUM:GENDER:BIRTH_DATE:ADDRESS:CITY:STATE:ZIP:HIRE_DATE:SALARY:STATUS:TITLE:BONUS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482291484551559203)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482283807810559194)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482290625929559202)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482283807810559194)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482291076775559202)
,p_event_id=>wwv_flow_api.id(1482290625929559202)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482283807810559194)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482291938357559203)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482291484551559203)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482292391664559203)
,p_event_id=>wwv_flow_api.id(1482291938357559203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482283807810559194)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(871051262540021862)
,p_name=>'notification'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482283807810559194)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(871051606312021862)
,p_event_id=>wwv_flow_api.id(871051262540021862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.GRITTER_NOTIFICATION'
,p_attribute_01=>'Notification'
,p_attribute_02=>'Managers form has been updated.'
,p_attribute_04=>'N'
,p_attribute_05=>'3'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Form on SIM_Manager'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on SIM_Manager'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150218180448'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482238204609559175)
,p_plug_name=>'Form on SIM_MANAGER'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484366221450514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482238907879559175)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484533201450550)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482239352750559175)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1482238907879559175)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482238860069559175)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1482238907879559175)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482238761275559175)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482238907879559175)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482238572355559175)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482238907879559175)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_PERSON_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482241675912559183)
,p_name=>'P8_PERSON_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Person Id'
,p_source=>'PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482242160572559184)
,p_name=>'P8_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482242494765559184)
,p_name=>'P8_SSNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ssnum'
,p_source=>'SSNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482242874243559185)
,p_name=>'P8_GENDER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482243271257559185)
,p_name=>'P8_BIRTH_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Date'
,p_source=>'BIRTH_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482273697863559185)
,p_name=>'P8_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482274098137559186)
,p_name=>'P8_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482274499989559186)
,p_name=>'P8_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482274899426559186)
,p_name=>'P8_ZIP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482275308644559187)
,p_name=>'P8_HIRE_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Hire Date'
,p_source=>'HIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482275750208559187)
,p_name=>'P8_SALARY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482276137507559187)
,p_name=>'P8_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482276511477559187)
,p_name=>'P8_TITLE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482276922314559188)
,p_name=>'P8_BONUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bonus'
,p_source=>'BONUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482277355038559188)
,p_name=>'P8_SIM_DEPT_DEPT_ID1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(1482238204609559175)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sim Dept Dept Id1'
,p_source=>'SIM_DEPT_DEPT_ID1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482239368173559175)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482239352750559175)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482240258689559176)
,p_event_id=>wwv_flow_api.id(1482239368173559175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482282275381559192)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SIM_MANAGER'
,p_attribute_02=>'SIM_MANAGER'
,p_attribute_03=>'P8_PERSON_ID'
,p_attribute_04=>'PERSON_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482282693382559192)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SIM_MANAGER'
,p_attribute_02=>'SIM_MANAGER'
,p_attribute_03=>'P8_PERSON_ID'
,p_attribute_04=>'PERSON_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482283116834559192)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1482238860069559175)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482283483989559193)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Departments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Departments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303191457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482272402901555748)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482355132898573940)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select d."DEPT_ID", ',
'd."NAME",',
'd."LOCATION",',
'd."SIM_PERSON_PERSON_ID",',
'd."CREATED",',
'd."CREATED_BY",',
'd."ROW_VERSION_NUMBER",',
'd."UPDATED",',
'd."UPDATED_BY", ',
'm.name Manager',
'from "#OWNER#"."SIM_DEPT" d left outer join sim_manager m on (d.SIM_PERSON_PERSON_ID = m.person_id)',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1482355544009573941)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&APP_SESSION.::::P10_DEPT_ID:#DEPT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611592077880991007
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482355637202573942)
,p_db_column_name=>'DEPT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482356012623573942)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482356370029573943)
,p_db_column_name=>'LOCATION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482356851864573943)
,p_db_column_name=>'SIM_PERSON_PERSON_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sim Person Person Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482357245900573944)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482357635015573944)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482358032450573944)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482358416320573945)
,p_db_column_name=>'UPDATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482358864337573945)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1483423710301755347)
,p_db_column_name=>'MANAGER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1482362003987574314)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6115986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'NAME:MANAGER:LOCATION:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482360090308573947)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482355132898573940)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482359239479573946)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482355132898573940)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482359704213573946)
,p_event_id=>wwv_flow_api.id(1482359239479573946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482355132898573940)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482360480142573947)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482360090308573947)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482361049272573947)
,p_event_id=>wwv_flow_api.id(1482360480142573947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482355132898573940)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(870857230552737070)
,p_name=>'notification'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482355132898573940)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(870857624574737071)
,p_event_id=>wwv_flow_api.id(870857230552737070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.GRITTER_NOTIFICATION'
,p_attribute_01=>'Notification'
,p_attribute_02=>'Department form has been updated.'
,p_attribute_04=>'N'
,p_attribute_05=>'3'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Form on SIM_DEPT'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on SIM_DEPT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303183021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482346102710573924)
,p_plug_name=>'Form on SIM_DEPT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484366221450514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482346836954573925)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484533201450550)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1607259887013188230)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_button_name=>'P10_CREATE_MANGER'
,p_button_static_id=>'P10_CREATE_MANGER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Manger'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482347166658573925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1482346836954573925)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482346715669573925)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1482346836954573925)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482346656898573925)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482346836954573925)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482346491576573925)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482346836954573925)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_DEPT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482349603196573934)
,p_name=>'P10_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Id'
,p_source=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482349990123573935)
,p_name=>'P10_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482350400449573935)
,p_name=>'P10_LOCATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482350797637573936)
,p_name=>'P10_SIM_PERSON_PERSON_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager Name'
,p_source=>'SIM_PERSON_PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MANAGERS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       person_id as r',
'  from sim_manager',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482351195972573936)
,p_name=>'P10_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482351599304573936)
,p_name=>'P10_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482352042515573937)
,p_name=>'P10_ROW_VERSION_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482352434110573937)
,p_name=>'P10_UPDATED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482352821172573938)
,p_name=>'P10_UPDATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1482346102710573924)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482347268127573925)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482347166658573925)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482348102817573926)
,p_event_id=>wwv_flow_api.id(1482347268127573925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482353638532573938)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SIM_DEPT'
,p_attribute_02=>'SIM_DEPT'
,p_attribute_03=>'P10_DEPT_ID'
,p_attribute_04=>'DEPT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482354034566573939)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SIM_DEPT'
,p_attribute_02=>'SIM_DEPT'
,p_attribute_03=>'P10_DEPT_ID'
,p_attribute_04=>'DEPT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482354417284573939)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1482346715669573925)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482354827327573940)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150218035657'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482373019930587291)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482426168743594346)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select p."PROJECT_ID", ',
'p."NAME",',
'p."SIM_DEPT_DEPT_ID",',
'p."CREATED",',
'p."CREATED_BY",',
'p."ROW_VERSION_NUMBER",',
'p."UPDATED",',
'p."UPDATED_BY",',
'd.name "Department Name"',
'from "#OWNER#"."SIM_PROJECT" p join sim_dept d on(p.SIM_DEPT_DEPT_ID = d.dept_id)',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1482426582134594347)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:12:&APP_SESSION.::::P12_PROJECT_ID:#PROJECT_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611663116006011413
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482426756213594347)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Project Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482427102975594348)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482427527895594348)
,p_db_column_name=>'SIM_DEPT_DEPT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sim Dept Dept Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482427870971594349)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482428317634594349)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482428735167594350)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482429139124594350)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482429551310594351)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1483429301361767949)
,p_db_column_name=>'Department Name'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1482432316091594565)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6116689'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NAME:Department Name:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482430819179594352)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482426168743594346)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482429921634594351)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482426168743594346)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482430446236594351)
,p_event_id=>wwv_flow_api.id(1482429921634594351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482426168743594346)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482431244252594352)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482430819179594352)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482431690569594352)
,p_event_id=>wwv_flow_api.id(1482431244252594352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482426168743594346)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Form on SIM_PROJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on SIM_PROJECT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150222004948'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482399600149594332)
,p_plug_name=>'Form on SIM_PROJECT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484366221450514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482400271131594333)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484533201450550)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1607257983603174074)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482399600149594332)
,p_button_name=>'P12_CREATE_DEPT'
,p_button_static_id=>'P12_CREATE_DEPT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Dept'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482400732752594333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1482400271131594333)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482400250824594333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1482400271131594333)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P12_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482400068444594333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482400271131594333)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P12_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482400058342594333)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482400271131594333)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P12_PROJECT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482403069817594341)
,p_name=>'P12_PROJECT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1482399600149594332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Id'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482403471543594343)
,p_name=>'P12_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1482399600149594332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482423915889594344)
,p_name=>'P12_SIM_DEPT_DEPT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1482399600149594332)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Name'
,p_source=>'SIM_DEPT_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       dept_id as r',
'  from sim_dept',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482400852789594333)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482400732752594333)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482401657133594334)
,p_event_id=>wwv_flow_api.id(1482400852789594333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482424701531594345)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SIM_PROJECT'
,p_attribute_02=>'SIM_PROJECT'
,p_attribute_03=>'P12_PROJECT_ID'
,p_attribute_04=>'PROJECT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482425069746594345)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SIM_PROJECT'
,p_attribute_02=>'SIM_PROJECT'
,p_attribute_03=>'P12_PROJECT_ID'
,p_attribute_04=>'PROJECT_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482425508925594345)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1482400250824594333)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482425965198594346)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Project Assignments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Assignments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ATOOPS@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20150303191833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482473286835604281)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481495277218450879)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(1481519005332451978)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1481514055684451933)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482509865956610240)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481491575066450737)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select pp."PER_PROJ", ',
'pp."SIM_PERSON_PERSON_ID",',
'pp."SIM_PROJECT_PROJECT_ID",',
'pp."CREATED",',
'pp."CREATED_BY",',
'pp."ROW_VERSION_NUMBER",',
'pp."UPDATED",',
'pp."UPDATED_BY",',
'p.name "Project Employee",',
's.name "Project"',
'from "#OWNER#"."SIM_P2P" pp join sim_project_person p on (pp.SIM_PERSON_PERSON_ID = p.person_id) join sim_project s on(pp.SIM_PROJECT_PROJECT_ID = s.project_id)',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1482510196166610240)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::::P14_PER_PROJ:#PER_PROJ#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'PHIL.CANNATA@ORACLE.COM'
,p_internal_uid=>611746730038027306
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482510341181610241)
,p_db_column_name=>'PER_PROJ'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Per Proj'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482510710975610241)
,p_db_column_name=>'SIM_PERSON_PERSON_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sim Person Person Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482511154218610242)
,p_db_column_name=>'SIM_PROJECT_PROJECT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sim Project Project Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482511562728610242)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482511898773610243)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482512320565610243)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482512683817610243)
,p_db_column_name=>'UPDATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1482513113065610244)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1561091427783796669)
,p_db_column_name=>'Project Employee'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Project Employee'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1561091814847796671)
,p_db_column_name=>'Project'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1482516259841610899)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6117528'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'Project Employee:Project:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482514382374610245)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482509865956610240)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482513478213610244)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482509865956610240)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482514014695610244)
,p_event_id=>wwv_flow_api.id(1482513478213610244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482509865956610240)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482514830507610245)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482514382374610245)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482515287242610245)
,p_event_id=>wwv_flow_api.id(1482514830507610245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1482509865956610240)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(870973862727016668)
,p_name=>'notification'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(1482509865956610240)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(870974290777016669)
,p_event_id=>wwv_flow_api.id(870973862727016668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.GRITTER_NOTIFICATION'
,p_attribute_01=>'Notification'
,p_attribute_02=>'Project Assignments form has been updated.'
,p_attribute_04=>'N'
,p_attribute_05=>'3'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Form on SIM_P2P'
,p_page_mode=>'MODAL'
,p_step_title=>'Form on SIM_P2P'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150222005444'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482503199273610228)
,p_plug_name=>'Form on SIM_P2P'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484366221450514)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1482503881979610228)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1481484533201450550)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1607284830848219038)
,p_button_sequence=>25
,p_button_plug_id=>wwv_flow_api.id(1482503199273610228)
,p_button_name=>'P14_CREATE_EMPLOYEE'
,p_button_static_id=>'P14_CREATE_EMPLOYEE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Employee'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1607285111793226290)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482503199273610228)
,p_button_name=>'P14_CREATE_PROJECT'
,p_button_static_id=>'P14_CREATE_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Project'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482504294996610229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1482503881979610228)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482503828394610228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1482503881979610228)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_PER_PROJ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482503684403610228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1482503881979610228)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P14_PER_PROJ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1482503593691610228)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1482503881979610228)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P14_PER_PROJ'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482506706743610236)
,p_name=>'P14_PER_PROJ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1482503199273610228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Per Proj'
,p_source=>'PER_PROJ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482507084619610237)
,p_name=>'P14_SIM_PERSON_PERSON_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1482503199273610228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Employee'
,p_source=>'SIM_PERSON_PERSON_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECT EMPLOYEES'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       person_id as r',
'  from sim_project_person',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1482507534976610237)
,p_name=>'P14_SIM_PROJECT_PROJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1482503199273610228)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Name'
,p_source=>'SIM_PROJECT_PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       project_id as r',
'  from sim_project',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1482504390418610229)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1482504294996610229)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1482505204534610230)
,p_event_id=>wwv_flow_api.id(1482504390418610229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482508363717610238)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SIM_P2P'
,p_attribute_02=>'SIM_P2P'
,p_attribute_03=>'P14_PER_PROJ'
,p_attribute_04=>'PER_PROJ'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482508676163610239)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SIM_P2P'
,p_attribute_02=>'SIM_P2P'
,p_attribute_03=>'P14_PER_PROJ'
,p_attribute_04=>'PER_PROJ'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482509126154610239)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1482503828394610228)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1482509527780610239)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(1481518689667451977)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'2015 SIM - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1481428506731450228)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'PHIL.CANNATA@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20150218035801'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1483434578560774379)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1481491971209450808)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1483435775439774381)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1483434578560774379)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1481513561464451864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1483434980958774380)
,p_name=>'P24_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1483434578560774379)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1483435461187774380)
,p_name=>'P24_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1483434578560774379)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1481512971843451685)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1483436624612774382)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P24_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1483436258907774381)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P24_USERNAME,',
'    p_password => :P24_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1483437451189774382)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1483437049603774382)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P24_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
