import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/tax_files/tax_component/tax_component_widget.dart';
import '/tax_files/tax_select_component/tax_select_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_f_q_edit_add_item_model.dart';
export 'r_f_q_edit_add_item_model.dart';

class RFQEditAddItemWidget extends StatefulWidget {
  const RFQEditAddItemWidget({
    Key? key,
    required this.orderid,
    required this.productid,
    required this.productname,
  }) : super(key: key);

  final int? orderid;
  final int? productid;
  final String? productname;

  @override
  _RFQEditAddItemWidgetState createState() => _RFQEditAddItemWidgetState();
}

class _RFQEditAddItemWidgetState extends State<RFQEditAddItemWidget> {
  late RFQEditAddItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RFQEditAddItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().taxJson = null;
      });
      _model.productDetailResponse =
          await CommonApisGroupGroup.productDetailCall.call(
        authToken: FFAppState().accessToken,
        domainUrl: FFAppState().DomainUrl,
        id: widget.productid,
      );
      if ((_model.productDetailResponse?.succeeded ?? true)) {
        setState(() {
          _model.productdescriptionController?.text =
              functions.isNull(CommonApisGroupGroup.productDetailCall
                  .productDescription(
                    (_model.productDetailResponse?.jsonBody ?? ''),
                  )
                  .toString()
                  .toString())!;
        });
        setState(() {
          _model.productNameController?.text =
              functions.isNull(CommonApisGroupGroup.productDetailCall
                  .productName(
                    (_model.productDetailResponse?.jsonBody ?? ''),
                  )
                  .toString())!;
        });
        setState(() {
          _model.quantityController?.text = '1';
        });
        setState(() {
          _model.unitController?.text = CommonApisGroupGroup.productDetailCall
              .unitName(
                (_model.productDetailResponse?.jsonBody ?? ''),
              )
              .toString();
        });
        setState(() {
          _model.amountController?.text = CommonApisGroupGroup.productDetailCall
              .price(
                (_model.productDetailResponse?.jsonBody ?? ''),
              )
              .toString()
              .toString();
        });
        setState(() {
          _model.subtotalController?.text = functions
              .findSubTotal(double.tryParse(_model.quantityController.text),
                  double.tryParse(_model.amountController.text))!
              .toString();
        });
        FFAppState().update(() {
          FFAppState().taxJson = functions.taxjson(
              FFAppState().taxJson,
              'update',
              0,
              'null',
              0.0,
              0.0,
              0.0,
              0,
              CommonApisGroupGroup.productDetailCall.productLIst(
                (_model.productDetailResponse?.jsonBody ?? ''),
              ),
              'product')!;
        });
        FFAppState().update(() {
          FFAppState().taxJson = functions.taxjson(
              FFAppState().taxJson,
              'tax_total',
              0,
              'null',
              functions.findTotalamount(
                  double.tryParse(_model.subtotalController.text),
                  'tax',
                  CommonApisGroupGroup.productDetailCall.productLIst(
                    (_model.productDetailResponse?.jsonBody ?? ''),
                  ),
                  'update',
                  'product'),
              0.0,
              functions.findTotalamount(
                  double.tryParse(_model.subtotalController.text),
                  'total',
                  CommonApisGroupGroup.productDetailCall.productLIst(
                    (_model.productDetailResponse?.jsonBody ?? ''),
                  ),
                  'update',
                  'product'),
              0,
              CommonApisGroupGroup.productDetailCall.productLIst(
                (_model.productDetailResponse?.jsonBody ?? ''),
              ),
              'product')!;
        });
      }
    });

    _model.productNameController ??= TextEditingController();
    _model.productdescriptionController ??= TextEditingController();
    _model.quantityController ??= TextEditingController();
    _model.unitController ??= TextEditingController();
    _model.amountController ??= TextEditingController();
    _model.subtotalController ??= TextEditingController();
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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        desktop: false,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 55.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: wrapWithModel(
                      model: _model.backButttonComponentModel,
                      updateCallback: () => setState(() {}),
                      child: BackButttonComponentWidget(),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'mt7vu6h8' /* Add Items */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .appBarTextColor,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.normal,
                                  ),
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
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ktqgihtu' /* Product Name */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).hashColor,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.productNameController,
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .inputtextColor,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'm4zpv3wp' /* Product */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .inputtextColor,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .inputtextColor,
                                                ),
                                            validator: _model
                                                .productNameControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'icwi8g3d' /* Description */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                        _model.productdescriptionController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .inputtextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'eukmpijv' /*  Description */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .inputtextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                            lineHeight: 2.0,
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
                                              .hashColor,
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
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .caradTextColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    validator: _model
                                        .productdescriptionControllerValidator
                                        .asValidator(context),
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
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'i30xb5uw' /* Quantity */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _model.quantityController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.quantityController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            setState(() {
                                              _model.subtotalController?.text =
                                                  functions
                                                      .findSubTotal(
                                                          double.tryParse(_model
                                                              .quantityController
                                                              .text),
                                                          double.tryParse(_model
                                                              .amountController
                                                              .text))!
                                                      .toString();
                                            });
                                            FFAppState().update(() {
                                              FFAppState().taxJson =
                                                  functions.taxjson(
                                                      FFAppState().taxJson,
                                                      'tax_total',
                                                      0,
                                                      'null',
                                                      functions.findTotalamount(
                                                          double.tryParse(_model
                                                              .subtotalController
                                                              .text),
                                                          'tax',
                                                          FFAppState().taxJson,
                                                          'add',
                                                          'product'),
                                                      0.0,
                                                      functions.findTotalamount(
                                                          double.tryParse(_model
                                                              .subtotalController
                                                              .text),
                                                          'total',
                                                          FFAppState().taxJson,
                                                          'add',
                                                          'product'),
                                                      0,
                                                      CommonApisGroupGroup
                                                          .productDetailCall
                                                          .productLIst(
                                                        (_model.productDetailResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'product')!;
                                            });
                                          },
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'zea8hag4' /* Quantity */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .quantityControllerValidator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'jrybz8p0' /* Units */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _model.unitController,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '0c7q0alq' /* Units */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .caradTextColor,
                                              fontSize: 16.0,
                                            ),
                                        validator: _model
                                            .unitControllerValidator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'mswflvql' /* Tax */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: TaxSelectComponentWidget(
                                            subtotal: double.parse(
                                                _model.subtotalController.text),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: wrapWithModel(
                                    model: _model.taxComponentModel,
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: TaxComponentWidget(),
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
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'qbz5i169' /* Amount */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _model.amountController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.amountController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            setState(() {
                                              _model.subtotalController?.text =
                                                  functions
                                                      .findSubTotal(
                                                          double.tryParse(_model
                                                              .quantityController
                                                              .text),
                                                          double.tryParse(_model
                                                              .amountController
                                                              .text))!
                                                      .toString();
                                            });
                                            FFAppState().update(() {
                                              FFAppState().taxJson =
                                                  functions.taxjson(
                                                      FFAppState().taxJson,
                                                      'tax_total',
                                                      0,
                                                      'null',
                                                      functions.findTotalamount(
                                                          double.tryParse(_model
                                                              .subtotalController
                                                              .text),
                                                          'tax',
                                                          FFAppState().taxJson,
                                                          'add',
                                                          'product'),
                                                      0.0,
                                                      functions.findTotalamount(
                                                          double.tryParse(_model
                                                              .subtotalController
                                                              .text),
                                                          'total',
                                                          FFAppState().taxJson,
                                                          'add',
                                                          'product'),
                                                      0,
                                                      CommonApisGroupGroup
                                                          .productDetailCall
                                                          .productLIst(
                                                        (_model.productDetailResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'product')!;
                                            });
                                          },
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'c471c5lt' /* Amount */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .inputFieldColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .amountControllerValidator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ieqt3nuy' /* Sub Total */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _model.subtotalController,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'sqjt5sio' /* Sub Total */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .inputtextColor,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hashColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .inputFieldColor,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .subtotalControllerValidator
                                            .asValidator(context),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 18.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 158.0,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'd1h6k3fo' /* Total */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 158.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .hashColor,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              functions.isNull(getJsonField(
                                                            FFAppState()
                                                                .taxJson,
                                                            r'''$.total''',
                                                          ).toString()) !=
                                                          null &&
                                                      functions.isNull(
                                                              getJsonField(
                                                            FFAppState()
                                                                .taxJson,
                                                            r'''$.total''',
                                                          ).toString()) !=
                                                          ''
                                                  ? getJsonField(
                                                      FFAppState().taxJson,
                                                      r'''$.total''',
                                                    ).toString()
                                                  : _model
                                                      .subtotalController.text,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          _model.apiResultevt =
                                              await PurchaseApiGroupGroup
                                                  .purchaseOrderLineProductCreateCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            accountTaxPurchaseOrderLineRelsJson:
                                                getJsonField(
                                              FFAppState().taxJson,
                                              r'''$.taxidjson''',
                                            ),
                                            name: _model
                                                .productdescriptionController
                                                .text,
                                            orderId: widget.orderid,
                                            priceSubtotal: double.tryParse(
                                                _model.subtotalController.text),
                                            priceUnit: double.tryParse(
                                                _model.amountController.text),
                                            productId: widget.productid,
                                            productQty: double.tryParse(
                                                _model.quantityController.text),
                                            productUom: CommonApisGroupGroup
                                                .productDetailCall
                                                .unitId(
                                              (_model.productDetailResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            productUomQty: double.tryParse(
                                                _model.quantityController.text),
                                          );
                                          _shouldSetState = true;
                                          if ((_model.apiResultevt?.succeeded ??
                                              true)) {
                                            _model.updationDetailForTotal =
                                                await PurchaseApiGroupGroup
                                                    .purchaseOrderViewCall
                                                    .call(
                                              authToken:
                                                  FFAppState().accessToken,
                                              domainUrl: FFAppState().DomainUrl,
                                              id: widget.orderid,
                                            );
                                            _shouldSetState = true;
                                            if ((_model.updationDetailForTotal
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().update(() {
                                                FFAppState().totalsJson =
                                                    functions.totalsJson(
                                                        'update',
                                                        PurchaseApiGroupGroup
                                                            .purchaseOrderViewCall
                                                            .lineJsons(
                                                              (_model.updationDetailForTotal
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                            ?.toList())!;
                                                FFAppState().ProductEditItem =
                                                    functions
                                                        .editItemProductList(
                                                            'purchase',
                                                            PurchaseApiGroupGroup
                                                                .purchaseOrderViewCall
                                                                .lineJsons(
                                                                  (_model.updationDetailForTotal
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                ?.toList())!
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                              Navigator.pop(context);
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Item added successfully',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                ),
                                              );
                                            } else {
                                              Navigator.pop(context);
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'igmghgn8' /* Save */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .saveButton,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          _model.resSaveandNewSave =
                                              await PurchaseApiGroupGroup
                                                  .purchaseOrderLineProductCreateCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            accountTaxPurchaseOrderLineRelsJson:
                                                getJsonField(
                                              FFAppState().taxJson,
                                              r'''$.taxidjson''',
                                            ),
                                            name: _model
                                                .productdescriptionController
                                                .text,
                                            orderId: widget.orderid,
                                            priceSubtotal: double.tryParse(
                                                _model.subtotalController.text),
                                            priceUnit: double.tryParse(
                                                _model.amountController.text),
                                            productId: widget.productid,
                                            productQty: double.tryParse(
                                                _model.quantityController.text),
                                            productUom: CommonApisGroupGroup
                                                .productDetailCall
                                                .unitId(
                                              (_model.productDetailResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            productUomQty: double.tryParse(
                                                _model.quantityController.text),
                                          );
                                          _shouldSetState = true;
                                          if ((_model.resSaveandNewSave
                                                  ?.succeeded ??
                                              true)) {
                                            _model.updationDetailForTotalinsave =
                                                await PurchaseApiGroupGroup
                                                    .purchaseOrderViewCall
                                                    .call(
                                              authToken:
                                                  FFAppState().accessToken,
                                              domainUrl: FFAppState().DomainUrl,
                                              id: widget.orderid,
                                            );
                                            _shouldSetState = true;
                                            if ((_model
                                                    .updationDetailForTotalinsave
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().update(() {
                                                FFAppState().totalsJson =
                                                    functions.totalsJson(
                                                        'update',
                                                        PurchaseApiGroupGroup
                                                            .purchaseOrderViewCall
                                                            .lineJsons(
                                                              (_model.updationDetailForTotalinsave
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                            ?.toList())!;
                                                FFAppState().ProductEditItem =
                                                    PurchaseApiGroupGroup
                                                        .purchaseOrderViewCall
                                                        .lineJsons(
                                                          (_model.updationDetailForTotalinsave
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                        .toList()
                                                        .cast<dynamic>();
                                              });
                                              Navigator.pop(context);
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                useSafeArea: true,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        CommonEditProductSearchWidget(
                                                      page: 'rfq',
                                                      id: widget.orderid!,
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            } else {
                                              Navigator.pop(context);
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                useSafeArea: true,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        CommonEditProductSearchWidget(
                                                      page: 'rfq',
                                                      id: widget.orderid!,
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'kz50m9s4' /* Save & New */,
                                        ),
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .saveAndNewButton,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
