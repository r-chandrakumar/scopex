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
import 'invoice_edit_edit_item_model.dart';
export 'invoice_edit_edit_item_model.dart';

class InvoiceEditEditItemWidget extends StatefulWidget {
  const InvoiceEditEditItemWidget({
    Key? key,
    required this.id,
    bool? exist,
  })  : this.exist = exist ?? false,
        super(key: key);

  final int? id;
  final bool exist;

  @override
  _InvoiceEditEditItemWidgetState createState() =>
      _InvoiceEditEditItemWidgetState();
}

class _InvoiceEditEditItemWidgetState extends State<InvoiceEditEditItemWidget> {
  late InvoiceEditEditItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceEditEditItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.moveLineInvoiceDetailRes =
          await AccountingApiGroupGroup.accountingLineProductDetailsCall.call(
        authToken: FFAppState().accessToken,
        domainUrl: FFAppState().DomainUrl,
        eq: widget.id,
      );
      if ((_model.moveLineInvoiceDetailRes?.succeeded ?? true)) {
        setState(() {
          _model.productNameController?.text =
              AccountingApiGroupGroup.accountingLineProductDetailsCall
                  .productName(
                    (_model.moveLineInvoiceDetailRes?.jsonBody ?? ''),
                  )
                  .toString();
        });
        setState(() {
          _model.productNameController?.text = functions
              .isNull(AccountingApiGroupGroup.accountingLineProductDetailsCall
                  .name(
                    (_model.moveLineInvoiceDetailRes?.jsonBody ?? ''),
                  )
                  .toString())!;
        });
        setState(() {
          _model.quantityController?.text = functions
              .isNull(AccountingApiGroupGroup.accountingLineProductDetailsCall
                  .quantity(
                    (_model.moveLineInvoiceDetailRes?.jsonBody ?? ''),
                  )
                  .toString()
                  .toString())!;
        });
        setState(() {
          _model.unitController?.text =
              AccountingApiGroupGroup.accountingLineProductDetailsCall
                  .uOMName(
                    (_model.moveLineInvoiceDetailRes?.jsonBody ?? ''),
                  )
                  .toString();
        });
        setState(() {
          _model.amountController?.text =
              AccountingApiGroupGroup.accountingLineProductDetailsCall
                  .priceperUnit(
                    (_model.moveLineInvoiceDetailRes?.jsonBody ?? ''),
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
      }
    });

    _model.productNameController ??= TextEditingController();
    _model.descriptionController ??= TextEditingController();
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
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: wrapWithModel(
                        model: _model.backButttonComponentModel,
                        updateCallback: () => setState(() {}),
                        child: BackButttonComponentWidget(),
                      ),
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
                                'svfzw8a1' /* Edit Items */,
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                    'vcq2awak' /* This item is alredy existed in... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '3cu4192t' /* Product */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 18.0),
                                      child: TextFormField(
                                        controller:
                                            _model.productNameController,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'vruliu9f' /* Product */,
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
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        validator: _model
                                            .productNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'kvrvfl6f' /* Description */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 18.0),
                                      child: TextFormField(
                                        controller:
                                            _model.descriptionController,
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
                                            'k5d6cnnu' /* Description */,
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
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        maxLines: 2,
                                        validator: _model
                                            .descriptionControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'den57j9g' /* Quantity */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 18.0),
                                    child: TextFormField(
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
                                                        'purchase'),
                                                    0.0,
                                                    functions.findTotalamount(
                                                        double.tryParse(_model
                                                            .subtotalController
                                                            .text),
                                                        'total',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'purchase'),
                                                    0,
                                                    AccountingApiGroupGroup
                                                        .accountingLineProductDetailsCall
                                                        .accountMoveLine(
                                                      (_model.moveLineInvoiceDetailRes
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    'purchase')!;
                                          });
                                        },
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .inputtextColor,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '4a8vwlzn' /* Quantity */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
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
                                                .inputFieldColor,
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
                                                .primaryText,
                                          ),
                                      validator: _model
                                          .quantityControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'fhhnnyb6' /* Units */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 18.0),
                                    child: TextFormField(
                                      controller: _model.unitController,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .inputtextColor,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '3k02500u' /* Units */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
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
                                                .inputFieldColor,
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
                                          .bodyMedium,
                                      validator: _model.unitControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 18.0),
                                child: Container(
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'cfbg6q1p' /* Tax */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final taxlist = getJsonField(
                                            FFAppState().taxJson,
                                            r'''$.taxid''',
                                          ).toList();
                                          return Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: List.generate(
                                                taxlist.length, (taxlistIndex) {
                                              final taxlistItem =
                                                  taxlist[taxlistIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 5.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 5.0,
                                                                8.0, 5.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions
                                                            .findListValueWithIndex(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .taxJson,
                                                                  r'''$.taxnames''',
                                                                  true,
                                                                ),
                                                                taxlistIndex,
                                                                'value')
                                                            ?.toString(),
                                                        '-',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'lvub6pza' /* Amount */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 18.0),
                                      child: TextFormField(
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
                                                          'purchase'),
                                                      0.0,
                                                      functions.findTotalamount(
                                                          double.tryParse(_model
                                                              .subtotalController
                                                              .text),
                                                          'total',
                                                          FFAppState().taxJson,
                                                          'add',
                                                          'purchase'),
                                                      0,
                                                      AccountingApiGroupGroup
                                                          .accountingLineProductDetailsCall
                                                          .accountMoveLine(
                                                        (_model.moveLineInvoiceDetailRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'invoice')!;
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
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'y5oa4xtd' /* Amount */,
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
                                            .amountControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3x4n5zdf' /* Sub Total */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 14.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 18.0),
                                      child: TextFormField(
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
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '7365a04u' /* Sub Total */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Container(
                                        width: 160.0,
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'w071g6qx' /* Total */,
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
                                    Container(
                                      width: 160.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .hashColor,
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
                                                          FFAppState().taxJson,
                                                          r'''$.total''',
                                                        ).toString()) !=
                                                        null &&
                                                    functions.isNull(
                                                            getJsonField(
                                                          FFAppState().taxJson,
                                                          r'''$.total''',
                                                        ).toString()) !=
                                                        ''
                                                ? getJsonField(
                                                    FFAppState().taxJson,
                                                    r'''$.total''',
                                                  ).toString()
                                                : _model
                                                    .subtotalController.text,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .inputtextColor,
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
                                      _model.accountLineItemUpdate =
                                          await AccountingApiGroupGroup
                                              .accountingLineProductUpdateCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        name: _model.productNameController.text,
                                        priceUnit: double.tryParse(
                                            _model.amountController.text),
                                        productId: AccountingApiGroupGroup
                                            .accountingLineProductDetailsCall
                                            .productId(
                                          (_model.moveLineInvoiceDetailRes
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                        productUomId: AccountingApiGroupGroup
                                            .accountingLineProductDetailsCall
                                            .uOMId(
                                          (_model.moveLineInvoiceDetailRes
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                        quantity: double.tryParse(
                                            _model.quantityController.text),
                                        eq: widget.id,
                                        priceSubtotal: double.tryParse(
                                            _model.subtotalController.text),
                                        priceTotal: functions
                                                        .isNull(getJsonField(
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
                                      if ((_model.accountLineItemUpdate
                                              ?.succeeded ??
                                          true)) {
                                        _model.updationDetailForTotalEdit =
                                            await AccountingApiGroupGroup
                                                .invoiceViewCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          eq: AccountingApiGroupGroup
                                              .accountingLineProductDetailsCall
                                              .moveId(
                                            (_model.moveLineInvoiceDetailRes
                                                    ?.jsonBody ??
                                                ''),
                                          ),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.updationDetailForTotalEdit
                                                ?.succeeded ??
                                            true)) {
                                          FFAppState().update(() {
                                            FFAppState().totalsJson =
                                                functions.totalsJson(
                                                    'account',
                                                    AccountingApiGroupGroup
                                                        .invoiceViewCall
                                                        .lineList(
                                                          (_model.updationDetailForTotalEdit
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        ?.toList())!;
                                            FFAppState().ProductEditItem =
                                                functions
                                                    .editItemProductList(
                                                        'invoice',
                                                        AccountingApiGroupGroup
                                                            .invoiceViewCall
                                                            .lineList(
                                                              (_model.updationDetailForTotalEdit
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
                                                'Item edited successfully',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      'een07oi0' /* Save */,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .saveButton,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        _model.invoiceUpdate2 =
                                            await AccountingApiGroupGroup
                                                .accountingLineProductUpdateCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          name:
                                              _model.productNameController.text,
                                          priceUnit: double.tryParse(
                                              _model.amountController.text),
                                          productId: AccountingApiGroupGroup
                                              .accountingLineProductDetailsCall
                                              .productId(
                                            (_model.moveLineInvoiceDetailRes
                                                    ?.jsonBody ??
                                                ''),
                                          ),
                                          productUomId: AccountingApiGroupGroup
                                              .accountingLineProductDetailsCall
                                              .uOMId(
                                            (_model.moveLineInvoiceDetailRes
                                                    ?.jsonBody ??
                                                ''),
                                          ),
                                          quantity: double.tryParse(
                                              _model.quantityController.text),
                                          eq: widget.id,
                                          priceSubtotal: double.tryParse(
                                              _model.subtotalController.text),
                                          priceTotal: functions
                                                          .isNull(getJsonField(
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
                                              : double.tryParse(_model
                                                  .subtotalController.text),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.invoiceUpdate2?.succeeded ??
                                            true)) {
                                          _model.updationDetailForTotalEdit2 =
                                              await AccountingApiGroupGroup
                                                  .invoiceViewCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            eq: AccountingApiGroupGroup
                                                .accountingLineProductDetailsCall
                                                .moveId(
                                              (_model.moveLineInvoiceDetailRes
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                          );
                                          _shouldSetState = true;
                                          if ((_model
                                                  .updationDetailForTotalEdit2
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().update(() {
                                              FFAppState().totalsJson =
                                                  functions.totalsJson(
                                                      'account',
                                                      AccountingApiGroupGroup
                                                          .invoiceViewCall
                                                          .lineList(
                                                            (_model.updationDetailForTotalEdit2
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!;
                                              FFAppState().ProductEditItem =
                                                  functions
                                                      .editItemProductList(
                                                          'invoice',
                                                          AccountingApiGroupGroup
                                                              .invoiceViewCall
                                                              .lineList(
                                                                (_model.updationDetailForTotalEdit2
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
                                                    page: 'invoice',
                                                    id: AccountingApiGroupGroup
                                                        .accountingLineProductDetailsCall
                                                        .moveId(
                                                      (_model.moveLineInvoiceDetailRes
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
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
                                                    page: 'invoice',
                                                    id: AccountingApiGroupGroup
                                                        .accountingLineProductDetailsCall
                                                        .moveId(
                                                      (_model.moveLineInvoiceDetailRes
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));

                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                        } else {
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '2nz1phjf' /* Save & New */,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
            ),
          ),
        ],
      ),
    );
  }
}
