import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accounting_vendorbill_fliter_model.dart';
export 'accounting_vendorbill_fliter_model.dart';

class AccountingVendorbillFliterWidget extends StatefulWidget {
  const AccountingVendorbillFliterWidget({
    Key? key,
    required this.state,
    required this.startdate,
    required this.enddate,
  }) : super(key: key);

  final String? state;
  final String? startdate;
  final String? enddate;

  @override
  _AccountingVendorbillFliterWidgetState createState() =>
      _AccountingVendorbillFliterWidgetState();
}

class _AccountingVendorbillFliterWidgetState
    extends State<AccountingVendorbillFliterWidget> {
  late AccountingVendorbillFliterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountingVendorbillFliterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, 1.00),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 0.5,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 45.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .inputtextColor,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'lazttxvt' /* Fillter */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .appBarTextColor,
                                      fontSize: 23.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '153gqzze' /* Start Date */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final _datePicked1Date = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                  );

                                  if (_datePicked1Date != null) {
                                    setState(() {
                                      _model.datePicked1 = DateTime(
                                        _datePicked1Date.year,
                                        _datePicked1Date.month,
                                        _datePicked1Date.day,
                                      );
                                    });
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.datePicked1 != null
                                                  ? functions
                                                      .filterDateFormatChange(
                                                          _model.datePicked1
                                                              ?.toString(),
                                                          'list')
                                                  : functions
                                                      .filterDateFormatChange(
                                                          widget.startdate,
                                                          'list'),
                                              '-',
                                            ),
                                            maxLines: 4,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .caradTextColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: Icon(
                                          Icons.calendar_today_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .caradTextColor,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'yop886ul' /* End Date */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final _datePicked2Date = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                  );

                                  if (_datePicked2Date != null) {
                                    setState(() {
                                      _model.datePicked2 = DateTime(
                                        _datePicked2Date.year,
                                        _datePicked2Date.month,
                                        _datePicked2Date.day,
                                      );
                                    });
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.datePicked2 != null
                                                  ? functions
                                                      .filterDateFormatChange(
                                                          _model.datePicked2
                                                              ?.toString(),
                                                          'list')
                                                  : functions
                                                      .filterDateFormatChange(
                                                          widget.enddate,
                                                          'list'),
                                              '-',
                                            ),
                                            maxLines: 4,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .caradTextColor,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: Icon(
                                          Icons.calendar_today_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .caradTextColor,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1dk8f7mz' /* Status */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??= widget.state,
                                ),
                                options: ['draft', 'posted', 'cancel'],
                                optionLabels: [
                                  FFLocalizations.of(context).getText(
                                    'hwbget2z' /* Draft */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '9f4q2b47' /* Posted */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'bva8voum' /* Cancel */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue = val),
                                width: 300.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .caradTextColor,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'r60v1c44' /* Accounting invoice  Select... */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).hashColor,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'Vendorbill_list_page',
                                      queryParameters: {
                                        'state': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'startdate': serializeParam(
                                          valueOrDefault<String>(
                                            _model.datePicked1 != null
                                                ? functions
                                                    .filterDateFormatChange(
                                                        _model.datePicked1
                                                            ?.toString(),
                                                        'filter')
                                                : functions
                                                    .filterDateFormatChange(
                                                        widget.startdate,
                                                        'filter'),
                                            '-',
                                          ),
                                          ParamType.String,
                                        ),
                                        'enddate': serializeParam(
                                          valueOrDefault<String>(
                                            _model.datePicked2 != null
                                                ? functions
                                                    .filterDateFormatChange(
                                                        _model.datePicked2
                                                            ?.toString(),
                                                        'filter')
                                                : functions
                                                    .filterDateFormatChange(
                                                        widget.enddate,
                                                        'filter'),
                                            '-',
                                          ),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '9xvi81pb' /* Apply */,
                                  ),
                                  options: FFButtonOptions(
                                    height: 45.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .applyButton,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: Colors.white,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
