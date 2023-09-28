import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => SpalashscreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SpalashscreenWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'Attendance',
          path: '/attendance',
          builder: (context, params) => AttendanceWidget(),
        ),
        FFRoute(
          name: 'LeaveCreate',
          path: '/leaveCreate',
          builder: (context, params) => LeaveCreateWidget(),
        ),
        FFRoute(
          name: 'AttendanceHistory',
          path: '/attendanceHistory',
          builder: (context, params) => AttendanceHistoryWidget(),
        ),
        FFRoute(
          name: 'LeaveList',
          path: '/leaveList',
          builder: (context, params) => LeaveListWidget(
            status: params.getParam('status', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ExpensesView',
          path: '/expensesView',
          builder: (context, params) => ExpensesViewWidget(
            expenseId: params.getParam('expenseId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Appspares',
          path: '/appspares',
          builder: (context, params) => AppsparesWidget(
            serviceId: params.getParam('serviceId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'ExpenceCreate',
          path: '/expenceCreate',
          builder: (context, params) => ExpenceCreateWidget(),
        ),
        FFRoute(
          name: 'Expenses_list',
          path: '/expensesList',
          builder: (context, params) => ExpensesListWidget(
            state: params.getParam('state', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Leave_info',
          path: '/leaveInfo',
          builder: (context, params) => LeaveInfoWidget(
            leaveId: params.getParam('leaveId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(),
        ),
        FFRoute(
          name: 'forgetPassword',
          path: '/forgetPassword',
          builder: (context, params) => ForgetPasswordWidget(),
        ),
        FFRoute(
          name: 'ProjectDashboard',
          path: '/projectDashboard',
          builder: (context, params) => ProjectDashboardWidget(),
        ),
        FFRoute(
          name: 'boq_list',
          path: '/boqList',
          builder: (context, params) => BoqListWidget(),
        ),
        FFRoute(
          name: 'TaskDetails',
          path: '/taskDetails',
          builder: (context, params) => TaskDetailsWidget(
            taskid: params.getParam('taskid', ParamType.int),
            taskname: params.getParam('taskname', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Leadlist',
          path: '/leadlist',
          builder: (context, params) => LeadlistWidget(),
        ),
        FFRoute(
          name: 'Project',
          path: '/project',
          builder: (context, params) => ProjectWidget(),
        ),
        FFRoute(
          name: 'Leadedit',
          path: '/leadedit',
          builder: (context, params) => LeadeditWidget(
            leadid: params.getParam('leadid', ParamType.int),
            leadname: params.getParam('leadname', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Leadview',
          path: '/leadview',
          builder: (context, params) => LeadviewWidget(
            leadid: params.getParam('leadid', ParamType.int),
            leadname: params.getParam('leadname', ParamType.String),
            type: params.getParam('type', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ProjectsDetails',
          path: '/projectsDetails',
          builder: (context, params) => ProjectsDetailsWidget(
            projectid: params.getParam('projectid', ParamType.int),
            projectname: params.getParam('projectname', ParamType.String),
            stageid: params.getParam('stageid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'boq_view',
          path: '/boqView',
          builder: (context, params) => BoqViewWidget(),
        ),
        FFRoute(
          name: 'My_profile',
          path: '/myProfile',
          builder: (context, params) => MyProfileWidget(),
        ),
        FFRoute(
          name: 'Recent_activity_list',
          path: '/recentActivityList',
          builder: (context, params) => RecentActivityListWidget(
            leadid: params.getParam('leadid', ParamType.int),
            respartnername: params.getParam('respartnername', ParamType.String),
            leadname: params.getParam('leadname', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'TaskList',
          path: '/taskList',
          builder: (context, params) => TaskListWidget(
            stageid: params.getParam('stageid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'BOQ_Descripition',
          path: '/bOQDescripition',
          builder: (context, params) => BOQDescripitionWidget(),
        ),
        FFRoute(
          name: 'creatin_BOQ_Descripition',
          path: '/creatinBOQDescripition',
          builder: (context, params) => CreatinBOQDescripitionWidget(),
        ),
        FFRoute(
          name: 'Boqdescription',
          path: '/boqdescription',
          builder: (context, params) => BoqdescriptionWidget(),
        ),
        FFRoute(
          name: 'Add_Scope_work',
          path: '/addScopeWork',
          builder: (context, params) => AddScopeWorkWidget(),
        ),
        FFRoute(
          name: 'adding_unit_amount',
          path: '/addingUnitAmount',
          builder: (context, params) => AddingUnitAmountWidget(),
        ),
        FFRoute(
          name: 'user_task',
          path: '/userTask',
          builder: (context, params) => UserTaskWidget(
            userid: params.getParam('userid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'tasklog',
          path: '/tasklog',
          builder: (context, params) => TasklogWidget(
            taskid: params.getParam('taskid', ParamType.int),
            taskname: params.getParam('taskname', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'user_task_dashboard',
          path: '/userTaskDashboard',
          builder: (context, params) => UserTaskDashboardWidget(
            userid: params.getParam('userid', ParamType.int),
            username: params.getParam('username', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'CRM_team',
          path: '/cRMTeam',
          builder: (context, params) => CRMTeamWidget(),
        ),
        FFRoute(
          name: 'DashboardCRM',
          path: '/dashboardCRM',
          builder: (context, params) => DashboardCRMWidget(),
        ),
        FFRoute(
          name: 'quotation_list_page',
          path: '/quotationListPage',
          builder: (context, params) => QuotationListPageWidget(
            startdate: params.getParam('startdate', ParamType.String),
            state: params.getParam('state', ParamType.String),
            enddate: params.getParam('enddate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'quotation_view_page',
          path: '/quotationViewPage',
          builder: (context, params) => QuotationViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'sale_order_list_page',
          path: '/saleOrderListPage',
          builder: (context, params) => SaleOrderListPageWidget(
            startdate: params.getParam('startdate', ParamType.String),
            state: params.getParam('state', ParamType.String),
            enddate: params.getParam('enddate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'quotation_edit_page',
          path: '/quotationEditPage',
          builder: (context, params) => QuotationEditPageWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'sale_order_view_page',
          path: '/saleOrderViewPage',
          builder: (context, params) => SaleOrderViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'leadDashboardlist',
          path: '/leadDashboardlist',
          builder: (context, params) => LeadDashboardlistWidget(
            stageid: params.getParam('stageid', ParamType.int),
            leadType: params.getParam('leadType', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Grn_list_page',
          path: '/grnListPage',
          builder: (context, params) => GrnListPageWidget(
            state: params.getParam('state', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'invoice_list_page',
          path: '/invoiceListPage',
          builder: (context, params) => InvoiceListPageWidget(
            state: params.getParam('state', ParamType.String),
            statedate: params.getParam('statedate', ParamType.String),
            enddate: params.getParam('enddate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'invoice_view_page',
          path: '/invoiceViewPage',
          builder: (context, params) => InvoiceViewPageWidget(
            name: params.getParam('name', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'quotation_create_page',
          path: '/quotationCreatePage',
          builder: (context, params) => QuotationCreatePageWidget(),
        ),
        FFRoute(
          name: 'ERPDashboard',
          path: '/eRPDashboard',
          builder: (context, params) => ERPDashboardWidget(),
        ),
        FFRoute(
          name: 'contact_create_page',
          path: '/contactCreatePage',
          builder: (context, params) => ContactCreatePageWidget(
            id: params.getParam('id', ParamType.int),
            string: params.getParam('string', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'contact_edit_page',
          path: '/contactEditPage',
          builder: (context, params) => ContactEditPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'spalashscreen',
          path: '/spalashscreen',
          builder: (context, params) => SpalashscreenWidget(),
        ),
        FFRoute(
          name: 'contact_page_list',
          path: '/contactPageList',
          builder: (context, params) => ContactPageListWidget(
            contactType: params.getParam('contactType', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'RFQ_edit',
          path: '/rFQEdit',
          builder: (context, params) => RFQEditWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'purchase_rfq_lists',
          path: '/purchaseRfqLists',
          builder: (context, params) => PurchaseRfqListsWidget(
            state: params.getParam('state', ParamType.String),
            date: params.getParam('date', ParamType.String),
            endDate: params.getParam('endDate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'purchase_order_lists',
          path: '/purchaseOrderLists',
          builder: (context, params) => PurchaseOrderListsWidget(
            state: params.getParam('state', ParamType.String),
            enddate: params.getParam('enddate', ParamType.String),
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'invoice_edit_page',
          path: '/invoiceEditPage',
          builder: (context, params) => InvoiceEditPageWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Vendorbill_list_page',
          path: '/vendorbillListPage',
          builder: (context, params) => VendorbillListPageWidget(
            state: params.getParam('state', ParamType.String),
            startdate: params.getParam('startdate', ParamType.String),
            enddate: params.getParam('enddate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Payment_list_page',
          path: '/paymentListPage',
          builder: (context, params) => PaymentListPageWidget(
            type: params.getParam('type', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ExpenseUpdate',
          path: '/expenseUpdate',
          builder: (context, params) => ExpenseUpdateWidget(
            expenseid: params.getParam('expenseid', ParamType.int),
            productid: params.getParam('productid', ParamType.int),
            vendorid: params.getParam('vendorid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'delivery_challen_list',
          path: '/deliveryChallenList',
          builder: (context, params) => DeliveryChallenListWidget(
            state: params.getParam('state', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'inventory_list_page',
          path: '/inventoryListPage',
          builder: (context, params) => InventoryListPageWidget(
            status: params.getParam('status', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'vendor_bill_edit',
          path: '/vendorBillEdit',
          builder: (context, params) => VendorBillEditWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'purchase_rfq_view',
          path: '/purchaseRfqView',
          builder: (context, params) => PurchaseRfqViewWidget(
            name: params.getParam('name', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'purchase_order_view',
          path: '/purchaseOrderView',
          builder: (context, params) => PurchaseOrderViewWidget(
            name: params.getParam('name', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Grn_view_Page',
          path: '/grnViewPage',
          builder: (context, params) => GrnViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'vendor_bill_view',
          path: '/vendorBillView',
          builder: (context, params) => VendorBillViewWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'contact_sale_lists_table',
          path: '/contactSaleListsTable',
          builder: (context, params) => ContactSaleListsTableWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'payment_view_page',
          path: '/paymentViewPage',
          builder: (context, params) => PaymentViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Account_invoice_create_page',
          path: '/accountInvoiceCreatePage',
          builder: (context, params) => AccountInvoiceCreatePageWidget(),
        ),
        FFRoute(
          name: 'contact_invoices_lists_table',
          path: '/contactInvoicesListsTable',
          builder: (context, params) => ContactInvoicesListsTableWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'contact_purchase_order_list',
          path: '/contactPurchaseOrderList',
          builder: (context, params) => ContactPurchaseOrderListWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'contact_Payment_lists_table',
          path: '/contactPaymentListsTable',
          builder: (context, params) => ContactPaymentListsTableWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'delivery_challan_view',
          path: '/deliveryChallanView',
          builder: (context, params) => DeliveryChallanViewWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'service_list_page',
          path: '/serviceListPage',
          builder: (context, params) => ServiceListPageWidget(),
        ),
        FFRoute(
          name: 'Accoun_Vendor_create_page',
          path: '/accounVendorCreatePage',
          builder: (context, params) => AccounVendorCreatePageWidget(),
        ),
        FFRoute(
          name: 'setting',
          path: '/setting',
          builder: (context, params) => SettingWidget(),
        ),
        FFRoute(
          name: 'Account_Payment_Create',
          path: '/accountPaymentCreate',
          builder: (context, params) => AccountPaymentCreateWidget(),
        ),
        FFRoute(
          name: 'CategoriesWithProduct',
          path: '/categoriesWithProduct',
          builder: (context, params) => CategoriesWithProductWidget(
            categoryId: params.getParam('categoryId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'dashboardTasklist',
          path: '/dashboardTasklist',
          builder: (context, params) => DashboardTasklistWidget(
            stageid: params.getParam('stageid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'LeadDashboardOpportunity',
          path: '/leadDashboardOpportunity',
          builder: (context, params) => LeadDashboardOpportunityWidget(
            stageid: params.getParam('stageid', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Contact_view_page_new',
          path: '/contactViewPageNew',
          builder: (context, params) => ContactViewPageNewWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Inventory_View',
          path: '/inventoryView',
          builder: (context, params) => InventoryViewWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'DeliveryChellan_create_page',
          path: '/deliveryChellanCreatePage',
          builder: (context, params) => DeliveryChellanCreatePageWidget(),
        ),
        FFRoute(
          name: 'LeadOpportunityList',
          path: '/leadOpportunityList',
          builder: (context, params) => LeadOpportunityListWidget(
            stageId: params.getParam('stageId', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'CreateLead',
          path: '/createLead',
          builder: (context, params) => CreateLeadWidget(),
        ),
        FFRoute(
          name: 'Purchase_Rfq_create_new',
          path: '/purchaseRfqCreateNew',
          builder: (context, params) => PurchaseRfqCreateNewWidget(),
        ),
        FFRoute(
          name: 'Welcome',
          path: '/welcome',
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: 'Product_details_new',
          path: '/productDetailsNew',
          builder: (context, params) => ProductDetailsNewWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
            productTemplateId:
                params.getParam('productTemplateId', ParamType.int),
            productName: params.getParam('productName', ParamType.String),
            variantList:
                params.getParam<int>('variantList', ParamType.int, true),
          ),
        ),
        FFRoute(
          name: 'inventory_quantity_hand',
          path: '/inventoryQuantityHand',
          builder: (context, params) => InventoryQuantityHandWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'MaterialEquipmentList',
          path: '/materialEquipmentList',
          builder: (context, params) => MaterialEquipmentListWidget(),
        ),
        FFRoute(
          name: 'EquipmentCreate',
          path: '/equipmentCreate',
          builder: (context, params) => EquipmentCreateWidget(
            projectId: params.getParam('projectId', ParamType.int),
            projectName: params.getParam('projectName', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'inventory_forecast_quantity',
          path: '/inventoryForecastQuantity',
          builder: (context, params) => InventoryForecastQuantityWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'inventory_purchase_page',
          path: '/inventoryPurchasePage',
          builder: (context, params) => InventoryPurchasePageWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'inventory_sold_page',
          path: '/inventorySoldPage',
          builder: (context, params) => InventorySoldPageWidget(
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'inventory_create',
          path: '/inventoryCreate',
          builder: (context, params) => InventoryCreateWidget(),
        ),
        FFRoute(
          name: 'Equipment_view',
          path: '/equipmentView',
          builder: (context, params) => EquipmentViewWidget(
            name: params.getParam('name', ParamType.String),
            id: params.getParam('id', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'MyActivityCalendar',
          path: '/myActivityCalendar',
          builder: (context, params) => MyActivityCalendarWidget(),
        ),
        FFRoute(
          name: 'GRN_create_page',
          path: '/gRNCreatePage',
          builder: (context, params) => GRNCreatePageWidget(),
        ),
        FFRoute(
          name: 'WorkOrderList',
          path: '/workOrderList',
          builder: (context, params) => WorkOrderListWidget(),
        ),
        FFRoute(
          name: 'Pick_create_page',
          path: '/pickCreatePage',
          builder: (context, params) => PickCreatePageWidget(),
        ),
        FFRoute(
          name: 'Pick_list_page',
          path: '/pickListPage',
          builder: (context, params) => PickListPageWidget(
            state: params.getParam('state', ParamType.String),
            requisation: params.getParam('requisation', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Pick_view_Page',
          path: '/pickViewPage',
          builder: (context, params) => PickViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'WorkOrderDetails',
          path: '/workOrderDetails',
          builder: (context, params) => WorkOrderDetailsWidget(
            workorderid: params.getParam('workorderid', ParamType.int),
            workordername: params.getParam('workordername', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'LeaveRequestList',
          path: '/leaveRequestList',
          builder: (context, params) => LeaveRequestListWidget(
            fromdate: params.getParam('fromdate', ParamType.String),
            todate: params.getParam('todate', ParamType.String),
            state: params.getParam('state', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'CEO_Dashboard',
          path: '/cEODashboard',
          builder: (context, params) => CEODashboardWidget(),
        ),
        FFRoute(
          name: 'ManufacturingOrder',
          path: '/manufacturingOrder',
          builder: (context, params) => ManufacturingOrderWidget(),
        ),
        FFRoute(
          name: 'ManufacturingDetails',
          path: '/manufacturingDetails',
          builder: (context, params) => ManufacturingDetailsWidget(
            manufacturingid: params.getParam('manufacturingid', ParamType.int),
            manufacturingname:
                params.getParam('manufacturingname', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'PurchaseDashboardList',
          path: '/purchaseDashboardList',
          builder: (context, params) => PurchaseDashboardListWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'GRNPick_view_Page',
          path: '/gRNPickViewPage',
          builder: (context, params) => GRNPickViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'OpportunityDashboardList',
          path: '/opportunityDashboardList',
          builder: (context, params) => OpportunityDashboardListWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'QuotationDashboard',
          path: '/quotationDashboard',
          builder: (context, params) => QuotationDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'SalelistDashboard',
          path: '/salelistDashboard',
          builder: (context, params) => SalelistDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'InvoiceDashboard',
          path: '/invoiceDashboard',
          builder: (context, params) => InvoiceDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'PaymentDashboard',
          path: '/paymentDashboard',
          builder: (context, params) => PaymentDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'ExpenseDashboard',
          path: '/expenseDashboard',
          builder: (context, params) => ExpenseDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'DCPick_view_Page',
          path: '/dCPickViewPage',
          builder: (context, params) => DCPickViewPageWidget(
            id: params.getParam('id', ParamType.int),
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'VendorDashboard',
          path: '/vendorDashboard',
          builder: (context, params) => VendorDashboardWidget(
            startdate: params.getParam('startdate', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Sale_order_delivery_chellan_list',
          path: '/saleOrderDeliveryChellanList',
          builder: (context, params) => SaleOrderDeliveryChellanListWidget(
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Purchase_order_Grn_list',
          path: '/purchaseOrderGrnList',
          builder: (context, params) => PurchaseOrderGrnListWidget(
            name: params.getParam('name', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'UnassileadDashboardlist',
          path: '/unassileadDashboardlist',
          builder: (context, params) => UnassileadDashboardlistWidget(
            leadType: params.getParam('leadType', ParamType.String),
            duration: params.getParam('duration', ParamType.String),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.rightToLeft,
        duration: Duration(milliseconds: 300),
      );
}
