import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reusable_component/view_product_item_accounting/view_product_item_accounting_widget.dart';
import '/reusable_component/view_product_item_purchase/view_product_item_purchase_widget.dart';
import '/reusable_component/view_product_item_sales/view_product_item_sales_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'common_view_page_widget.dart' show CommonViewPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonViewPageModel extends FlutterFlowModel<CommonViewPageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ViewProductItemAccounting component.
  late ViewProductItemAccountingModel viewProductItemAccountingModel;
  // Model for ViewProductItemPurchase component.
  late ViewProductItemPurchaseModel viewProductItemPurchaseModel;
  // Model for ViewProductItemSales component.
  late ViewProductItemSalesModel viewProductItemSalesModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    viewProductItemAccountingModel =
        createModel(context, () => ViewProductItemAccountingModel());
    viewProductItemPurchaseModel =
        createModel(context, () => ViewProductItemPurchaseModel());
    viewProductItemSalesModel =
        createModel(context, () => ViewProductItemSalesModel());
  }

  void dispose() {
    viewProductItemAccountingModel.dispose();
    viewProductItemPurchaseModel.dispose();
    viewProductItemSalesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
