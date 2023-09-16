import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_model.dart';
export 'setting_model.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  late SettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.goNamed('Login');
      }
    });

    _model.lowStockController ??= TextEditingController();
    _model.mediumStockController ??= TextEditingController();
    _model.defaultLimtController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16.0,
        child: wrapWithModel(
          model: _model.sideBarNewModel,
          updateCallback: () => setState(() {}),
          child: SideBarNewWidget(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).appBarColor,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).cardHeading),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: wrapWithModel(
              model: _model.menuComponentModel,
              updateCallback: () => setState(() {}),
              child: MenuComponentWidget(),
            ),
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(-1.00, 0.00),
          child: Text(
            FFLocalizations.of(context).getText(
              'vx6dd7nz' /* Settings */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  fontSize: 23.0,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '102jnf3x' /* Change Branch */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: CommonApisGroupGroup.branchCompanyCall.call(
                            authToken: FFAppState().accessToken,
                            domainUrl: FFAppState().DomainUrl,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF47E171),
                                    ),
                                  ),
                                ),
                              );
                            }
                            final companylistdropdownBranchCompanyResponse =
                                snapshot.data!;
                            return FlutterFlowDropDown<String>(
                              controller:
                                  _model.companylistdropdownValueController ??=
                                      FormFieldController<String>(
                                _model.companylistdropdownValue ??=
                                    FFAppState().companyid.toString(),
                              ),
                              options: (CommonApisGroupGroup.branchCompanyCall
                                      .compnayid(
                                companylistdropdownBranchCompanyResponse
                                    .jsonBody,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!
                                  .map((e) => e.toString())
                                  .toList(),
                              optionLabels: (CommonApisGroupGroup
                                      .branchCompanyCall
                                      .companyname(
                                companylistdropdownBranchCompanyResponse
                                    .jsonBody,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()!
                                  .map((e) => e.toString())
                                  .toList(),
                              onChanged: (val) async {
                                setState(() =>
                                    _model.companylistdropdownValue = val);
                                var _shouldSetState = false;
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Company Change'),
                                              content: Text(
                                                  'Do you want Change the Company?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          false),
                                                  child: Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext,
                                                          true),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  _model.companylogin =
                                      await CommonApisGroupGroup
                                          .companyLoginCall
                                          .call(
                                    authToken: FFAppState().accessToken,
                                    companyId: FFAppState().companyid,
                                    userId: FFAppState().userid,
                                    domainUrl: FFAppState().DomainUrl,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.companylogin?.succeeded ??
                                      true)) {
                                    FFAppState().update(() {
                                      FFAppState().companyid =
                                          functions.changeStringToInt(
                                              _model.companylistdropdownValue)!;
                                      FFAppState().accessToken =
                                          CommonApisGroupGroup.companyLoginCall
                                              .token(
                                                (_model.companylogin
                                                        ?.jsonBody ??
                                                    ''),
                                              )
                                              .toString();
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Company Changed',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                                if (_shouldSetState) setState(() {});
                              },
                              width: double.infinity,
                              height: 50.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 12.0,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .inputtextColor,
                                    fontSize: 16.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'ukz3z3zn' /* Please select branch */,
                              ),
                              searchHintText:
                                  FFLocalizations.of(context).getText(
                                'spmna3o8' /* Search for an item... */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 6.0,
                              borderColor: Color(0xFFD1E2EA),
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 10.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: true,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'adcct5ys' /* Initial Month Period */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<int>(
                          controller: _model.initialMonthValueController ??=
                              FormFieldController<int>(
                            _model.initialMonthValue ??=
                                FFAppState().initialMonth,
                          ),
                          options: [1, 3, 6, 12],
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              '8p5m4lo7' /* 1 Month */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gekf3ntk' /* 3 Month */,
                            ),
                            FFLocalizations.of(context).getText(
                              'f2uotdh2' /* 6 Month */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xjuwmmz5' /* 12 Month */,
                            )
                          ],
                          onChanged: (val) async {
                            setState(() => _model.initialMonthValue = val);
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Initial Month'),
                                      content: Text(
                                          'Do you want change Initial Month Peroid?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              FFAppState().update(() {
                                FFAppState().settingsValue =
                                    functions.settingsAppstateUpdate(
                                        'initial_month',
                                        functions
                                            .convertIntToString(
                                                _model.initialMonthValue)
                                            .toString(),
                                        FFAppState().settingsValue.toString(),
                                        'int')!;
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Company Changed',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              await _model.updatesetting(
                                context,
                                key: 'initial_month',
                                value: _model.initialMonthValue?.toString(),
                              );
                              return;
                            }
                          },
                          width: double.infinity,
                          height: 50.0,
                          searchHintTextStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 16.0,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'umv408pi' /* Please select month peroid */,
                          ),
                          searchHintText: FFLocalizations.of(context).getText(
                            'qtmhhk50' /* Search for an item... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 6.0,
                          borderColor: Color(0xFFD1E2EA),
                          borderWidth: 0.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 10.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: true,
                          isMultiSelect: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '4p88wkdb' /* Inventory stock indicator */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'o2174rks' /* Low */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .inputtextColor,
                                          fontSize: 13.0,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: TextFormField(
                                    controller: _model.lowStockController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.lowStockController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        setState(() {
                                          FFAppState().settingsValue =
                                              functions.settingsAppstateUpdate(
                                                  'inventory_low_stock',
                                                  _model
                                                      .lowStockController.text,
                                                  FFAppState()
                                                      .settingsValue
                                                      .toString(),
                                                  'int')!;
                                        });
                                        await _model.updatesetting(
                                          context,
                                          key: 'inventory_low_stock',
                                          value: _model.lowStockController.text,
                                        );
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '62oznqyj' /* 20 */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .inputtextColor,
                                            fontSize: 16.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .hashColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .lowStockControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'blhixxsc' /* Medium */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .inputtextColor,
                                          fontSize: 13.0,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: TextFormField(
                                    controller: _model.mediumStockController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.mediumStockController',
                                      Duration(milliseconds: 2000),
                                      () async {
                                        FFAppState().update(() {
                                          FFAppState().settingsValue =
                                              functions.settingsAppstateUpdate(
                                                  'inventory_medium_stock',
                                                  _model.mediumStockController
                                                      .text,
                                                  FFAppState()
                                                      .settingsValue
                                                      .toString(),
                                                  'int')!;
                                        });
                                        await _model.updatesetting(
                                          context,
                                          key: 'inventory_medium_stock',
                                          value:
                                              _model.mediumStockController.text,
                                        );
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '22ts0mqv' /* 20 */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .inputtextColor,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .hashColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .mediumStockControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '84l0ebjv' /* Default Limit */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: TextFormField(
                          controller: _model.defaultLimtController,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.defaultLimtController',
                            Duration(milliseconds: 2000),
                            () async {
                              setState(() {
                                FFAppState().settingsValue =
                                    functions.settingsAppstateUpdate(
                                        'limit',
                                        _model.defaultLimtController.text,
                                        FFAppState().settingsValue.toString(),
                                        'int')!;
                              });
                              await _model.updatesetting(
                                context,
                                key: 'limit',
                                value: _model.defaultLimtController.text,
                              );
                            },
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              '9y6milj2' /* 20 */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .inputtextColor,
                                  fontSize: 16.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).hashColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                          validator: _model.defaultLimtControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'czuti73o' /* Default Filter */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'bznkxgmt' /* Inventory */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.inventoryValueController ??=
                            FormFieldController<String>(
                          _model.inventoryValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.inventory_filter''',
                          ).toString(),
                        ),
                        options: ['sale', 'purchase', 'sale_purchase'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'xnx6ekvb' /* Sale */,
                          ),
                          FFLocalizations.of(context).getText(
                            '90y477u0' /* Purchase */,
                          ),
                          FFLocalizations.of(context).getText(
                            'b8b94dl6' /* Sale & Purchase */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.inventoryValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Inventory'),
                                    content: Text(
                                        'Do you want change inventory filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'inventory_filter',
                                      _model.inventoryValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'iventory_filter',
                              value: _model.inventoryValue,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          '36r3upmx' /* Please select month peroid */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'cuhcio2f' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jgt9of50' /* GRN */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.grnValueController ??=
                            FormFieldController<String>(
                          _model.grnValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.grn_filter''',
                          ).toString(),
                        ),
                        options: [
                          ' draft ',
                          'waiting',
                          'confirmed',
                          'assigned',
                          'done ',
                          'cancel'
                        ],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            '3ydm8kr2' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'kitbf8mz' /* Waiting Another operation */,
                          ),
                          FFLocalizations.of(context).getText(
                            'wv9d8gus' /* Waiting */,
                          ),
                          FFLocalizations.of(context).getText(
                            '3g0tz6vw' /* Ready */,
                          ),
                          FFLocalizations.of(context).getText(
                            'x82gtgx4' /* Done */,
                          ),
                          FFLocalizations.of(context).getText(
                            'qmu42gl2' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.grnValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('GRN'),
                                    content:
                                        Text('Do you want change GRN filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'grn_filter',
                                      _model.grnValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'grn_filter',
                              value: _model.grnValue,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'tszmvv43' /* Please select month peroid */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '6gqvpz0v' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jzmkrzgk' /* Delivery Challan */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.dChallanValueController ??=
                            FormFieldController<String>(
                          _model.dChallanValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.delivery_challan''',
                          ).toString(),
                        ),
                        options: [
                          ' draft ',
                          'waiting',
                          'confirmed',
                          'assigned',
                          'done ',
                          'cancel'
                        ],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'ond4q9ep' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'k6unr9r4' /* Waiting Another operation */,
                          ),
                          FFLocalizations.of(context).getText(
                            'wxfbohtd' /* Waiting */,
                          ),
                          FFLocalizations.of(context).getText(
                            '2flaqdhu' /* Ready */,
                          ),
                          FFLocalizations.of(context).getText(
                            'a27u7vzn' /* Done */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ivaqtz8x' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.dChallanValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Delivery Challan'),
                                    content: Text(
                                        'Do you want change Delivery Challan filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'delivery_challan',
                                      _model.dChallanValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          '59vpfp3u' /* Please select month peroid */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '07do47e7' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'duzb5hsa' /* Task */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.deliveryChallanValueController ??=
                            FormFieldController<String>(
                          _model.deliveryChallanValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.delivery_challan''',
                          ).toString(),
                        ),
                        options: [
                          ' draft ',
                          'waiting',
                          'confirmed',
                          'assigned',
                          'done ',
                          'cancel'
                        ],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'vlp47sgx' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'y1iw8axc' /* Waiting Another operation */,
                          ),
                          FFLocalizations.of(context).getText(
                            'x0clpcsb' /* Waiting */,
                          ),
                          FFLocalizations.of(context).getText(
                            '957fpthm' /* Ready */,
                          ),
                          FFLocalizations.of(context).getText(
                            '5cxj9sgg' /* Done */,
                          ),
                          FFLocalizations.of(context).getText(
                            '6vz7fslb' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.deliveryChallanValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('GRN'),
                                    content: Text(
                                        'Do you want change Delivery Challan filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'delivery_challan',
                                      _model.deliveryChallanValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'w4mch7v9' /* Please select month peroid */,
                        ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '0ustanjk' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '9euog410' /* Quotation */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.quotationValueController ??=
                            FormFieldController<String>(
                          _model.quotationValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.quatation_filter''',
                          ).toString(),
                        ),
                        options: [' draft ', 'sent', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            '87fi60ii' /* Quotation */,
                          ),
                          FFLocalizations.of(context).getText(
                            'j6xin8yo' /* Quotation Send */,
                          ),
                          FFLocalizations.of(context).getText(
                            '228x6vqs' /* Cancel */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.quotationValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Quatation'),
                                    content: Text(
                                        'Do you want change Quatation filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'quatation_filter',
                                      _model.quotationValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'quatation_filter',
                              value: _model.quotationValue,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'oz31rkcp' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'hobh73wj' /* Sale */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.saleValueController ??=
                            FormFieldController<String>(
                          _model.saleValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.sale_filter''',
                          ).toString(),
                        ),
                        options: ['sale', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'qa9fgwaz' /* Sale Order  */,
                          ),
                          FFLocalizations.of(context).getText(
                            'bexwbn1o' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.saleValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Sale'),
                                    content:
                                        Text('Do you want change sale filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'sale_filter',
                                      _model.saleValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '4edk2209' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '30l0vy8k' /* Purchase */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.purchaseValueController ??=
                            FormFieldController<String>(
                          _model.purchaseValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.purchase_filter''',
                          ).toString(),
                        ),
                        options: ['purchase', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'tjbtffll' /* Purchase Order */,
                          ),
                          FFLocalizations.of(context).getText(
                            '8tilc596' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.purchaseValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Purchase'),
                                    content: Text(
                                        'Do you want change  purchase filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'purchase_filter',
                                      _model.purchaseValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'bnsr8hke' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'vvvqk884' /* RFQ */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.rfqValueController ??=
                            FormFieldController<String>(
                          _model.rfqValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.rfq_filter''',
                          ).toString(),
                        ),
                        options: ['draft', 'sent', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            '0518oy2p' /* RFQ */,
                          ),
                          FFLocalizations.of(context).getText(
                            'f4pck1n4' /* RFQ Sent */,
                          ),
                          FFLocalizations.of(context).getText(
                            'o2u9ztly' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.rfqValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('RFQ'),
                                    content:
                                        Text('Do you want change RFQ filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'rfq_filter',
                                      _model.rfqValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '74bogf8i' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'o2cwu1d0' /* Invoice */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.invoiceValueController ??=
                            FormFieldController<String>(
                          _model.invoiceValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.invoice_filter''',
                          ).toString(),
                        ),
                        options: ['draft', 'posted', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'wibndnmz' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'mn6ola2v' /* Open  */,
                          ),
                          FFLocalizations.of(context).getText(
                            '8b4pkzh5' /* Cancel */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.invoiceValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Invoice'),
                                    content: Text(
                                        'Do you want change invoice filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'invoice_filter',
                                      _model.invoiceValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'f03wmpka' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'b1rfopik' /* Vendor Bill */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.vendorBillValueController ??=
                            FormFieldController<String>(
                          _model.vendorBillValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.vendorBill_filter''',
                          ).toString(),
                        ),
                        options: ['draft', 'posted', 'cancel'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'wr2bsm4u' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'yfzsa9nn' /* Open  */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ajexq7r9' /* Cancel */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.vendorBillValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Vendor Bill'),
                                    content: Text(
                                        'Do you want change vendor bill filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'vendorBill_filter',
                                      _model.vendorBillValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'gv075ihw' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'dzypxeig' /* Payment */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.paymentValueController ??=
                            FormFieldController<String>(
                          _model.paymentValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.vendorBill_filter''',
                          ).toString(),
                        ),
                        options: ['draft', 'posted'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'z8z0xyuz' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ic90ux9x' /* Paid */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.paymentValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Payment'),
                                    content: Text(
                                        'Do you want change payment filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'payment_filter',
                                      _model.paymentValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          '5en5dil0' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'e3s6mokp' /* Contact */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.contactValueController ??=
                            FormFieldController<String>(
                          _model.contactValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.contact_filter''',
                          ).toString(),
                        ),
                        options: ['all', 'customer', 'supplier', 'both'],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            'v32qd8el' /* All */,
                          ),
                          FFLocalizations.of(context).getText(
                            'pvhe44je' /* Customer */,
                          ),
                          FFLocalizations.of(context).getText(
                            'dl9r0qfl' /* Supplier */,
                          ),
                          FFLocalizations.of(context).getText(
                            'kpnb4mko' /* Customer & Supplier */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.contactValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Contact'),
                                    content: Text(
                                        'Do you want change contact filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'contact_filter',
                                      _model.contactValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'inventory_low_stock',
                              value: _model.lowStockController.text,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'qlnva6qo' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'vlvasa2x' /* Expenses */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.expensesValueController ??=
                            FormFieldController<String>(
                          _model.expensesValue ??= getJsonField(
                            FFAppState().settingsValue,
                            r'''$.expenses_filter''',
                          ).toString(),
                        ),
                        options: [
                          'draft',
                          'reported',
                          'approved',
                          'done',
                          'refused'
                        ],
                        optionLabels: [
                          FFLocalizations.of(context).getText(
                            '5ctlsblv' /* Draft */,
                          ),
                          FFLocalizations.of(context).getText(
                            'q8l5ft30' /* Waiting */,
                          ),
                          FFLocalizations.of(context).getText(
                            '9qvys21w' /* Ready */,
                          ),
                          FFLocalizations.of(context).getText(
                            'sxwxwm4o' /* Done */,
                          ),
                          FFLocalizations.of(context).getText(
                            '5n7e5uc3' /* Cancelled */,
                          )
                        ],
                        onChanged: (val) async {
                          setState(() => _model.expensesValue = val);
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Expenses'),
                                    content: Text(
                                        'Do you want change expenses filter?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            FFAppState().update(() {
                              FFAppState().settingsValue =
                                  functions.settingsAppstateUpdate(
                                      'expenses_filter',
                                      _model.expensesValue,
                                      FFAppState().settingsValue.toString(),
                                      'int')!;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Company Changed',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            await _model.updatesetting(
                              context,
                              key: 'expenses_filter',
                              value: _model.expensesValue,
                            );
                            return;
                          }
                        },
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                            ),
                        searchHintText: FFLocalizations.of(context).getText(
                          'fq3fakyr' /* Search for an item... */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 6.0,
                        borderColor: Color(0xFFD1E2EA),
                        borderWidth: 0.0,
                        borderRadius: 8.0,
                        margin:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 10.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
