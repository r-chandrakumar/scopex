import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quotation_edit_edit_item_model.dart';
export 'quotation_edit_edit_item_model.dart';

class QuotationEditEditItemWidget extends StatefulWidget {
  const QuotationEditEditItemWidget({
    Key? key,
    required this.id,
    bool? exist,
  })  : this.exist = exist ?? false,
        super(key: key);

  final int? id;
  final bool exist;

  @override
  _QuotationEditEditItemWidgetState createState() =>
      _QuotationEditEditItemWidgetState();
}

class _QuotationEditEditItemWidgetState
    extends State<QuotationEditEditItemWidget> {
  late QuotationEditEditItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationEditEditItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().taxJson = null;
      });
      _model.orderLineProductDataResponse =
          await SalesApiGroupGroup.saleOrderLineProductDetailCall.call(
        authToken: FFAppState().accessToken,
        domainUrl: FFAppState().DomainUrl,
        eq: widget.id,
      );
      if ((_model.orderLineProductDataResponse?.succeeded ?? true)) {
        setState(() {
          _model.productnameController?.text =
              SalesApiGroupGroup.saleOrderLineProductDetailCall
                  .productName(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  )
                  .toString();
        });
        setState(() {
          _model.productdescriptionController?.text =
              functions.isNull(SalesApiGroupGroup.saleOrderLineProductDetailCall
                  .description(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  )
                  .toString())!;
        });
        setState(() {
          _model.quantityController?.text =
              functions.isNull(SalesApiGroupGroup.saleOrderLineProductDetailCall
                  .productUomQty(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  )
                  .toString()
                  .toString())!;
        });
        setState(() {
          _model.unitController?.text =
              SalesApiGroupGroup.saleOrderLineProductDetailCall
                  .uOMName(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  )
                  .toString();
        });
        setState(() {
          _model.amountController?.text =
              SalesApiGroupGroup.saleOrderLineProductDetailCall
                  .pricePerUnit(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  )
                  .toString()
                  .toString();
        });
        setState(() {
          _model.subtotalController?.text = functions
              .findSubTotal(double.tryParse(_model.quantityController.text),
                  double.tryParse(_model.amountController.text))
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
              SalesApiGroupGroup.saleOrderLineProductDetailCall.saleorderList(
                (_model.orderLineProductDataResponse?.jsonBody ?? ''),
              ),
              'sales')!;
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
                  SalesApiGroupGroup.saleOrderLineProductDetailCall
                      .saleorderList(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  ),
                  'update',
                  'sale'),
              0.0,
              functions.findTotalamount(
                  double.tryParse(_model.subtotalController.text),
                  'total',
                  SalesApiGroupGroup.saleOrderLineProductDetailCall
                      .saleorderList(
                    (_model.orderLineProductDataResponse?.jsonBody ?? ''),
                  ),
                  'update',
                  'sale'),
              0,
              SalesApiGroupGroup.saleOrderLineProductDetailCall.saleorderList(
                (_model.orderLineProductDataResponse?.jsonBody ?? ''),
              ),
              'update')!;
        });
        setState(() {
          _model.subtotal = SalesApiGroupGroup.saleOrderLineProductDetailCall
              .priceSubTotal(
                (_model.orderLineProductDataResponse?.jsonBody ?? ''),
              )
              .toDouble();
          _model.taxamount = SalesApiGroupGroup.saleOrderLineProductDetailCall
              .productPriceTax(
                (_model.orderLineProductDataResponse?.jsonBody ?? ''),
              )
              .toDouble();
        });
      }
    });

    _model.productnameController ??= TextEditingController();
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
            height: 50.0,
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
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 5.0, 5.0, 5.0),
                          child: wrapWithModel(
                            model: _model.backButttonComponentModel,
                            updateCallback: () => setState(() {}),
                            child: BackButttonComponentWidget(),
                          ),
                        ),
                      ],
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
                                'fd8wllj8' /* Edit Item */,
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
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (widget.exist)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'r0e8qa5j' /* This item is alredy existed in... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      Align(
                        alignment: AlignmentDirectional(-1.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '1qlifepp' /* Product Name */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .caradTextColor,
                                  fontSize: 14.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.productnameController,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        fontSize: 15.0,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'vu08mk4h' /* Product */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .caradTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
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
                                      color: FlutterFlowTheme.of(context)
                                          .caradTextColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                validator: _model.productnameControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'xclz3xl2' /* Description */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .caradTextColor,
                                  fontSize: 14.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.productdescriptionController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .caradTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'qg0uf924' /* Description */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .caradTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'eda3hefu' /* Quantity */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .caradTextColor,
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
                                                  SalesApiGroupGroup
                                                      .saleOrderLineProductDetailCall
                                                      .saleorderList(
                                                    (_model.orderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'sales')!;
                                        });
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '4r397vag' /* Quantity */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
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
                                        ),
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'nyk9l8ew' /* Units */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .caradTextColor,
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
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '8l261bzs' /* Units */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
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
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.unitControllerValidator
                                        .asValidator(context),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                      if (functions.jsonToString(FFAppState().taxJson) !=
                          'null')
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'z4jrgl1b' /* Tax */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context)
                                        .caradTextColor,
                                    fontSize: 14.0,
                                  ),
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final taxlist = getJsonField(
                                      FFAppState().taxJson,
                                      r'''$.taxid''',
                                    ).toList();
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(taxlist.length,
                                          (taxlistIndex) {
                                        final taxlistItem =
                                            taxlist[taxlistIndex];
                                        return Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 5.0, 5.0, 5.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 5.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    functions
                                                        .findListValueWithIndex(
                                                            getJsonField(
                                                              FFAppState()
                                                                  .taxJson,
                                                              r'''$.taxnames''',
                                                            ),
                                                            taxlistIndex,
                                                            'value')
                                                        ?.toString(),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'vhtiqg1t' /* Amount */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .caradTextColor,
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
                                                  SalesApiGroupGroup
                                                      .saleOrderLineProductDetailCall
                                                      .saleorderList(
                                                    (_model.orderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'sales')!;
                                        });
                                      },
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'syx0n24j' /* Amount */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
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
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    keyboardType: TextInputType.number,
                                    validator: _model.amountControllerValidator
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'hkglgbuo' /* Sub Total */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .caradTextColor,
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
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '4rtydslj' /* Sub Total */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .caradTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
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
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'h16q7n2o' /* Total */,
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
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.45,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .hashColor,
                                      ),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          functions.isNull(getJsonField(
                                                        FFAppState().taxJson,
                                                        r'''$.total''',
                                                      ).toString()) !=
                                                      null &&
                                                  functions.isNull(getJsonField(
                                                        FFAppState().taxJson,
                                                        r'''$.total''',
                                                      ).toString()) !=
                                                      ''
                                              ? getJsonField(
                                                  FFAppState().taxJson,
                                                  r'''$.total''',
                                                ).toString()
                                              : _model.subtotalController.text,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var _shouldSetState = false;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    _model.apiResult5u7 =
                                        await SalesApiGroupGroup
                                            .saleOrderLineProductUpdateCall
                                            .call(
                                      authToken: FFAppState().accessToken,
                                      domainUrl: FFAppState().DomainUrl,
                                      id: widget.id,
                                      priceSubtotal: double.tryParse(
                                          _model.subtotalController.text),
                                      priceUnit: int.tryParse(
                                          _model.amountController.text),
                                      productId: SalesApiGroupGroup
                                          .saleOrderLineProductDetailCall
                                          .productId(
                                        (_model.orderLineProductDataResponse
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      productUomQty: double.tryParse(
                                          _model.quantityController.text),
                                      name: _model
                                          .productdescriptionController.text,
                                      priceTax: getJsonField(
                                        FFAppState().taxJson,
                                        r'''$.taxamount''',
                                      ),
                                      priceTotal: functions.isNull(getJsonField(
                                                    FFAppState().taxJson,
                                                    r'''$.total''',
                                                  ).toString()) !=
                                                  null &&
                                              functions.isNull(getJsonField(
                                                    FFAppState().taxJson,
                                                    r'''$.total''',
                                                  ).toString()) !=
                                                  ''
                                          ? getJsonField(
                                              FFAppState().taxJson,
                                              r'''$.total''',
                                            )
                                          : double.tryParse(
                                              _model.subtotalController.text),
                                    );
                                    _shouldSetState = true;
                                    if ((_model.apiResult5u7?.succeeded ??
                                        true)) {
                                      _model.updationDetailForTotal =
                                          await SalesApiGroupGroup
                                              .saleOrderViewCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        eq: SalesApiGroupGroup
                                            .saleOrderLineProductDetailCall
                                            .saleOrderId(
                                          (_model.orderLineProductDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                        domainUrl: FFAppState().DomainUrl,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.updationDetailForTotal
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().update(() {
                                          FFAppState().totalsJson =
                                              functions.totalsJson(
                                                  'add',
                                                  SalesApiGroupGroup
                                                      .saleOrderViewCall
                                                      .lineJsons(
                                                        (_model.updationDetailForTotal
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      ?.toList())!;
                                          FFAppState().ProductEditItem =
                                              functions
                                                  .editItemProductList(
                                                      'sales',
                                                      SalesApiGroupGroup
                                                          .saleOrderViewCall
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
                                              'Quatation edited item successfully...',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      } else {
                                        Navigator.pop(context);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'While error occured in sale order view page',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'gq29yh0k' /* Save */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).saveButton,
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
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    _model.apiResult5u7Copy =
                                        await SalesApiGroupGroup
                                            .saleOrderLineProductUpdateCall
                                            .call(
                                      authToken: FFAppState().accessToken,
                                      domainUrl: FFAppState().DomainUrl,
                                      id: widget.id,
                                      priceSubtotal: double.tryParse(
                                          _model.subtotalController.text),
                                      priceUnit: int.tryParse(
                                          _model.amountController.text),
                                      productId: SalesApiGroupGroup
                                          .saleOrderLineProductDetailCall
                                          .productId(
                                        (_model.orderLineProductDataResponse
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      productUomQty: double.tryParse(
                                          _model.quantityController.text),
                                      name: _model
                                          .productdescriptionController.text,
                                      priceTax: getJsonField(
                                        FFAppState().taxJson,
                                        r'''$.taxamount''',
                                      ),
                                      priceTotal: functions.isNull(getJsonField(
                                                    FFAppState().taxJson,
                                                    r'''$.total''',
                                                  ).toString()) !=
                                                  null &&
                                              functions.isNull(getJsonField(
                                                    FFAppState().taxJson,
                                                    r'''$.total''',
                                                  ).toString()) !=
                                                  ''
                                          ? getJsonField(
                                              FFAppState().taxJson,
                                              r'''$.total''',
                                            )
                                          : double.tryParse(
                                              _model.subtotalController.text),
                                    );
                                    _shouldSetState = true;
                                    if ((_model.apiResult5u7?.succeeded ??
                                        true)) {
                                      _model.updationDetailForTotal2 =
                                          await SalesApiGroupGroup
                                              .saleOrderViewCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        eq: SalesApiGroupGroup
                                            .saleOrderLineProductDetailCall
                                            .saleOrderId(
                                          (_model.orderLineProductDataResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                        domainUrl: FFAppState().DomainUrl,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.updationDetailForTotal2
                                              ?.succeeded ??
                                          true)) {
                                        _model.updatePage(() {
                                          FFAppState().totalsJson =
                                              functions.totalsJson(
                                                  'update',
                                                  SalesApiGroupGroup
                                                      .saleOrderViewCall
                                                      .lineJsons(
                                                        (_model.updationDetailForTotal2
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      ?.toList())!;
                                          FFAppState().ProductEditItem =
                                              functions
                                                  .editItemProductList(
                                                      'sales',
                                                      SalesApiGroupGroup
                                                          .saleOrderViewCall
                                                          .lineJsons(
                                                            (_model.updationDetailForTotal2
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!
                                                  .toList()
                                                  .cast<dynamic>();
                                        });
                                        Navigator.pop(context);
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  CommonEditProductSearchWidget(
                                                page: 'quote',
                                                id: SalesApiGroupGroup
                                                    .saleOrderLineProductDetailCall
                                                    .saleOrderId(
                                                  (_model.orderLineProductDataResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      } else {
                                        Navigator.pop(context);
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  CommonEditProductSearchWidget(
                                                page: 'quote',
                                                id: SalesApiGroupGroup
                                                    .saleOrderLineProductDetailCall
                                                    .saleOrderId(
                                                  (_model.orderLineProductDataResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));

                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'lx9xn3fa' /* Save & New */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .saveAndNewButton,
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
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ],
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
