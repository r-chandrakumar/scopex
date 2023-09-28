import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_my_activity_model.dart';
export 'schedule_my_activity_model.dart';

class ScheduleMyActivityWidget extends StatefulWidget {
  const ScheduleMyActivityWidget({
    Key? key,
    this.id,
    this.model,
    required this.date,
    this.name,
  }) : super(key: key);

  final int? id;
  final String? model;
  final DateTime? date;
  final String? name;

  @override
  _ScheduleMyActivityWidgetState createState() =>
      _ScheduleMyActivityWidgetState();
}

class _ScheduleMyActivityWidgetState extends State<ScheduleMyActivityWidget> {
  late ScheduleMyActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleMyActivityModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.model = (widget.model != 'null') &&
                (widget.model != null && widget.model != '')
            ? widget.model!
            : functions.emptyStringReturn(widget.model)!;
      });
    });

    _model.summaryController ??= TextEditingController();
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

    return Align(
      alignment: AlignmentDirectional(0.00, 1.00),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 13.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'fg7oaqnr' /* Schedule My Activity */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).rgb,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'p01gpqbh' /* Model */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 13.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: HymechApiGroupGroup
                                  .listOfLeadForActivityCall
                                  .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Container(
                                    width: double.infinity,
                                    height: 50.0,
                                    child: DropDownEmptyFullWidthWidget(),
                                  );
                                }
                                final modelListOfLeadForActivityResponse =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller: _model.modelValueController ??=
                                      FormFieldController<String>(
                                    _model.modelValue ??= (widget.model !=
                                                'null') &&
                                            (widget.model != null &&
                                                widget.model != '')
                                        ? widget.model
                                        : functions
                                            .emptyStringReturn(widget.model),
                                  ),
                                  options: [
                                    'crm.lead',
                                    'sale.order',
                                    'purchase.order',
                                    'account.move',
                                    'account.move.bill'
                                  ],
                                  optionLabels: [
                                    FFLocalizations.of(context).getText(
                                      'ip0dfc7w' /* lead */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'xkl21bsb' /* Sale Order */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '8kaa7bfr' /* Purchase Order */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '3bt8asxz' /* Invoice */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'hghmmm1n' /* Vendor Bill */,
                                    )
                                  ],
                                  onChanged: (val) async {
                                    setState(() => _model.modelValue = val);
                                    setState(() {
                                      _model.model = _model.modelValue!;
                                    });
                                  },
                                  width: double.infinity,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'smq1nep8' /* Select Model */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF7D7D7D),
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).hashColor,
                                  borderWidth: 1.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  hidesUnderline: true,
                                  disabled: (widget.model != 'null') &&
                                      (widget.model != null &&
                                          widget.model != ''),
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.model == 'crm.lead') {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'jpgxr4rp' /* Lead */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: HymechApiGroupGroup
                                          .listOfLeadForActivityCall
                                          .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            child:
                                                DropDownEmptyFullWidthWidget(),
                                          );
                                        }
                                        final leadListOfLeadForActivityResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.leadValueController ??=
                                                  FormFieldController<String>(
                                            _model.leadValue ??= functions
                                                .emptyStringReturn(functions
                                                    .convertIntToString(
                                                        widget.id)
                                                    .toString()),
                                          ),
                                          options: (HymechApiGroupGroup
                                                  .listOfLeadForActivityCall
                                                  .leadid(
                                            leadListOfLeadForActivityResponse
                                                .jsonBody,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .map((e) => e.toString())
                                              .toList(),
                                          optionLabels: (HymechApiGroupGroup
                                                  .listOfLeadForActivityCall
                                                  .leadname(
                                            leadListOfLeadForActivityResponse
                                                .jsonBody,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!
                                              .map((e) => e.toString())
                                              .toList(),
                                          onChanged: (val) => setState(
                                              () => _model.leadValue = val),
                                          width: double.infinity,
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '8y6ml2un' /* Select Lead */,
                                          ),
                                          searchHintText:
                                              FFLocalizations.of(context)
                                                  .getText(
                                            'c9i3fk00' /* Search for an lead... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: Color(0xFF7D7D7D),
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .hashColor,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          hidesUnderline: true,
                                          disabled: (widget.model != 'null') &&
                                              (widget.model != null &&
                                                  widget.model != ''),
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            } else if (_model.model == 'sale.order') {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'erct1yhc' /* Sale Order */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: CommonApisGroupGroup
                                          .saleDropdownActivityCall
                                          .call(
                                        domainUrl: FFAppState().DomainUrl,
                                        authToken: FFAppState().accessToken,
                                        search: functions
                                            .emptyStringReturn(_model.search),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            child:
                                                DropDownEmptyFullWidthWidget(),
                                          );
                                        }
                                        final saleSaleDropdownActivityResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.saleValueController ??=
                                                  FormFieldController<String>(
                                            _model.saleValue ??= functions
                                                .emptyStringReturn(functions
                                                    .convertIntToString(
                                                        widget.id)
                                                    .toString()),
                                          ),
                                          options: (getJsonField(
                                            saleSaleDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.sale_order..id''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          optionLabels: (getJsonField(
                                            saleSaleDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.sale_order..name''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(
                                              () => _model.saleValue = val),
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'c9dkbaow' /* Select Sale */,
                                          ),
                                          searchHintText:
                                              FFLocalizations.of(context)
                                                  .getText(
                                            's71gytjx' /* Search for an sale... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .hashColor,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          hidesUnderline: true,
                                          disabled: (widget.model != 'null') &&
                                              (widget.model != null &&
                                                  widget.model != ''),
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            } else if (_model.model == 'purchase.order') {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'meb98n96' /* Purchase Order */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: CommonApisGroupGroup
                                        .purchaseDropdownActivityCall
                                        .call(
                                      domainUrl: FFAppState().DomainUrl,
                                      authToken: FFAppState().accessToken,
                                      search: functions
                                          .emptyStringReturn(_model.search),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          child: DropDownEmptyFullWidthWidget(),
                                        );
                                      }
                                      final purchasePurchaseDropdownActivityResponse =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<String>(
                                        controller:
                                            _model.purchaseValueController ??=
                                                FormFieldController<String>(
                                          _model.purchaseValue ??= functions
                                              .emptyStringReturn(functions
                                                  .convertIntToString(widget.id)
                                                  .toString()),
                                        ),
                                        options: (getJsonField(
                                          purchasePurchaseDropdownActivityResponse
                                              .jsonBody,
                                          r'''$.purchase_order..id''',
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList()!,
                                        optionLabels: (getJsonField(
                                          purchasePurchaseDropdownActivityResponse
                                              .jsonBody,
                                          r'''$.purchase_order..name''',
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList()!,
                                        onChanged: (val) => setState(
                                            () => _model.purchaseValue = val),
                                        height: 50.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '7b2rg2rd' /* Select Purchase Order */,
                                        ),
                                        searchHintText:
                                            FFLocalizations.of(context).getText(
                                          '72l51enr' /* Search for an item... */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .hashColor,
                                        borderWidth: 1.0,
                                        borderRadius: 8.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 8.0, 8.0, 8.0),
                                        hidesUnderline: true,
                                        disabled: (widget.model != 'null') &&
                                            (widget.model != null &&
                                                widget.model != ''),
                                        isSearchable: true,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ],
                              );
                            } else if (_model.model == 'account.move') {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'at1w1bbw' /* Invoice */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: CommonApisGroupGroup
                                          .invoiceDropdownActivityCall
                                          .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        search: functions
                                            .emptyStringReturn(_model.search),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            child:
                                                DropDownEmptyFullWidthWidget(),
                                          );
                                        }
                                        final invoiceInvoiceDropdownActivityResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.invoiceValueController ??=
                                                  FormFieldController<String>(
                                            _model.invoiceValue ??= functions
                                                .emptyStringReturn(functions
                                                    .convertIntToString(
                                                        widget.id)
                                                    .toString()),
                                          ),
                                          options: (getJsonField(
                                            invoiceInvoiceDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.account_move..id''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          optionLabels: (getJsonField(
                                            invoiceInvoiceDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.account_move..name''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(
                                              () => _model.invoiceValue = val),
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'da0onow9' /* Select Invoice */,
                                          ),
                                          searchHintText:
                                              FFLocalizations.of(context)
                                                  .getText(
                                            've9bqd7o' /* Search for an invoice... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .hashColor,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          hidesUnderline: true,
                                          disabled: (widget.model != 'null') &&
                                              (widget.model != null &&
                                                  widget.model != ''),
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            } else if (_model.model == 'account.move.bill') {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ewp9taeg' /* Vendor Bill */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 13.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: CommonApisGroupGroup
                                          .billDropdownActivityCall
                                          .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        search: _model.search,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Container(
                                            width: double.infinity,
                                            height: 50.0,
                                            child:
                                                DropDownEmptyFullWidthWidget(),
                                          );
                                        }
                                        final vendorBillBillDropdownActivityResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .vendorBillValueController ??=
                                              FormFieldController<String>(
                                            _model.vendorBillValue ??= functions
                                                .emptyStringReturn(functions
                                                    .convertIntToString(
                                                        widget.id)
                                                    .toString()),
                                          ),
                                          options: (getJsonField(
                                            vendorBillBillDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.account_move..id''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          optionLabels: (getJsonField(
                                            vendorBillBillDropdownActivityResponse
                                                .jsonBody,
                                            r'''$.account_move..name''',
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!,
                                          onChanged: (val) => setState(() =>
                                              _model.vendorBillValue = val),
                                          height: 50.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'i9qglyr5' /* Select VendorBill */,
                                          ),
                                          searchHintText:
                                              FFLocalizations.of(context)
                                                  .getText(
                                            'wcxjcrud' /* Search for an vendorbill... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .hashColor,
                                          borderWidth: 1.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          hidesUnderline: true,
                                          disabled: (widget.model != 'null') &&
                                              (widget.model != null &&
                                                  widget.model != ''),
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [],
                              );
                            }
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'tj7ptphg' /* Activity Type */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 13.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: HymechApiGroupGroup.activityTypesCall.call(
                              authToken: FFAppState().accessToken,
                              domainUrl: FFAppState().DomainUrl,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  child: DropDownEmptyFullWidthWidget(),
                                );
                              }
                              final activitytypeActivityTypesResponse =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.activitytypeValueController ??=
                                        FormFieldController<String>(
                                  _model.activitytypeValue ??= '',
                                ),
                                options:
                                    (HymechApiGroupGroup.activityTypesCall.id(
                                  activitytypeActivityTypesResponse.jsonBody,
                                ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()!
                                        .map((e) => e.toString())
                                        .toList(),
                                optionLabels:
                                    (HymechApiGroupGroup.activityTypesCall.name(
                                  activitytypeActivityTypesResponse.jsonBody,
                                ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()!
                                        .map((e) => e.toString())
                                        .toList(),
                                onChanged: (val) => setState(
                                    () => _model.activitytypeValue = val),
                                width: double.infinity,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'rzw93zqj' /* Select Type */,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xFF7D7D7D),
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 0.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).hashColor,
                                borderWidth: 1.0,
                                borderRadius: 8.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 8.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '7aad4rde' /* Assigned To */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 13.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: HymechApiGroupGroup.assignedToCall.call(
                                  authToken: FFAppState().accessToken,
                                  domainUrl: FFAppState().DomainUrl,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      child: DropDownEmptyFullWidthWidget(),
                                    );
                                  }
                                  final userAssignedToResponse = snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    controller: _model.userValueController ??=
                                        FormFieldController<String>(
                                      _model.userValue ??= '',
                                    ),
                                    options: (getJsonField(
                                      userAssignedToResponse.jsonBody,
                                      r'''$.res_users[:].id''',
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()!,
                                    optionLabels: (HymechApiGroupGroup
                                            .assignedToCall
                                            .name(
                                      userAssignedToResponse.jsonBody,
                                    ) as List)
                                        .map<String>((s) => s.toString())
                                        .toList()!,
                                    onChanged: (val) =>
                                        setState(() => _model.userValue = val),
                                    width: double.infinity,
                                    height: 50.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 16.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'jrdvndy5' /* Select Type */,
                                    ),
                                    searchHintText:
                                        FFLocalizations.of(context).getText(
                                      'qfdsu1p1' /* Search for an item... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: Color(0xFF7D7D7D),
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).hashColor,
                                    borderWidth: 1.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    hidesUnderline: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'wqjgh9v0' /* Due Date */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 13.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).hashColor,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 1.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final _datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: widget.date!,
                                    firstDate: widget.date!,
                                    lastDate: DateTime(2050),
                                  );

                                  if (_datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        _datePickedDate.year,
                                        _datePickedDate.month,
                                        _datePickedDate.day,
                                      );
                                    });
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            9.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          () {
                                            if (_model.datePicked != null) {
                                              return valueOrDefault<String>(
                                                functions
                                                    .convertLeaveDateFormat(
                                                        _model.datePicked
                                                            ?.toString()),
                                                'Date',
                                              );
                                            } else if (widget.date != null) {
                                              return valueOrDefault<String>(
                                                functions
                                                    .convertLeaveDateFormat(
                                                        widget.date
                                                            ?.toString()),
                                                'Date',
                                              );
                                            } else {
                                              return 'Select Due Date';
                                            }
                                          }(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Icon(
                                        Icons.date_range,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '2jg3u9tw' /* Summary */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 13.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 18.0),
                          child: TextFormField(
                            controller: _model.summaryController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                'fydmpvbo' /* write a summary */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18.0,
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
                                  color: Color(0xFFD1E2EA),
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
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            maxLines: 2,
                            keyboardType: TextInputType.multiline,
                            validator: _model.summaryControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'zunwrxce' /* Discard */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .discradButton,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        _model.modelResponse =
                                            await HymechApiGroupGroup
                                                .getModelIdCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          modelName: _model.model ==
                                                  'account.move.bill'
                                              ? 'account.move'
                                              : _model.model,
                                        );
                                        if ((_model.modelResponse?.succeeded ??
                                            true)) {
                                          _model.activityCreateResponse =
                                              await HymechApiGroupGroup
                                                  .myActivityCreateCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            summary:
                                                _model.summaryController.text,
                                            dateDeadline:
                                                functions.changeDateFomat(
                                                    _model.datePicked != null
                                                        ? _model.datePicked
                                                            ?.toString()
                                                        : widget.date
                                                            ?.toString()),
                                            activityTypeId:
                                                functions.changeStringToInt(
                                                    _model.activitytypeValue),
                                            resModelId: HymechApiGroupGroup
                                                .getModelIdCall
                                                .id(
                                              (_model.modelResponse?.jsonBody ??
                                                  ''),
                                            ),
                                            userId: functions.changeStringToInt(
                                                _model.userValue),
                                            leadId: () {
                                              if (_model.modelValue ==
                                                  'crm.lead') {
                                                return functions
                                                    .changeStringToInt(
                                                        _model.leadValue);
                                              } else if (_model.modelValue ==
                                                  'sale.order') {
                                                return functions
                                                    .changeStringToInt(
                                                        _model.saleValue);
                                              } else if (_model.modelValue ==
                                                  'purchase.order') {
                                                return functions
                                                    .changeStringToInt(
                                                        _model.purchaseValue);
                                              } else if (_model.modelValue ==
                                                  'account.move') {
                                                return functions
                                                    .changeStringToInt(
                                                        _model.invoiceValue);
                                              } else if (_model.modelValue ==
                                                  'account.move.bill') {
                                                return functions
                                                    .changeStringToInt(
                                                        _model.vendorBillValue);
                                              } else {
                                                return 0;
                                              }
                                            }(),
                                          );
                                          if ((_model.activityCreateResponse
                                                  ?.succeeded ??
                                              true)) {
                                            Navigator.pop(context);
                                            if (widget.model == 'crm.lead') {
                                              context.pushNamed(
                                                'Leadview',
                                                queryParameters: {
                                                  'leadid': serializeParam(
                                                    widget.id,
                                                    ParamType.int,
                                                  ),
                                                  'leadname': serializeParam(
                                                    widget.name,
                                                    ParamType.String,
                                                  ),
                                                  'type': serializeParam(
                                                    'lead',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (widget.model ==
                                                'sale.order') {
                                              context.pushNamed(
                                                'quotation_view_page',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    widget.id,
                                                    ParamType.int,
                                                  ),
                                                  'name': serializeParam(
                                                    widget.name,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (widget.model ==
                                                'purchase.order') {
                                              context.pushNamed(
                                                'purchase_rfq_view',
                                                queryParameters: {
                                                  'name': serializeParam(
                                                    widget.name,
                                                    ParamType.String,
                                                  ),
                                                  'id': serializeParam(
                                                    widget.id,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (widget.model ==
                                                'account.move') {
                                              context.pushNamed(
                                                'invoice_view_page',
                                                queryParameters: {
                                                  'name': serializeParam(
                                                    widget.name,
                                                    ParamType.String,
                                                  ),
                                                  'id': serializeParam(
                                                    widget.id,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (widget.model ==
                                                'account.move.bill') {
                                              context.pushNamed(
                                                'vendor_bill_view',
                                                queryParameters: {
                                                  'id': serializeParam(
                                                    widget.id,
                                                    ParamType.int,
                                                  ),
                                                  'name': serializeParam(
                                                    widget.name,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              context.pushNamed(
                                                  'MyActivityCalendar');
                                            }

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Activity scheduled Successfully..',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Something went wrong',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Something went wrong',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        }

                                        setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'fmh8rpck' /* Schedule */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .scheduleButton,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                              fontSize: 20.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
