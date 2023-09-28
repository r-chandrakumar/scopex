import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start HymechApiGroup Group Code

class HymechApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static MyServiceticketsCall myServiceticketsCall = MyServiceticketsCall();
  static GetCustomerIdCall getCustomerIdCall = GetCustomerIdCall();
  static GetProductIdCall getProductIdCall = GetProductIdCall();
  static ServiceCreateNewCall serviceCreateNewCall = ServiceCreateNewCall();
  static LoginCall loginCall = LoginCall();
  static DashboardFilterListCall dashboardFilterListCall =
      DashboardFilterListCall();
  static FindCheckInOrOutCall findCheckInOrOutCall = FindCheckInOrOutCall();
  static CheckOutCall checkOutCall = CheckOutCall();
  static AttendanceListCall attendanceListCall = AttendanceListCall();
  static ServiceOrderCall serviceOrderCall = ServiceOrderCall();
  static ServiceOrderViewCall serviceOrderViewCall = ServiceOrderViewCall();
  static KanBanStageListCall kanBanStageListCall = KanBanStageListCall();
  static GetIdWithKanbanNameCall getIdWithKanbanNameCall =
      GetIdWithKanbanNameCall();
  static ServiceStageUpdateCall serviceStageUpdateCall =
      ServiceStageUpdateCall();
  static AnswerSelectionCheckListCall answerSelectionCheckListCall =
      AnswerSelectionCheckListCall();
  static QuestionViewCall questionViewCall = QuestionViewCall();
  static AnswerValueCheckListCall answerValueCheckListCall =
      AnswerValueCheckListCall();
  static QuestionListCall questionListCall = QuestionListCall();
  static QuestionViewWithpageNumberCall questionViewWithpageNumberCall =
      QuestionViewWithpageNumberCall();
  static StartVisitCall startVisitCall = StartVisitCall();
  static EndVisitCall endVisitCall = EndVisitCall();
  static LeaveListCall leaveListCall = LeaveListCall();
  static ListLeaveTypeCall listLeaveTypeCall = ListLeaveTypeCall();
  static CreateLeaveCall createLeaveCall = CreateLeaveCall();
  static ExpenseListCall expenseListCall = ExpenseListCall();
  static AttendanceGroupCall attendanceGroupCall = AttendanceGroupCall();
  static ExpenseStoreCall expenseStoreCall = ExpenseStoreCall();
  static ExpenseViewCall expenseViewCall = ExpenseViewCall();
  static ProductListCall productListCall = ProductListCall();
  static AccountListCall accountListCall = AccountListCall();
  static EmployeeListCall employeeListCall = EmployeeListCall();
  static MyTeamCall myTeamCall = MyTeamCall();
  static SparePartsPostCall sparePartsPostCall = SparePartsPostCall();
  static SparePartsListCall sparePartsListCall = SparePartsListCall();
  static SparePartsDeleteCall sparePartsDeleteCall = SparePartsDeleteCall();
  static ServicePartsExistCheckCall servicePartsExistCheckCall =
      ServicePartsExistCheckCall();
  static ComplaintTypeCall complaintTypeCall = ComplaintTypeCall();
  static LocationListCall locationListCall = LocationListCall();
  static VehicleLIstCall vehicleLIstCall = VehicleLIstCall();
  static LeaveInfoCall leaveInfoCall = LeaveInfoCall();
  static ComplaintCreateCall complaintCreateCall = ComplaintCreateCall();
  static ExpenseProductListCall expenseProductListCall =
      ExpenseProductListCall();
  static ServicePartUpdateCall servicePartUpdateCall = ServicePartUpdateCall();
  static ComplaintUserAssignCall complaintUserAssignCall =
      ComplaintUserAssignCall();
  static UsersCall usersCall = UsersCall();
  static ChangeAssignStatusCall changeAssignStatusCall =
      ChangeAssignStatusCall();
  static VehicleServiceHistoryCall vehicleServiceHistoryCall =
      VehicleServiceHistoryCall();
  static SeriveProblemsCall seriveProblemsCall = SeriveProblemsCall();
  static RequestPartListCall requestPartListCall = RequestPartListCall();
  static RequestPartCreateCall requestPartCreateCall = RequestPartCreateCall();
  static MasterServiceCommentCall masterServiceCommentCall =
      MasterServiceCommentCall();
  static ServiceProductListCall serviceProductListCall =
      ServiceProductListCall();
  static GetServiceProductNameCall getServiceProductNameCall =
      GetServiceProductNameCall();
  static GetProblemNameCall getProblemNameCall = GetProblemNameCall();
  static ListProblemsCall listProblemsCall = ListProblemsCall();
  static UpdateOdometerCall updateOdometerCall = UpdateOdometerCall();
  static UpdateServiceProblemCall updateServiceProblemCall =
      UpdateServiceProblemCall();
  static ProblemCreateCall problemCreateCall = ProblemCreateCall();
  static ServiceWithProblemsCall serviceWithProblemsCall =
      ServiceWithProblemsCall();
  static GetVehicleIdCall getVehicleIdCall = GetVehicleIdCall();
  static GetServiceNameCall getServiceNameCall = GetServiceNameCall();
  static UserTicketViewCall userTicketViewCall = UserTicketViewCall();
  static ProjectListCall projectListCall = ProjectListCall();
  static TaskListCall taskListCall = TaskListCall();
  static ProjectInfoCall projectInfoCall = ProjectInfoCall();
  static TaskInfoCall taskInfoCall = TaskInfoCall();
  static ProjectTeamCall projectTeamCall = ProjectTeamCall();
  static TaskExpenseCall taskExpenseCall = TaskExpenseCall();
  static TurnOffOrOnTaskCall turnOffOrOnTaskCall = TurnOffOrOnTaskCall();
  static StartTaskCall startTaskCall = StartTaskCall();
  static StopTaskCall stopTaskCall = StopTaskCall();
  static AllTeamMembersCall allTeamMembersCall = AllTeamMembersCall();
  static CustomerListCall customerListCall = CustomerListCall();
  static PartnerListCall partnerListCall = PartnerListCall();
  static StageTypeCall stageTypeCall = StageTypeCall();
  static TaskStageChangeCall taskStageChangeCall = TaskStageChangeCall();
  static DashboardHoldStatusCountCall dashboardHoldStatusCountCall =
      DashboardHoldStatusCountCall();
  static DashboardInprogressCountCall dashboardInprogressCountCall =
      DashboardInprogressCountCall();
  static DashboardNotStartedCountCall dashboardNotStartedCountCall =
      DashboardNotStartedCountCall();
  static DashboardTaskCompletedCountCall dashboardTaskCompletedCountCall =
      DashboardTaskCompletedCountCall();
  static UserDetailsCall userDetailsCall = UserDetailsCall();
  static BOQListCall bOQListCall = BOQListCall();
  static ContactInfoCall contactInfoCall = ContactInfoCall();
  static ListCRMCall listCRMCall = ListCRMCall();
  static TaskListViewCall taskListViewCall = TaskListViewCall();
  static CrmViewCall crmViewCall = CrmViewCall();
  static CRMUpdateCall cRMUpdateCall = CRMUpdateCall();
  static CRMStageUpdateCall cRMStageUpdateCall = CRMStageUpdateCall();
  static CrmEditDataCall crmEditDataCall = CrmEditDataCall();
  static ListLeadSourceCall listLeadSourceCall = ListLeadSourceCall();
  static AddExpensesCall addExpensesCall = AddExpensesCall();
  static CheckInCall checkInCall = CheckInCall();
  static CheckinnewCall checkinnewCall = CheckinnewCall();
  static UserProjectsCall userProjectsCall = UserProjectsCall();
  static UserTaskCall userTaskCall = UserTaskCall();
  static VendorListCall vendorListCall = VendorListCall();
  static MyActivityListCall myActivityListCall = MyActivityListCall();
  static GetModelIdCall getModelIdCall = GetModelIdCall();
  static UserLeadListCall userLeadListCall = UserLeadListCall();
  static MyActivityCreateCall myActivityCreateCall = MyActivityCreateCall();
  static ActivityUpdateCall activityUpdateCall = ActivityUpdateCall();
  static ActivityDeleteCall activityDeleteCall = ActivityDeleteCall();
  static ListLeadActivityCall listLeadActivityCall = ListLeadActivityCall();
  static ActivityTypesCall activityTypesCall = ActivityTypesCall();
  static ListCRMStageCall listCRMStageCall = ListCRMStageCall();
  static CheckTaskOnCall checkTaskOnCall = CheckTaskOnCall();
  static ListUserTaskCall listUserTaskCall = ListUserTaskCall();
  static LeadSearchbyStageCall leadSearchbyStageCall = LeadSearchbyStageCall();
  static ListStageTypesCall listStageTypesCall = ListStageTypesCall();
  static ProjectStateListCall projectStateListCall = ProjectStateListCall();
  static TimesheetlogCall timesheetlogCall = TimesheetlogCall();
  static LeadsearchCall leadsearchCall = LeadsearchCall();
  static TasksearchCall tasksearchCall = TasksearchCall();
  static UserTaskStageCountCall userTaskStageCountCall =
      UserTaskStageCountCall();
  static CRMPostCall cRMPostCall = CRMPostCall();
  static MycrmteamCall mycrmteamCall = MycrmteamCall();
  static ContactListCall contactListCall = ContactListCall();
  static CRMDashboardCall cRMDashboardCall = CRMDashboardCall();
  static MyProfileEditCall myProfileEditCall = MyProfileEditCall();
  static MyOpportunityCall myOpportunityCall = MyOpportunityCall();
  static OpportunityListDashboardCall opportunityListDashboardCall =
      OpportunityListDashboardCall();
  static ExpenseFileAttachCall expenseFileAttachCall = ExpenseFileAttachCall();
  static ExpenseEditDataCall expenseEditDataCall = ExpenseEditDataCall();
  static ExpenseUpdateCall expenseUpdateCall = ExpenseUpdateCall();
  static ConvertOpportunityCall convertOpportunityCall =
      ConvertOpportunityCall();
  static StageWiseTaskListCall stageWiseTaskListCall = StageWiseTaskListCall();
  static CrmListStageWiseCall crmListStageWiseCall = CrmListStageWiseCall();
  static CheckPresentAttendanceCall checkPresentAttendanceCall =
      CheckPresentAttendanceCall();
  static OpportunitySearchCall opportunitySearchCall = OpportunitySearchCall();
  static AssignedToCall assignedToCall = AssignedToCall();
  static AcitivityDateListCall acitivityDateListCall = AcitivityDateListCall();
  static ActivityupdateCall activityupdateCall = ActivityupdateCall();
  static ActivitydeleteCall activitydeleteCall = ActivitydeleteCall();
  static ListOfLeadForActivityCall listOfLeadForActivityCall =
      ListOfLeadForActivityCall();
  static ActivityDetailsCall activityDetailsCall = ActivityDetailsCall();
  static TaskTimerOnOffCall taskTimerOnOffCall = TaskTimerOnOffCall();
  static LogNoteListCall logNoteListCall = LogNoteListCall();
  static LogNoteCreateCall logNoteCreateCall = LogNoteCreateCall();
  static LeaveRequestListCall leaveRequestListCall = LeaveRequestListCall();
  static LeaveAproveOrRejectCall leaveAproveOrRejectCall =
      LeaveAproveOrRejectCall();
  static CheckLeaveTakenCall checkLeaveTakenCall = CheckLeaveTakenCall();
  static ActivityMarkAsDoneCall activityMarkAsDoneCall =
      ActivityMarkAsDoneCall();
  static ProjectUserAssignCall projectUserAssignCall = ProjectUserAssignCall();
  static NonProjectUsersCall nonProjectUsersCall = NonProjectUsersCall();
  static LeaveTypeCall leaveTypeCall = LeaveTypeCall();
  static UnAssignedLeadListCall unAssignedLeadListCall =
      UnAssignedLeadListCall();
}

class MyServiceticketsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MyServicetickets',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_service_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCustomerIdCall {
  Future<ApiCallResponse> call({
    String? eq = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Customer Id',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/customer_name',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic customerIdResult(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[0].id''',
        true,
      );
}

class GetProductIdCall {
  Future<ApiCallResponse> call({
    String? eq = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Product Id',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_name',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productIdResult(dynamic response) => getJsonField(
        response,
        r'''$.product_template[0].id''',
        true,
      );
}

class ServiceCreateNewCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? description = '',
    String? packagename = '',
    String? priority = 'High',
    int? selectcustomers,
    int? staged = 1,
    int? productname,
    String? natureofcomplaint = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "date": "${date}",
  "description": "${description}",
  "packagename": "",
  "priority": "${priority}",
  "productname": ${productname},
  "selectcustomers": ${selectcustomers},
  "staged": ${staged},
  "natureofcomplaint": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Service Create New',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_post',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic loginId(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.partner_id''',
      );
  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.login.result.accessToken''',
      );
  dynamic loginApiResult(dynamic response) => getJsonField(
        response,
        r'''$.login.result.status''',
      );
  dynamic loginResultData(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data''',
      );
  dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.email''',
      );
  dynamic userRole(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.user_type''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.login.result.message''',
      );
  dynamic currentcompany(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.default_company''',
      );
  dynamic useraccess(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.user_access''',
        true,
      );
  dynamic currency(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.currency''',
      );
  dynamic currencyId(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.currency_id''',
      );
  dynamic loginID(dynamic response) => getJsonField(
        response,
        r'''$.login.result.data.id''',
      );
}

class DashboardFilterListCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DashboardFilterList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FindCheckInOrOutCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FindCheckInOrOut',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/check_in_out',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic isCheckout(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance[0].check_out''',
      );
  dynamic checkinTime(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance[0].check_in''',
      );
  dynamic attendanceId(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance[0].id''',
      );
  dynamic attendanceList(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance''',
        true,
      );
}

class CheckOutCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? checkOut = '',
    String? locationOut = '',
    String? authToken = '',
    double? workedHours,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "check_out": "${checkOut}",
  "location_out": "${locationOut}",
  "worked_hours": ${workedHours}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckOut',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/checkout',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AttendanceListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? startDate = '',
    String? endDate = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Attendance List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/attendance',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start_date': startDate,
        'end_date': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic attendanceList(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance''',
        true,
      );
}

class ServiceOrderCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Service Order',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_order',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic listOfVisits(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order''',
        true,
      );
}

class ServiceOrderViewCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Service Order View',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_order_log',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].name''',
      );
  dynamic location(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_location.complete_name''',
      );
  dynamic enddate(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].scheduled_date_end''',
      );
  dynamic mobilenumber(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_person.mobile''',
      );
  dynamic startdate(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].scheduled_date_start''',
      );
  dynamic stagename(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_stage.name''',
      );
  dynamic orderlog(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].service_order_logs''',
        true,
      );
  dynamic productLIst(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_equipment_fsm_order_rels''',
        true,
      );
  dynamic questions(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].questions_lines_answers''',
        true,
      );
  dynamic stageid(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].stage_id''',
      );
  dynamic visitId(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].id''',
      );
  dynamic vehicle(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_vehicle.name''',
      );
  dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_order_type.name''',
      );
  dynamic testingQuestions(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_order_testing_questions_rels''',
        true,
      );
  dynamic visitStarttime(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].date_start''',
      );
  dynamic visitEndtime(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].date_end''',
      );
  dynamic assignedName(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_person.res_partner.name''',
      );
  dynamic vechileId(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].fsm_vehicle.id''',
      );
  dynamic kmValue(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].odometer''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].longitude''',
      );
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].latitude''',
      );
  dynamic distance(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].distance_kms''',
      );
}

class KanBanStageListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'KanBanStageList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/kanban_stages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stageIds(dynamic response) => getJsonField(
        response,
        r'''$.fsm_stage[:].id''',
        true,
      );
  dynamic nameList(dynamic response) => getJsonField(
        response,
        r'''$.fsm_stage[:].name''',
        true,
      );
  dynamic stageList(dynamic response) => getJsonField(
        response,
        r'''$.fsm_stage''',
        true,
      );
}

class GetIdWithKanbanNameCall {
  Future<ApiCallResponse> call({
    String? eq = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetIdWithKanbanName',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/kaban_name',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic kanBanId(dynamic response) => getJsonField(
        response,
        r'''$.fsm_stage[:].id''',
      );
}

class ServiceStageUpdateCall {
  Future<ApiCallResponse> call({
    int? eq,
    int? stageId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "stage_id": ${stageId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ServiceStageUpdate',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_update_stage',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AnswerSelectionCheckListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? lineId,
    int? serviceId,
    String? comment = '',
    String? userValues = '',
    String? questionStatus = '',
    int? checkList,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "line_id": ${lineId},
  "service_id": ${serviceId},
  "comment": "${comment}",
  "user_values": "${userValues}",
  "question_status": "completed",
  "check_list": ${checkList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AnswerSelectionCheckList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/checklist_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuestionViewCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'QuestionView',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/question_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic chenlistType(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].checklist_type''',
      );
  dynamic conditions(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].conditions''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].name''',
      );
  dynamic value(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].valuess''',
      );
  dynamic lineId(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].line_id''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].id''',
      );
  dynamic answer(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].answer''',
      );
}

class AnswerValueCheckListCall {
  Future<ApiCallResponse> call({
    int? lineId,
    int? serviceId,
    String? comment = '',
    String? userAnswer = '',
    String? authToken = '',
    int? checkList,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "line_id": ${lineId},
  "service_id": ${serviceId},
  "comment": "${comment}",
  "user_answer": "${userAnswer}",
  "question_status": "completed",
  "check_list": ${checkList}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AnswerValueCheckList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/checklist_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuestionListCall {
  Future<ApiCallResponse> call({
    int? visitid,
    String? authToken = '',
    int? checklistId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'QuestionList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_question_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'question': checklistId,
        '_line': visitid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic questionCount(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer_aggregate.aggregate.count''',
      );
  dynamic fail(dynamic response) => getJsonField(
        response,
        r'''$.fail.aggregate.count''',
      );
  dynamic pass(dynamic response) => getJsonField(
        response,
        r'''$.pass.aggregate.count''',
      );
  dynamic completed(dynamic response) => getJsonField(
        response,
        r'''$.completed.aggregate.count''',
      );
}

class QuestionViewWithpageNumberCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? lineId,
    int? questionNo,
    int? checkList,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'QuestionViewWithpageNumber',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/question_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'question_no': questionNo,
        'line_id': lineId,
        'check_list': checkList,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic checkListType(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].checklist_type''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].name''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].id''',
      );
  dynamic optionValue(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].user_values''',
      );
  dynamic answerValue(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].user_answer''',
      );
  dynamic comment(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].comment''',
      );
  dynamic checkListStatus(dynamic response) => getJsonField(
        response,
        r'''$.questions_lines_answer[:].question_status''',
      );
}

class StartVisitCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? dateStart = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "date_start": "${dateStart}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'StartVisit',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/actual',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EndVisitCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? dateEnd = '',
    String? authToken = '',
    String? dateStart = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "date_end": "${dateEnd}",
  "date_start": "${dateStart}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EndVisit',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/actual',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LeaveListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? ids,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${ids}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Leave List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/leaves',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic paidOff(dynamic response) => getJsonField(
        response,
        r'''$.paidoff.aggregate.count''',
      );
  dynamic unPaid(dynamic response) => getJsonField(
        response,
        r'''$.unpaid.aggregate.count''',
      );
  dynamic sick(dynamic response) => getJsonField(
        response,
        r'''$.sick.aggregate.count''',
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave_aggregate.aggregate.count''',
      );
}

class ListLeaveTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Leave Type',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_leave_type',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typeId(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave_type[:].id''',
        true,
      );
  dynamic typeName(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave_type[:].name''',
        true,
      );
}

class CreateLeaveCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? dateFrom = '',
    String? dateTo = '',
    int? holidayStatusId,
    String? holidayType = '',
    String? notes = '',
    double? numberOfDays,
    String? privateName = '',
    String? requestDateFrom = '',
    String? requestDateTo = '',
    String? requestDateFromPeriod = '',
    String? requestHourFrom = '',
    String? requestHourTo = '',
    bool? requestUnitHours,
    bool? requestUnitHalf,
  }) {
    final ffApiRequestBody = '''
{
  "holiday_status_id": ${holidayStatusId},
  "date_from": "${dateFrom}",
  "date_to": "${dateTo}",
  "notes": "${notes}",
  "number_of_days": ${numberOfDays},
  "private_name": "${privateName}",
  "request_date_from": "${requestDateFrom}",
  "request_date_to": "${requestDateTo}",
  "holiday_type": "employee",
  "request_unit_hours": ${requestUnitHours},
  "request_hour_from": "${requestHourFrom}",
  "request_hour_to": "${requestHourTo}",
  "request_unit_half": ${requestUnitHalf},
  "request_date_from_period": "${requestDateFromPeriod}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Leave',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/post_leave',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpenseListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? state = '',
    int? limit,
    int? offset,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'state': state,
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic expenseList(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense''',
        true,
      );
}

class AttendanceGroupCall {
  Future<ApiCallResponse> call({
    String? checkIn = '',
    String? checkOut = '',
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "check_in": "${checkIn}",
  "check_out": "${checkOut}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Attendance Group',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/attendance_group',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpenseStoreCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? description = '',
    String? name = '',
    String? paymentMode = '',
    int? productId,
    double? quantity,
    double? unitAmount,
    double? totalAmount,
    int? accountId,
    String? authToken = '',
    String? refer = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "date": "${date}",
  "name": "${name}",
  "description": "${description}",
  "payment_mode": "${paymentMode}",
  "product_id": ${productId},
  "quantity": "${quantity}",
  "unit_amount": "${unitAmount}",
  "total_amount": "${totalAmount}",
  "account_id": ${accountId},
  "reference": "${refer}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expense Store',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/create_expense',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic expenceId(dynamic response) => getJsonField(
        response,
        r'''$.insert_hr_expense.returning[:].id''',
      );
}

class ExpenseViewCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense View',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].name''',
      );
  dynamic paymentMode(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].payment_mode''',
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].date''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].state''',
      );
  dynamic unitamount(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].unit_amount''',
      );
  dynamic employee(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].hr_employee.name''',
      );
  dynamic account(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].account_account.name''',
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].total_amount''',
      );
  dynamic quantity(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].quantity''',
      );
  dynamic product(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].product_product.product_template.name''',
      );
  dynamic taskname(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].project_task.name''',
      );
  dynamic projectname(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].project_project.name''',
      );
  dynamic vendorname(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].res_partner.name''',
      );
  dynamic productid(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].product_product.product_template.id''',
      );
  dynamic vendorid(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].res_partner.id''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic irAttach(dynamic response) => getJsonField(
        response,
        r'''$.ir_attachment''',
        true,
      );
}

class ProductListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Product List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productList(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
        true,
      );
  dynamic productIds(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.id''',
        true,
      );
  dynamic productNames(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.name''',
        true,
      );
}

class AccountListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Account List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_journal_account',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accountIds(dynamic response) => getJsonField(
        response,
        r'''$.account_account[:].id''',
        true,
      );
  dynamic accountName(dynamic response) => getJsonField(
        response,
        r'''$.account_account[:].name''',
        true,
      );
}

class EmployeeListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Employee List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_employee',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic employeeIds(dynamic response) => getJsonField(
        response,
        r'''$.hr_employee[:].id''',
        true,
      );
  dynamic employeeName(dynamic response) => getJsonField(
        response,
        r'''$.hr_employee[:].name''',
        true,
      );
}

class MyTeamCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'My Team',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_team_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic teamList(dynamic response) => getJsonField(
        response,
        r'''$.crm_team''',
        true,
      );
  dynamic teammembers(dynamic response) => getJsonField(
        response,
        r'''$.crm_team[:].team_members''',
        true,
      );
}

class SparePartsPostCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? accessoriesId,
    String? authToken = '',
    int? serviceId,
    double? qty,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "date": "${date}",
  "accessories_id": ${accessoriesId},
  "service_id": ${serviceId},
  "qty": ${qty}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Spare Parts Post',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_accessories_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SparePartsListCall {
  Future<ApiCallResponse> call({
    int? serviceId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Spare Parts List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_service_parts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'service_id': serviceId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic spareIist(dynamic response) => getJsonField(
        response,
        r'''$.product_accessories_line''',
        true,
      );
}

class SparePartsDeleteCall {
  Future<ApiCallResponse> call({
    int? servicePartLineId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Spare Parts Delete',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_service_part',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'service_part_line_id': servicePartLineId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ServicePartsExistCheckCall {
  Future<ApiCallResponse> call({
    int? accessoriesId,
    int? servieId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Service Parts Exist Check',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/check_service_part_exist',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'accessories_id': accessoriesId,
        'accessories_name': servieId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic servicepartId(dynamic response) => getJsonField(
        response,
        r'''$.product_accessories_line[:].id''',
      );
  dynamic qty(dynamic response) => getJsonField(
        response,
        r'''$.product_accessories_line[:].qty''',
      );
}

class ComplaintTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Complaint Type',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/order_type',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typeIds(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order_type[:].id''',
        true,
      );
  dynamic typeNames(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order_type[:].name''',
        true,
      );
}

class LocationListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Location List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/location_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic locationIds(dynamic response) => getJsonField(
        response,
        r'''$.fsm_location[:].id''',
        true,
      );
  dynamic locationNames(dynamic response) => getJsonField(
        response,
        r'''$.fsm_location[:].complete_name''',
        true,
      );
}

class VehicleLIstCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Vehicle LIst',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/vehicle_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic vehileName(dynamic response) => getJsonField(
        response,
        r'''$.fsm_vehicle[:].name''',
      );
  dynamic vehileId(dynamic response) => getJsonField(
        response,
        r'''$.fsm_vehicle[:].id''',
      );
}

class LeaveInfoCall {
  Future<ApiCallResponse> call({
    int? leaveId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Leave Info',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/leave_info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'leave_id': leaveId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].hr_employee.name''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].state''',
      );
  dynamic noOfDays(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].number_of_days''',
      );
  dynamic to(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].date_to''',
      );
  dynamic from(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].date_from''',
      );
  dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].notes''',
      );
  dynamic leaveType(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].hr_leave_type.name''',
      );
  dynamic half(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].request_unit_half''',
      );
  dynamic permission(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave[:].request_unit_hours''',
      );
}

class ComplaintCreateCall {
  Future<ApiCallResponse> call({
    int? stageId,
    int? warehouseId,
    String? priority = '',
    int? locationId,
    String? name = '',
    int? type,
    int? vehicleId,
    int? teamId,
    String? description = '',
    String? authToken = '',
    dynamic? serviceHistoryLinesJson,
    String? domainUrl = '',
  }) {
    final serviceHistoryLines = _serializeJson(serviceHistoryLinesJson);
    final ffApiRequestBody = '''
{
  "stage_id": ${stageId},
  "warehouse_id": ${warehouseId},
  "priority": "${priority}",
  "location_id": ${locationId},
  "name": "test",
  "type": ${type},
  "vehicle_id": ${vehicleId},
  "team_id": ${teamId},
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Complaint Create',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/visit_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic complaintId(dynamic response) => getJsonField(
        response,
        r'''$.insert_fsm_order.returning[:].id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.insert_fsm_order.returning[:].name''',
      );
}

class ExpenseProductListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense Product List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_expenses_product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productNames(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].name''',
        true,
      );
  dynamic productIds(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].product_products[:].id''',
        true,
      );
}

class ServicePartUpdateCall {
  Future<ApiCallResponse> call({
    int? accessoriesId,
    int? serviceId,
    String? date = '',
    int? qty,
    int? servicePartLineId,
    int? userId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "accessories_id": ${accessoriesId},
  "accessories_name": ${serviceId},
  "date": "${date}",
  "qty": ${qty},
  "user_id": ${userId},
  "service_part_line_id": ${servicePartLineId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Service Part Update',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_part_update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ComplaintUserAssignCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    int? personId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "person_id": ${personId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Complaint User Assign',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_assgin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UsersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Users',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/fsm_person_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic usersNames(dynamic response) => getJsonField(
        response,
        r'''$.fsm_person[:].res_partner.name''',
        true,
      );
  dynamic userIds(dynamic response) => getJsonField(
        response,
        r'''$.fsm_person[:].id''',
        true,
      );
}

class ChangeAssignStatusCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? serviceId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "service_id": ${serviceId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Assign Status',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/stage_assigned',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VehicleServiceHistoryCall {
  Future<ApiCallResponse> call({
    int? vehicleId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Vehicle Service History',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_vehicle_service',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'vehicle_id': vehicleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fsmOrder(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order''',
        true,
      );
}

class SeriveProblemsCall {
  Future<ApiCallResponse> call({
    int? serviceId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Serive Problems',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'service_id': serviceId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic serviceList(dynamic response) => getJsonField(
        response,
        r'''$.service_history_line''',
        true,
      );
}

class RequestPartListCall {
  Future<ApiCallResponse> call({
    int? serviceId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Request Part List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_material_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'service_id': serviceId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic partList(dynamic response) => getJsonField(
        response,
        r'''$.service_material_list''',
        true,
      );
}

class RequestPartCreateCall {
  Future<ApiCallResponse> call({
    int? productId,
    int? serviceId,
    int? qty,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "service_id": ${serviceId},
  "qty": ${qty}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request Part Create ',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_material_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MasterServiceCommentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Master Service Comment',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_fsm_comment',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic commentIds(dynamic response) => getJsonField(
        response,
        r'''$.fsm_comment[:].id''',
        true,
      );
  dynamic commentNames(dynamic response) => getJsonField(
        response,
        r'''$.fsm_comment[:].comment''',
        true,
      );
}

class ServiceProductListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Service Product List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_service_parts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetServiceProductNameCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Service Product Name',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/get_product_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'product_id': productId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].name''',
      );
}

class GetProblemNameCall {
  Future<ApiCallResponse> call({
    int? problemId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Problem Name',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/get_problem_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'problem_id': problemId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.problem_master[:].problem_name''',
      );
}

class ListProblemsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Problems',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_problems',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic problemNames(dynamic response) => getJsonField(
        response,
        r'''$.problem_master[:].problem_name''',
        true,
      );
  dynamic problemIds(dynamic response) => getJsonField(
        response,
        r'''$.problem_master[:].id''',
        true,
      );
}

class UpdateOdometerCall {
  Future<ApiCallResponse> call({
    int? serviceId,
    int? odometerValue,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "service_id": ${serviceId},
  "odometer_value": ${odometerValue}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Odometer',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/update_odometer',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateServiceProblemCall {
  Future<ApiCallResponse> call({
    int? problemId,
    int? problemLineId,
    String? comment = '',
    int? selectComment,
    String? status = '',
    int? fsmOrder,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "problem_id": ${problemId},
  "problem_line_id": ${problemLineId},
  "comment": "${comment}",
  "select_comment": ${selectComment},
  "status": "${status}",
  "fsm_order": ${fsmOrder}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update service problem',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/update_service_problem',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProblemCreateCall {
  Future<ApiCallResponse> call({
    int? serviceId,
    String? comment = '',
    int? problemId,
    String? status = '',
    int? selectComment,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "service_id": ${serviceId},
  "comment": "${comment}",
  "problem_id": ${problemId},
  "status": "${status}",
  "select_comment": ${selectComment}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Problem Create',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_problem_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ServiceWithProblemsCall {
  Future<ApiCallResponse> call({
    int? stageId,
    int? warehouseId,
    int? vehicleId,
    String? description = '',
    int? locationId,
    String? name = '',
    String? priority = '',
    int? teamId,
    int? type,
    dynamic? serviceHistoryLinesJson,
    String? authToken = '',
    String? latitude = '',
    String? longitude = '',
    String? distanceKms = '',
    String? domainUrl = '',
  }) {
    final serviceHistoryLines = _serializeJson(serviceHistoryLinesJson);
    final ffApiRequestBody = '''
{
  "stage_id": ${stageId},
  "warehouse_id": ${warehouseId},
  "vehicle_id": ${vehicleId},
  "description": "${description}",
  "location_id": ${locationId},
  "priority": "${priority}",
  "team_id": ${teamId},
  "type": ${type},
  "name": "${name}",
  "service_history_lines": ${serviceHistoryLines},
  "latitude": "${latitude}",
  "longitude": "${longitude}",
  "distance_kms": "${distanceKms}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Service With Problems',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/service_with_muti_problem_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic serviceId(dynamic response) => getJsonField(
        response,
        r'''$.insert_fsm_order.returning[:].id''',
      );
}

class GetVehicleIdCall {
  Future<ApiCallResponse> call({
    String? eq = '',
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Vehicle Id',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/fsm_vehicle_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic vehicleId(dynamic response) => getJsonField(
        response,
        r'''$.fsm_vehicle[:].id''',
      );
}

class GetServiceNameCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? serviceId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "service_id": ${serviceId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Service Name',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/visit_sequence',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.visitsequence.result.message[:].name''',
      );
}

class UserTicketViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? userId,
    int? stageId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Ticket View',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/ticket_view_by_user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'user_id': userId,
        'stage_id': stageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic ticketname(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order[:].name''',
        true,
      );
  dynamic ticketlist(dynamic response) => getJsonField(
        response,
        r'''$.fsm_order''',
        true,
      );
}

class ProjectListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ProjectList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TaskListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? projectId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TaskList',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_lists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'project_id': projectId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic projecttask(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
}

class ProjectInfoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ProjectInfo',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic projectName(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].name''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_status''',
      );
  dynamic dateAndTime(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_start_date''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].description''',
      );
  dynamic assignee(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].res_user.res_partner.name''',
      );
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_tasks_aggregate.aggregate.count''',
      );
  dynamic enddate(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].end_date''',
      );
  dynamic datestart(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].date_start''',
      );
}

class TaskInfoCall {
  Future<ApiCallResponse> call({
    int? taskid,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Task Info',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'task_id': taskid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic assignedDate(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].date_assign''',
      );
  dynamic deadLine(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].date_deadline''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].description''',
      );
  dynamic taskName(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].name''',
      );
  dynamic customerName(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].res_partner.name''',
      );
  dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].resUserByUserId.res_partner.name''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].project_task_type.name''',
      );
  dynamic saleOrder(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].sale_order.name''',
      );
  dynamic projectName(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].project_project.name''',
      );
  dynamic taskId(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].id''',
      );
  dynamic taskTimeStatus(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].task_timer''',
      );
  dynamic latestTaskId(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].time_sheet[:].id''',
      );
  dynamic lateststartdate(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].time_sheet[:].date_start''',
      );
  dynamic productid(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].product_product.id''',
      );
  dynamic dateend(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].date_end''',
      );
  dynamic statusid(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].project_task_type.id''',
      );
  dynamic projectId(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].project_project.id''',
      );
  dynamic latestenddate(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].time_sheet[:].date_end''',
      );
  dynamic plannedHours(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].planned_hours''',
      );
  dynamic taskDuration(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].duration''',
      );
  dynamic currentTaskEndDate(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].time_sheet[0].date_end''',
      );
  dynamic currentTaskStartDate(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].time_sheet[0].date_start''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic irAttachTask(dynamic response) => getJsonField(
        response,
        r'''$.ir_attachment''',
        true,
      );
}

class ProjectTeamCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Project Team',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_team',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic useridss(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_user_rels[:].user_id''',
      );
  dynamic projects(dynamic response) => getJsonField(
        response,
        r'''$.project_project''',
        true,
      );
  dynamic projectuserroles(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_user_rels''',
        true,
      );
  dynamic userid(dynamic response) => getJsonField(
        response,
        r'''$.project_project[:].project_user_rels[:].res_user.res_partner..id''',
        true,
      );
}

class TaskExpenseCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? taskId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Task Expense',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_expense',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'task_id': taskId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TurnOffOrOnTaskCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? taskId,
    bool? taskTimer,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "task_id": ${taskId},
  "task_timer": ${taskTimer}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Turn Off Or On Task',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_timer_on_off',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic lineId(dynamic response) => getJsonField(
        response,
        r'''$.update_project_task.returning[:].id''',
      );
  dynamic tasktimer(dynamic response) => getJsonField(
        response,
        r'''$.update_project_task.returning[:].task_timer''',
      );
}

class StartTaskCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? taskId,
    String? date = '',
    String? dateStart = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "task_id": ${taskId},
  "date": "${date}",
  "name": "admin",
  "amount": 0,
  "account_id": 1,
  "company_id": 1,
  "date_start": "${dateStart}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Start Task',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_start_time',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskLineId(dynamic response) => getJsonField(
        response,
        r'''$.insert_account_analytic_line.returning[:].id''',
      );
}

class StopTaskCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? dateEnd = '',
    int? lineId,
    int? taskId,
    double? unitAmount,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "task_id": ${taskId},
  "line_id": ${lineId},
  "date_end": "${dateEnd}",
  "unit_amount": ${unitAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Stop Task',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_end_time',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic dateend(dynamic response) => getJsonField(
        response,
        r'''$.update_account_analytic_line.returning[:].date_end''',
      );
}

class AllTeamMembersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'All Team Members',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/team_all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CustomerListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? offset,
    int? limit,
    int? customerRank,
    String? supplierRank = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Customer List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact _list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'customer_rank': customerRank,
        'supplier_rank': supplierRank,
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PartnerListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Partner List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/partner_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StageTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Stage Type',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_stage_types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TaskStageChangeCall {
  Future<ApiCallResponse> call({
    int? taskId,
    int? stageId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "task_id": ${taskId},
  "stage_id": ${stageId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Task Stage Change',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_stage_change',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DashboardHoldStatusCountCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Hold Status Count',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_hold_status_count',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.project_task_aggregate.aggregate.count''',
      );
}

class DashboardInprogressCountCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Inprogress Count',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_inprogress_count',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.project_task_aggregate.aggregate.count''',
      );
}

class DashboardNotStartedCountCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Not Started Count',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_not_started_count',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.project_task_aggregate.aggregate.count''',
      );
}

class DashboardTaskCompletedCountCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Task Completed Count',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_task_completed_count',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.project_task_aggregate.aggregate.count''',
      );
}

class UserDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Details',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BOQListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? boqId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'BOQ List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_boq',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productbudget(dynamic response) => getJsonField(
        response,
        r'''$.product_budget''',
        true,
      );
}

class ContactInfoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? partnerId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Info',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact_info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].phone''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].email''',
      );
  dynamic designation(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].function''',
      );
  dynamic company(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].res_company''',
      );
  dynamic comment(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].comment''',
      );
  dynamic partnerid(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
      );
}

class ListCRMCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List CRM',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic crmList(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class TaskListViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    int? stageId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Task List View',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_task_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
        'stage_id': stageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic projectTask(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
}

class CrmViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? leadId,
    String? domainUrl = '',
    String? startDate = '',
    String? endDate = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Crm View',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'lead_id': leadId,
        'start_date': startDate,
        'end_date': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].id''',
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].priority''',
      );
  dynamic expectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].expected_revenue''',
      );
  dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].phone''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].email_from''',
      );
  dynamic zip(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].zip''',
      );
  dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].street''',
      );
  dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].type''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].city''',
      );
  dynamic mailactivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
  dynamic respartnerid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].res_partner.id''',
      );
  dynamic respartnername(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].res_partner.name''',
      );
  dynamic resuserName(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].res_user.res_partner.name''',
      );
  dynamic stageid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].crm_stage.id''',
      );
  dynamic leadname(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].name''',
      );
  dynamic stagename(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].crm_stage.name''',
      );
  dynamic leadSource(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].utm_source.name''',
      );
  dynamic contactName(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].contact_name''',
      );
  dynamic resUserId(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].res_user.id''',
      );
  dynamic lognote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
}

class CRMUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? name = '',
    String? emailFrom = '',
    String? phone = '',
    String? street = '',
    String? city = '',
    int? sourceId,
    String? zip = '',
    String? priority = '',
    double? probability,
    int? expectedRevenue,
    String? description = '',
    String? contactName = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "name": "${name}",
  "email_from": "${emailFrom}",
  "phone": "${phone}",
  "street": "${street}",
  "city": "${city}",
  "source_id": ${sourceId},
  "zip": "${zip}",
  "priority": "${priority}",
  "probability": ${probability},
  "expected_revenue": ${expectedRevenue},
  "description": "${description}",
  "contact_name": "${contactName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CRM Update',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CRMStageUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? leadId,
    int? stageId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
"lead_id":${leadId},
"stage_id":${stageId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CRM Stage Update',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_lead_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CrmEditDataCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? leadId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Crm Edit Data',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_edit_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'lead_id': leadId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].email_from''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].phone''',
      );
  dynamic partnerid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].partner_id''',
      );
  dynamic leadid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].id''',
      );
  dynamic expectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].expected_revenue''',
      );
  dynamic contactname(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].contact_name''',
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].priority''',
      );
  dynamic function(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].function''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].description''',
      );
  dynamic city(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].city''',
      );
  dynamic zip(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].zip''',
      );
  dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].street''',
      );
  dynamic leadname(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].name''',
      );
  dynamic sourceid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].utm_source.id''',
      );
  dynamic suorcename(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].utm_source.name''',
      );
  dynamic probability(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].probability''',
      );
}

class ListLeadSourceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Lead Source',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_lead_source',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic sourceid(dynamic response) => getJsonField(
        response,
        r'''$.utm_source[:].id''',
        true,
      );
  dynamic sourcename(dynamic response) => getJsonField(
        response,
        r'''$.utm_source[:].name''',
        true,
      );
}

class AddExpensesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? partner,
    int? productId,
    String? description = '',
    double? unitPrice,
    double? quantity,
    String? billReference = '',
    double? total,
    int? taskId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "partner": ${partner},
  "product_id": ${productId},
  "description": ${description},
  "unit_price": ${unitPrice},
  "quantity": ${quantity},
  "bill_reference": "${billReference}",
  "total": ${total},
  "task_id": ${taskId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Expenses',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_expense_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckInCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? checkIn = '',
    String? location = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "check_in": "${checkIn}",
  "location": "${location}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckIn',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/checkin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckinnewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? checkIn = '',
    String? location = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "check_in": "${checkIn}",
  "location": "${location}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkinnew',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/checkin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserProjectsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Projects',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_projects',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserTaskCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Task',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_task',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskid(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].id''',
        true,
      );
  dynamic taskname(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].name''',
        true,
      );
}

class VendorListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/vendor_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic partnername(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
        true,
      );
  dynamic partnerid(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
        true,
      );
}

class MyActivityListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MyActivityList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_activity_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic activity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class GetModelIdCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? modelName = '',
  }) {
    final ffApiRequestBody = '''
{
  "model_name": "${modelName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Model Id',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/get_model_id',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic model(dynamic response) => getJsonField(
        response,
        r'''$.ir_model''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.ir_model[:].id''',
      );
}

class UserLeadListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Lead List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_lead_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].id''',
        true,
      );
  dynamic leadname(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].name''',
        true,
      );
}

class MyActivityCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? activityTypeId,
    String? dateDeadline = '',
    String? summary = '',
    int? leadId,
    int? resModelId,
    String? domainUrl = '',
    int? userId,
  }) {
    final ffApiRequestBody = '''
{
  "activity_type_id": ${activityTypeId},
  "date_deadline": "${dateDeadline}",
  "summary": "${summary}",
  "lead_id": ${leadId},
  "res_model_id": ${resModelId},
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'My Activity Create',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_activity_create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ActivityUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? activityId,
    int? activityTypeId,
    String? summary = '',
    String? dateDeadline = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "activit_id": ${activityId},
  "activity_type_id": ${activityTypeId},
  "summary": "${summary}",
  "date_deadline": "${dateDeadline}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Activity Update',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ActivityDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? activityId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Activity Delete',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'activity_id': activityId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListLeadActivityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? leadId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Lead Activity',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_lead_activity',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'lead_id': leadId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic mailactivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class ActivityTypesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Activity Types',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity_type[:].id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity_type[:].name''',
        true,
      );
}

class ListCRMStageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List CRM Stage',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_crm_stage',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stageid(dynamic response) => getJsonField(
        response,
        r'''$.crm_stage[:].id''',
        true,
      );
  dynamic stagename(dynamic response) => getJsonField(
        response,
        r'''$.crm_stage[:].name''',
        true,
      );
}

class CheckTaskOnCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Task On',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/check_task_on',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskCount(dynamic response) => getJsonField(
        response,
        r'''$.account_analytic_line_aggregate.aggregate.count''',
      );
  dynamic taskName(dynamic response) => getJsonField(
        response,
        r'''$.account_analytic_line[0].project_task.name''',
      );
}

class ListUserTaskCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? userId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List User Task',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_user_task',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic projecttask(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
  dynamic taskname(dynamic response) => getJsonField(
        response,
        r'''$.project_task[:].name''',
        true,
      );
}

class LeadSearchbyStageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? stageId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Lead Searchby Stage  ',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/lead_search_by_stage',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'stage_id': stageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListStageTypesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List Stage Types',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_stage_types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic statusid(dynamic response) => getJsonField(
        response,
        r'''$.project_task_type[:].id''',
        true,
      );
  dynamic statusname(dynamic response) => getJsonField(
        response,
        r'''$.project_task_type[:].name''',
        true,
      );
}

class ProjectStateListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? state = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Project State List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_state_wise_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TimesheetlogCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? taskId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'timesheetlog',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/time_sheet_log',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'task_id': taskId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic log(dynamic response) => getJsonField(
        response,
        r'''$.account_analytic_line''',
        true,
      );
}

class LeadsearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Leadsearch',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/lead_search_by_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex ': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic crmlead(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class TasksearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Tasksearch',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_search_by_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic searchbarchild(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
}

class UserTaskStageCountCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'User Task Stage Count',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_task_stage_count',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic notstarted(dynamic response) => getJsonField(
        response,
        r'''$.not_started.aggregate.count''',
      );
  dynamic inProgress(dynamic response) => getJsonField(
        response,
        r'''$.in_Progress.aggregate.count''',
      );
  dynamic onhold(dynamic response) => getJsonField(
        response,
        r'''$.on_hold.aggregate.count''',
      );
  dynamic completed(dynamic response) => getJsonField(
        response,
        r'''$.completed.aggregate.count''',
      );
}

class CRMPostCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? name = '',
    String? emailFrom = '',
    String? phone = '',
    String? street = '',
    String? city = '',
    bool? active,
    int? stageId,
    String? zip = '',
    int? sourceId,
    String? priority = '',
    int? expectedRevenue,
    double? probability,
    String? description = '',
    String? contactName = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email_from": "${emailFrom}",
  "phone": "${phone}",
  "street": "${street}",
  "city": "${city}",
  "active": ${active},
  "stage_id": ${stageId},
  "zip": "${zip}",
  "source_id": ${sourceId},
  "priority": "${priority}",
  "expected_revenue": ${expectedRevenue},
  "probability": ${probability},
  "contact_name": "${contactName}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CRM Post',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MycrmteamCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Mycrmteam',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_crm_team',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resusers(dynamic response) => getJsonField(
        response,
        r'''$.crm_team[:].res_users''',
        true,
      );
}

class ContactListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    int? customerRank,
    int? supplierRank,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'supplier_rank': supplierRank,
        'customer_rank': customerRank,
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic partnerid(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
        true,
      );
  dynamic partnername(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
        true,
      );
}

class CRMDashboardCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? duration = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CRM Dashboard',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'duration': duration,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadcount(dynamic response) => getJsonField(
        response,
        r'''$.lead_count.aggregate.count''',
      );
  dynamic unassignedleadcount(dynamic response) => getJsonField(
        response,
        r'''$.unassigned_lead.aggregate.count''',
      );
  dynamic expectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.expected_revenue.aggregate.sum.expected_revenue''',
      );
  dynamic protectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.expected_revenue.aggregate.sum.prorated_revenue''',
      );
  dynamic newcount(dynamic response) => getJsonField(
        response,
        r'''$.new.aggregate.count''',
      );
  dynamic newexpectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.new.aggregate.sum.expected_revenue''',
      );
  dynamic qualifiedcount(dynamic response) => getJsonField(
        response,
        r'''$.qualified.aggregate.count''',
      );
  dynamic qualifiedexrevenue(dynamic response) => getJsonField(
        response,
        r'''$.qualified.aggregate.sum.expected_revenue''',
      );
  dynamic prepositioncount(dynamic response) => getJsonField(
        response,
        r'''$.Proposition.aggregate.count''',
      );
  dynamic prepositionexpectedrevenue(dynamic response) => getJsonField(
        response,
        r'''$.Proposition.aggregate.sum.expected_revenue''',
      );
  dynamic wonscount(dynamic response) => getJsonField(
        response,
        r'''$.won.aggregate.count''',
      );
  dynamic wonexprevenue(dynamic response) => getJsonField(
        response,
        r'''$.won.aggregate.sum.expected_revenue''',
      );
  dynamic allleadcount(dynamic response) => getJsonField(
        response,
        r'''$.all_lead_count.aggregate.count''',
      );
  dynamic sourceWiseName(dynamic response) => getJsonField(
        response,
        r'''$.source_wise_count[:].name''',
        true,
      );
  dynamic sourceWiseCount(dynamic response) => getJsonField(
        response,
        r'''$.source_wise_count[:].crm_leads_aggregate.aggregate.count''',
        true,
      );
  dynamic partnerWiseName(dynamic response) => getJsonField(
        response,
        r'''$.saleperson_wise_lead_count[:].res_partner.name''',
        true,
      );
  dynamic partnerWiseCount(dynamic response) => getJsonField(
        response,
        r'''$.saleperson_wise_lead_count[:].crm_leads_aggregate.aggregate.count''',
        true,
      );
  dynamic stages(dynamic response) => getJsonField(
        response,
        r'''$.stage_wise_lead_count.nodes''',
        true,
      );
  dynamic stagesName(dynamic response) => getJsonField(
        response,
        r'''$.stage_wise_lead_count.nodes[:].name''',
        true,
      );
  dynamic stagesCount(dynamic response) => getJsonField(
        response,
        r'''$.stage_wise_lead_count.nodes[:].crm_leads_aggregate.aggregate.count''',
        true,
      );
  dynamic stagesAmount(dynamic response) => getJsonField(
        response,
        r'''$.stage_wise_lead_count.nodes[:].crm_leads_aggregate.aggregate.sum.expected_revenue''',
        true,
      );
  dynamic leadWon(dynamic response) => getJsonField(
        response,
        r'''$.lead_won[:].crm_leads_aggregate.aggregate.count''',
      );
  dynamic opportunitycount(dynamic response) => getJsonField(
        response,
        r'''$.opportunity_count.aggregate.count''',
      );
}

class MyProfileEditCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? phone = '',
    String? comment = '',
    int? companyId,
    String? name = '',
    String? function = '',
    String? email = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "phone": "${phone}",
  "comment": "${comment}",
  "company_id": ${companyId},
  "name": "${name}",
  "function": "${function}",
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'My Profile Edit',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_profile_edit',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MyOpportunityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? stageId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'My Opportunity',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/my_opportunity',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'stage_id': stageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic crmlead(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
  dynamic crmstage(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].crm_stage''',
        true,
      );
}

class OpportunityListDashboardCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? start = '',
    String? end = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Opportunity List Dashboard',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/opportunity_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpenseFileAttachCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? companyId,
    String? fileName = '',
    String? files = '',
    int? resId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "company_id": ${companyId},
  "file_name": "${fileName}",
  "files": "${files}",
  "res_id": ${resId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ExpenseFile Attach',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_attach',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpenseEditDataCall {
  Future<ApiCallResponse> call({
    int? expenseId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense Edit Data',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_edit_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'expense_id': expenseId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].date''',
      );
  dynamic accountid(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].account_account.id''',
      );
  dynamic accountname(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].account_account.name''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].description''',
      );
  dynamic expenseid(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].id''',
      );
  dynamic expensename(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].name''',
      );
  dynamic paymentmode(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].payment_mode''',
      );
  dynamic quantity(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].quantity''',
      );
  dynamic totalamount(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].total_amount''',
      );
  dynamic unitamount(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].unit_amount''',
      );
  dynamic productid(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].product_product.id''',
      );
  dynamic productname(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense[:].product_product.product_template.name''',
      );
}

class ExpenseUpdateCall {
  Future<ApiCallResponse> call({
    int? id,
    int? productId,
    String? name = '',
    double? unitAmount,
    double? quantity,
    int? productUomId,
    String? date = '',
    String? paymentMode = '',
    double? totalAmount,
    int? accountId,
    String? description = '',
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "product_id": ${productId},
  "name": "${name}",
  "unit_amount": ${unitAmount},
  "quantity": ${quantity},
  "product_uom_id": ${productUomId},
  "date": "${date}",
  "payment_mode": "${paymentMode}",
  "total_amount": ${totalAmount},
  "account_id": ${accountId},
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expense Update',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConvertOpportunityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? leadId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "lead_id": ${leadId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Convert Opportunity',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/convert_oppertunity',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StageWiseTaskListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? stageId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Stage Wise Task List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/stage_wise_task_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'stage_id': stageId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tasklist(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
}

class CrmListStageWiseCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? state,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Crm List Stage Wise',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_list_stage_wise',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'stage': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic crmList(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class CheckPresentAttendanceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Present Attendance',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/check_present',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic attendancelist(dynamic response) => getJsonField(
        response,
        r'''$.hr_attendance''',
        true,
      );
}

class OpportunitySearchCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Opportunity Search',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/opportunity_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadlist(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class AssignedToCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Assigned To',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/res_users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resuserName(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].res_partner''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].res_partner.id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].res_partner.name''',
        true,
      );
  dynamic resId(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].id''',
        true,
      );
}

class AcitivityDateListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? eq = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Acitivity Date List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/acitivity_datelist',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class ActivityupdateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? activityId,
    int? activityTypeId,
    String? summary = '',
    String? dateDeadline = '',
  }) {
    final ffApiRequestBody = '''
{
  "activity_id": ${activityId},
  "activity_type_id": ${activityTypeId},
  "summary": "${summary}",
  "date_deadline": "${dateDeadline}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Activityupdate',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ActivitydeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? activityId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Activitydelete',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'activity_id': activityId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListOfLeadForActivityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List of Lead for Activity',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/lead_list_activity',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadid(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].id''',
        true,
      );
  dynamic leadname(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead[:].name''',
        true,
      );
  dynamic leadDetail(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class ActivityDetailsCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? eq,
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Activity Details',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/activity_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadId(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].lead_id''',
      );
  dynamic resUserId(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].res_user.res_partner.id''',
      );
  dynamic resUserName(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].res_user.res_partner.name''',
      );
  dynamic activityTypeId(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].mail_activity_type.id''',
      );
  dynamic activityTypeName(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].mail_activity_type.name''',
      );
  dynamic activityDueDate(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].date_deadline''',
      );
  dynamic summary(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].summary''',
      );
  dynamic activityId(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].id''',
      );
  dynamic activityResUserId(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].res_user.id''',
      );
  dynamic leadname(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].lead.name''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity[:].res_name''',
      );
}

class TaskTimerOnOffCall {
  Future<ApiCallResponse> call({
    int? taskId,
    String? domainUrl = '',
    String? authToken = '',
    String? startPosition = '',
    String? endPosition = '',
  }) {
    final ffApiRequestBody = '''
{
  "task_id": ${taskId},
  "start_position": "${startPosition}",
  "end_position": "${endPosition}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Task Timer On Off',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_timer',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LogNoteListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Log Note List',
      apiUrl: '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/lead_log',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
}

class LogNoteCreateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? bodyData = '',
    int? leadId,
    String? model = '',
  }) {
    final ffApiRequestBody = '''
{
  "body": "${bodyData}",
  "lead_id": ${leadId},
  "model": "${model}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Log Note Create',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/lead_log_create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LeaveRequestListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? dateTo = '',
    String? dateFrom = '',
    String? state = '',
  }) {
    final ffApiRequestBody = '''
{
  "date_to": "${dateTo}",
  "date_from": "${dateFrom}",
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Leave Request List',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/manager_leave_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leaveList(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave''',
        true,
      );
}

class LeaveAproveOrRejectCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? id,
    String? state = '',
    String? reportNote = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}",
  "report_note": "${reportNote}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Leave Aprove or Reject',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/leave_approver',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckLeaveTakenCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? dateFrom = '',
    String? dateTo = '',
  }) {
    final ffApiRequestBody = '''
{
  "date_from": "${dateFrom}",
  "date_to": "${dateTo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckLeaveTaken',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/date_wise_leave',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leaveList(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave''',
        true,
      );
}

class ActivityMarkAsDoneCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ActivityMarkAsDone',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/mark_as_done',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProjectUserAssignCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? userId,
    int? projectId,
  }) {
    final ffApiRequestBody = '''
{
  "objects": [
    {
      "user_id": ${userId},
      "project_id": ${projectId}
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Project User Assign',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_user_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NonProjectUsersCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    List<int>? userIdList,
  }) {
    final userId = _serializeList(userIdList);

    final ffApiRequestBody = '''
{
  "_nin": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Non Project Users',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/user_not_in_project',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic res(dynamic response) => getJsonField(
        response,
        r'''$.res_users''',
        true,
      );
}

class LeaveTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Leave Type',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_leave_type',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leaveId(dynamic response) => getJsonField(
        response,
        r'''$.hr_leave_type[:].id''',
        true,
      );
}

class UnAssignedLeadListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? duration = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UnAssignedLeadList',
      apiUrl:
          '${HymechApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_unassigned_lead',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'duration': duration,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic leadlist(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

/// End HymechApiGroup Group Code

/// Start Sales Api Group Group Code

class SalesApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static SaleOrderListCall saleOrderListCall = SaleOrderListCall();
  static QuotationListCall quotationListCall = QuotationListCall();
  static SaleOrderViewCall saleOrderViewCall = SaleOrderViewCall();
  static SaleOrderCreateCall saleOrderCreateCall = SaleOrderCreateCall();
  static SaleOrderLineProductPostCall saleOrderLineProductPostCall =
      SaleOrderLineProductPostCall();
  static SaleOrderLineProductDetailCall saleOrderLineProductDetailCall =
      SaleOrderLineProductDetailCall();
  static SaleOrderLineProductUpdateCall saleOrderLineProductUpdateCall =
      SaleOrderLineProductUpdateCall();
  static SaleOrderDeleteCall saleOrderDeleteCall = SaleOrderDeleteCall();
  static SaleOrderLineProductDeleteCall saleOrderLineProductDeleteCall =
      SaleOrderLineProductDeleteCall();
  static SaleOrderUpdateCall saleOrderUpdateCall = SaleOrderUpdateCall();
  static ConvertToSaleOrderCall convertToSaleOrderCall =
      ConvertToSaleOrderCall();
  static SaleCountListCall saleCountListCall = SaleCountListCall();
  static SaleInvoiceConversionCall saleInvoiceConversionCall =
      SaleInvoiceConversionCall();
}

class SaleOrderListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? state = '',
    String? start = '',
    String? end = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "state": "${state}",
  "start": "${start}",
  "end": "${end}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order List',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleOrderFullList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
}

class QuotationListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? state = '',
    String? start = '',
    String? end = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "state": "${state}",
  "start": "${start}",
  "end": "${end}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quotation List',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleOrderFullList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
}

class SaleOrderViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order View',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic orderName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].name''',
      );
  dynamic orderDate(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].date_order''',
      );
  dynamic invoiceStatus(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].invoice_status''',
      );
  dynamic unTaxedAmount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].amount_untaxed''',
      );
  dynamic taxAmount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].amount_tax''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].amount_total''',
      );
  dynamic saleOrderLineProducts(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines''',
        true,
      );
  dynamic productQty(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines[:].product_uom_qty''',
        true,
      );
  dynamic productUnitPrice(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines[:].price_unit''',
        true,
      );
  dynamic productSubTotalPrice(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines[:].price_subtotal''',
        true,
      );
  dynamic pertnerName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].res_partner.name''',
      );
  dynamic partnerId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].res_partner.id''',
      );
  dynamic orderExpiryDate(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].commitment_date''',
      );
  dynamic paymentTermId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].payment_term_id''',
      );
  dynamic note(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].note''',
      );
  dynamic productPriceTax(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines[:].price_tax''',
        true,
      );
  dynamic lineJsons(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines''',
        true,
      );
  dynamic gstTax(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines[:].account_tax_sale_order_line_rels[:]''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].state''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic stockPickStatus(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].state''',
      );
  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class SaleOrderCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? partnerId,
    String? name = '',
    int? partnerInvoiceId,
    int? partnerShippingId,
    int? pricelistId,
    int? companyId,
    String? pickingPolicy = '',
    int? warehouseId,
    dynamic? saleOrderLinesJson,
    String? state = '',
    String? note = '',
    int? paymentTermId,
    double? amountTotal,
    String? commitmentDate = '',
    String? dateOrder = '',
    double? amountUntaxed,
    double? amountTax,
    int? currencyId,
  }) {
    final saleOrderLines = _serializeJson(saleOrderLinesJson);
    final ffApiRequestBody = '''
{
  "partner_id": ${partnerId},
  "name": "${name}",
  "currency_id": ${currencyId},
  "partner_invoice_id": ${partnerInvoiceId},
  "partner_shipping_id": ${partnerShippingId},
  "pricelist_id": ${pricelistId},
  "company_id": ${companyId},
  "picking_policy": "${pickingPolicy}",
  "warehouse_id": 1,
  "sale_order_lines": ${saleOrderLines},
  "state": "${state}",
  "note": "${note}",
  "payment_term_id": ${paymentTermId},
  "amount_total": ${amountTotal},
  "date_order": "${dateOrder}",
  "commitment_date": "${commitmentDate}",
  "amount_tax": ${amountTax},
  "amount_untaxed": ${amountUntaxed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Create',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleOrderLineProductPostCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? customerLead,
    String? name = '',
    dynamic? accountTaxSaleOrderLineRelsJson,
    int? orderId,
    double? priceSubtotal,
    double? priceUnit,
    int? productId,
    int? productUom,
    double? productUomQty,
    double? priceTax,
    double? priceTotal,
  }) {
    final accountTaxSaleOrderLineRels =
        _serializeJson(accountTaxSaleOrderLineRelsJson);
    final ffApiRequestBody = '''
{
  "account_tax_sale_order_line_rels": ${accountTaxSaleOrderLineRels},
  "customer_lead": ${customerLead},
  "name": "${name}",
  "order_id": ${orderId},
  "price_subtotal": ${priceSubtotal},
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_uom": ${productUom},
  "product_uom_qty": ${productUomQty},
  "price_tax": ${priceTax},
  "price_total": ${priceTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Line Product Post',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/order_line_insert',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleOrderLineProductDetailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Line Product Detail',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_line_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic partnerId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].order_partner_id''',
      );
  dynamic priceSubTotal(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].price_subtotal''',
      );
  dynamic priceTotal(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].price_total''',
      );
  dynamic pricePerUnit(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].price_unit''',
      );
  dynamic productUomQty(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].product_uom_qty''',
      );
  dynamic uOMDetail(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].uom_uom''',
      );
  dynamic uOMId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].uom_uom.id''',
      );
  dynamic uOMName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].uom_uom.name''',
      );
  dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].product_product.product_template.name''',
      );
  dynamic productTemplateId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].product_product.product_template.id''',
      );
  dynamic customerLead(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].customer_lead''',
      );
  dynamic taxName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].account_tax_sale_order_line_rels[:].account_tax.name''',
        true,
      );
  dynamic taxId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].account_tax_sale_order_line_rels[:].account_tax.id''',
        true,
      );
  dynamic taxDetail(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].account_tax_sale_order_line_rels[:].account_tax''',
        true,
      );
  dynamic saleOrderId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].order_id''',
      );
  dynamic saleorderList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:]''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].name''',
      );
  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].product_id''',
      );
  dynamic productPriceTax(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line[:].price_tax''',
      );
}

class SaleOrderLineProductUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    double? priceSubtotal,
    int? priceUnit,
    int? productId,
    double? productUomQty,
    String? name = '',
    double? priceTax,
    double? priceTotal,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "price_subtotal": ${priceSubtotal},
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_uom_qty": ${productUomQty},
  "name": "${name}",
  "price_tax": ${priceTax},
  "price_total": ${priceTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Line Product Update',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/order_line_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleOrderDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Delete',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_sale_order',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleOrderLineProductDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Line Product Delete',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/order_line_delete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic orderId(dynamic response) => getJsonField(
        response,
        r'''$.delete_sale_order_line.returning[:].order_id''',
      );
}

class SaleOrderUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    int? partnerId,
    int? paymentTermId,
    String? dateOrder = '',
    String? commitmentDate = '',
    String? note = '',
    double? amountUntaxed,
    double? amountTax,
    double? amountTotal,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "partner_id": ${partnerId},
  "payment_term_id": ${paymentTermId},
  "date_order": "${dateOrder}",
  "commitment_date": "${commitmentDate}",
  "note": "${note}",
  "amount_untaxed": ${amountUntaxed},
  "amount_tax": ${amountTax},
  "amount_total": ${amountTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Update',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConvertToSaleOrderCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? state = 'sale',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Convert To Sale Order',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_state',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleCountListCall {
  Future<ApiCallResponse> call({
    List<String>? listList,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final list = _serializeList(listList);

    final ffApiRequestBody = '''
{
  "state":${list}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Count list',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_count_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleInvoiceConversionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Invoice Conversion',
      apiUrl:
          '${SalesApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_invoice_conversion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Sales Api Group Group Code

/// Start Common Apis Group Group Code

class CommonApisGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static PartnersListCall partnersListCall = PartnersListCall();
  static PaymentTermListCall paymentTermListCall = PaymentTermListCall();
  static ProductSearchCall productSearchCall = ProductSearchCall();
  static ProductDetailCall productDetailCall = ProductDetailCall();
  static TaxListCall taxListCall = TaxListCall();
  static TaxDetailsCall taxDetailsCall = TaxDetailsCall();
  static SupplierListCall supplierListCall = SupplierListCall();
  static EmpLoyeeListCall empLoyeeListCall = EmpLoyeeListCall();
  static AccountsListCall accountsListCall = AccountsListCall();
  static TaxListWithSearchCall taxListWithSearchCall = TaxListWithSearchCall();
  static DeleteOneSignalCall deleteOneSignalCall = DeleteOneSignalCall();
  static CountryListCall countryListCall = CountryListCall();
  static StateListCall stateListCall = StateListCall();
  static BranchCompanyCall branchCompanyCall = BranchCompanyCall();
  static CompanyLoginCall companyLoginCall = CompanyLoginCall();
  static CustomerSearchCall customerSearchCall = CustomerSearchCall();
  static VendorSearchCall vendorSearchCall = VendorSearchCall();
  static GetCustomerDetailsCall getCustomerDetailsCall =
      GetCustomerDetailsCall();
  static GetCountryDetailsCall getCountryDetailsCall = GetCountryDetailsCall();
  static GetStateDetailsCall getStateDetailsCall = GetStateDetailsCall();
  static GetProductDetailsCall getProductDetailsCall = GetProductDetailsCall();
  static NotificationListCall notificationListCall = NotificationListCall();
  static SaleEmailCall saleEmailCall = SaleEmailCall();
  static PurchaseEmailCall purchaseEmailCall = PurchaseEmailCall();
  static InvoiceEmailCall invoiceEmailCall = InvoiceEmailCall();
  static NotificationUpdateCall notificationUpdateCall =
      NotificationUpdateCall();
  static TaskAttachCall taskAttachCall = TaskAttachCall();
  static DeleteAttachmentCall deleteAttachmentCall = DeleteAttachmentCall();
  static TransferwarehouseCall transferwarehouseCall = TransferwarehouseCall();
  static ResusersCall resusersCall = ResusersCall();
  static SalepersonUpdateCall salepersonUpdateCall = SalepersonUpdateCall();
  static SettingsCall settingsCall = SettingsCall();
  static AcitivitySwipeDateListCall acitivitySwipeDateListCall =
      AcitivitySwipeDateListCall();
  static PurchaseDropdownActivityCall purchaseDropdownActivityCall =
      PurchaseDropdownActivityCall();
  static SaleDropdownActivityCall saleDropdownActivityCall =
      SaleDropdownActivityCall();
  static InvoiceDropdownActivityCall invoiceDropdownActivityCall =
      InvoiceDropdownActivityCall();
  static BillDropdownActivityCall billDropdownActivityCall =
      BillDropdownActivityCall();
  static NotificationMarkAllCall notificationMarkAllCall =
      NotificationMarkAllCall();
}

class PartnersListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Partners List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/partner_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic partnerId(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
        true,
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
        true,
      );
  dynamic partnerStatus(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].active''',
        true,
      );
}

class PaymentTermListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Payment Term List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/payment_terms_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic paymentTermId(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_term[:].id''',
        true,
      );
  dynamic paymentTermName(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_term[:].name''',
        true,
      );
}

class ProductSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? regex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Product Search',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/product_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_regex': regex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productList(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
        true,
      );
}

class ProductDetailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Product Detail',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/product_template_line_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.list_price''',
      );
  dynamic unitName(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.uom_uom.name''',
      );
  dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.name''',
      );
  dynamic taxId(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_taxes_rels[:].account_tax.id''',
        true,
      );
  dynamic productDescription(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.description''',
      );
  dynamic taxName(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_taxes_rels[:].account_tax.name''',
        true,
      );
  dynamic taxPercentage(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_taxes_rels[:].account_tax.amount''',
        true,
      );
  dynamic unitId(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.uom_uom.id''',
      );
  dynamic productTemplateId(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.id''',
      );
  dynamic productLIst(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template''',
      );
}

class TaxListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Tax List',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/get_tax',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taxId(dynamic response) => getJsonField(
        response,
        r'''$.account_tax[:].id''',
        true,
      );
  dynamic taxName(dynamic response) => getJsonField(
        response,
        r'''$.account_tax[:].name''',
        true,
      );
  dynamic taxList(dynamic response) => getJsonField(
        response,
        r'''$.account_tax''',
        true,
      );
}

class TaxDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Tax Details',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/account_tax_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taxName(dynamic response) => getJsonField(
        response,
        r'''$.account_tax[:].name''',
      );
  dynamic taxId(dynamic response) => getJsonField(
        response,
        r'''$.account_tax[:].id''',
      );
  dynamic taxAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_tax[:].amount''',
      );
}

class SupplierListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Supplier List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/supplier_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic supplierId(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
        true,
      );
  dynamic suplierName(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
        true,
      );
  dynamic supplierDetail(dynamic response) => getJsonField(
        response,
        r'''$.res_partner''',
        true,
      );
}

class EmpLoyeeListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EmpLoyee List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/employee_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AccountsListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Accounts List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/accounts_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TaxListWithSearchCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Tax List With Search',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/tax_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_regex': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taxList(dynamic response) => getJsonField(
        response,
        r'''$.account_tax''',
        true,
      );
}

class DeleteOneSignalCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete One Signal',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/delete_one_signal',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CountryListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'country list',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/country_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic countryLIst(dynamic response) => getJsonField(
        response,
        r'''$.res_country''',
        true,
      );
}

class StateListCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'State list',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/country_based_states',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic countrystate(dynamic response) => getJsonField(
        response,
        r'''$.res_country[:].res_country_states''',
        true,
      );
  dynamic stateid(dynamic response) => getJsonField(
        response,
        r'''$.res_country[:].res_country_states[:].id''',
        true,
      );
  dynamic statename(dynamic response) => getJsonField(
        response,
        r'''$.res_country[:].res_country_states[:].name''',
        true,
      );
}

class BranchCompanyCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Branch Company',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/branch_company',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic compnayid(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].res_company_users_rels[:].res_company.id''',
        true,
      );
  dynamic companyname(dynamic response) => getJsonField(
        response,
        r'''$.res_users[:].res_company_users_rels[:].res_company.name''',
        true,
      );
}

class CompanyLoginCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? companyId,
    int? userId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "company_id": ${companyId},
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Company Login',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/company_login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.company_login.result.accesstoken''',
      );
}

class CustomerSearchCall {
  Future<ApiCallResponse> call({
    String? iregex = '',
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Customer Search',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/customer_search_dropdown',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic customerList(dynamic response) => getJsonField(
        response,
        r'''$.res_partner''',
        true,
      );
}

class VendorSearchCall {
  Future<ApiCallResponse> call({
    String? iregex = '',
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Search',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/vendor_search_dropdown',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic vendorList(dynamic response) => getJsonField(
        response,
        r'''$.res_partner''',
        true,
      );
}

class GetCustomerDetailsCall {
  Future<ApiCallResponse> call({
    int? customerId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Customer Details',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/get_customer_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'customer_id': customerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic customerDetails(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[0]''',
      );
}

class GetCountryDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? countryId,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Country Details',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/get_country_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'country_id': countryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stateList(dynamic response) => getJsonField(
        response,
        r'''$.res_country_state[0]''',
      );
}

class GetStateDetailsCall {
  Future<ApiCallResponse> call({
    int? stateId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get State Details',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/get_country_state_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'state_id': stateId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stateDetails(dynamic response) => getJsonField(
        response,
        r'''$.res_country_state[0]''',
      );
}

class GetProductDetailsCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Product Details',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/get_product_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'product_id': productId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productList(dynamic response) => getJsonField(
        response,
        r'''$.product_product[0]''',
      );
}

class NotificationListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Notification List',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/notification_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic notificationList(dynamic response) => getJsonField(
        response,
        r'''$.notification_list''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.un_read_count.aggregate.count''',
      );
}

class SaleEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? saleid,
  }) {
    final ffApiRequestBody = '''
{
  "saleid": ${saleid}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Email',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/sale_email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? purchaseid,
  }) {
    final ffApiRequestBody = '''
{
  "purchaseid": ${purchaseid}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Email',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InvoiceEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? invoiceid,
  }) {
    final ffApiRequestBody = '''
{
  "invoiceid": ${invoiceid}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Email',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NotificationUpdateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    int? eq,
    String? authToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq1": ${eq},
  "read_status": "read"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Notification Update',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/Notification_update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TaskAttachCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? resId,
    int? companyId,
    String? files = '',
    String? fileName = '',
  }) {
    final ffApiRequestBody = '''
{
  "file_name": "${fileName}",
  "files": "${files}",
  "res_id": ${resId},
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TaskAttach',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/task_attach',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteAttachmentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? attachmentId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Attachment',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/delete_attachment',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'attachment_id': attachmentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TransferwarehouseCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? eq = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Transferwarehouse',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/transfer_warehouse',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stockPickig(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
      );
}

class ResusersCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Resusers',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/res_users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic resUser(dynamic response) => getJsonField(
        response,
        r'''$.res_users''',
        true,
      );
}

class SalepersonUpdateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? eq,
    int? userId,
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq},
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SalepersonUpdate',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/saleperson_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SettingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? name = '',
    String? value = '',
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "value": "${value}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Settings',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/insert_dynamic_status',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AcitivitySwipeDateListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AcitivitySwipeDateList',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/acitivity_out_datelist',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic mailActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class PurchaseDropdownActivityCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PurchaseDropdownActivity',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_rfq',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic purchaseDrop(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
  dynamic purchaseId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order..id''',
        true,
      );
  dynamic purchaseName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order..name''',
        true,
      );
}

class SaleDropdownActivityCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SaleDropdownActivity',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/sale_draft',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleOrderDrop(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
  dynamic saleId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order..id''',
        true,
      );
  dynamic saleName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order..name''',
        true,
      );
}

class InvoiceDropdownActivityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'InvoiceDropdownActivity',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_draft',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic invoiceDrop(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
  dynamic invoiceId(dynamic response) => getJsonField(
        response,
        r'''$.account_move..id''',
        true,
      );
  dynamic invoiceName(dynamic response) => getJsonField(
        response,
        r'''$.account_move..name''',
        true,
      );
}

class BillDropdownActivityCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? search = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'BillDropdownActivity',
      apiUrl: '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/bill_draft',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billDrop(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
  dynamic billId(dynamic response) => getJsonField(
        response,
        r'''$.account_move..id''',
        true,
      );
  dynamic billName(dynamic response) => getJsonField(
        response,
        r'''$.account_move..name''',
        true,
      );
}

class NotificationMarkAllCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Notification Mark All',
      apiUrl:
          '${CommonApisGroupGroup.baseUrl}${domainUrl}/api/rest/list_notification_read',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Common Apis Group Group Code

/// Start Purchase Api Group Group Code

class PurchaseApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static RFQListCall rFQListCall = RFQListCall();
  static PurchaseOrderListCall purchaseOrderListCall = PurchaseOrderListCall();
  static PurchaseOrderViewCall purchaseOrderViewCall = PurchaseOrderViewCall();
  static PurchaseOrderCreateCall purchaseOrderCreateCall =
      PurchaseOrderCreateCall();
  static PurchaseOrderLineProductDetailCall purchaseOrderLineProductDetailCall =
      PurchaseOrderLineProductDetailCall();
  static PurchaseOrderLineProductUpdateCall purchaseOrderLineProductUpdateCall =
      PurchaseOrderLineProductUpdateCall();
  static PurchaseOrderLineProductCreateCall purchaseOrderLineProductCreateCall =
      PurchaseOrderLineProductCreateCall();
  static PurchaseOrderDeleteCall purchaseOrderDeleteCall =
      PurchaseOrderDeleteCall();
  static PurchaseOrderLineProductDeleteCall purchaseOrderLineProductDeleteCall =
      PurchaseOrderLineProductDeleteCall();
  static PurchaseOrderUpdateCall purchaseOrderUpdateCall =
      PurchaseOrderUpdateCall();
  static ConvertToPurchaseOrderCall convertToPurchaseOrderCall =
      ConvertToPurchaseOrderCall();
  static PurchaseBillConversionCall purchaseBillConversionCall =
      PurchaseBillConversionCall();
}

class RFQListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? start = '',
    String? end = '',
    String? state = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "start": "${start}",
  "end": "${end}",
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RFQ List',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_order_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic purchaseorder(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
}

class PurchaseOrderListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? start = '',
    String? end = '',
    String? state = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "start": "${start}",
  "end": "${end}",
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order List',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_order_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
}

class PurchaseOrderViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order View',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_view',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic purchaseOrderId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].id''',
      );
  dynamic purchaseName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].name''',
      );
  dynamic taxamount(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].amount_tax''',
      );
  dynamic totalamount(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].amount_total''',
      );
  dynamic untaxAmount(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].amount_untaxed''',
      );
  dynamic orderDate(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].date_order''',
      );
  dynamic notes(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].notes''',
      );
  dynamic partnetId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].res_partner.id''',
      );
  dynamic purcahseOrderLineList(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_lines''',
        true,
      );
  dynamic paymentTermId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].payment_term_id''',
      );
  dynamic plannedDate(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].date_planned''',
      );
  dynamic lineJsons(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_lines''',
        true,
      );
  dynamic purchaseGST(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_lines[:].account_tax_purchase_order_line_rels''',
        true,
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].state''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].res_partner.name''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic invoiceStatus(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].invoice_status''',
      );
  dynamic stockStatus(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_stock_picking_rels[:].stock_picking.state''',
      );
  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class PurchaseOrderCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? companyId,
    int? currencyId,
    String? dateOrder = '',
    String? name = '',
    int? partnerId,
    int? pickingTypeId,
    dynamic? purchaseOrderLinesJson,
    String? state = '',
    String? datePlanned = '',
    double? amountUntaxed,
    double? amountTax,
    double? amountTotal,
  }) {
    final purchaseOrderLines = _serializeJson(purchaseOrderLinesJson);
    final ffApiRequestBody = '''
{
  "company_id": ${companyId},
  "currency_id": ${currencyId},
  "date_order": "${dateOrder}",
  "name": "${name}",
  "partner_id": ${partnerId},
  "picking_type_id": ${pickingTypeId},
  "date_planned": "${datePlanned}",
  "amount_untaxed": ${amountUntaxed},
  "amount_tax": ${amountTax},
  "amount_total": ${amountTotal},
  "purchase_order_lines": ${purchaseOrderLines}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Create',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_order_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseOrderLineProductDetailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Line Product Detail',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_order_line_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].id''',
      );
  dynamic orderId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].order_id''',
      );
  dynamic orderName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].name''',
      );
  dynamic priceSubtotal(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].price_subtotal''',
      );
  dynamic priceTotal(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].price_total''',
      );
  dynamic pricePerUnit(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].price_unit''',
      );
  dynamic priceTax(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].price_tax''',
      );
  dynamic productUOMQty(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].product_uom_qty''',
      );
  dynamic uOMId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].uom_uom.id''',
      );
  dynamic uOMName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].uom_uom.name''',
      );
  dynamic productTemplateId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].product_product.product_template.id''',
      );
  dynamic productTemplateName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].product_product.product_template.name''',
      );
  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].product_id''',
      );
  dynamic purchaseTaxList(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].account_tax_purchase_order_line_rels''',
        true,
      );
  dynamic purchasetaxJson(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:].account_tax_purchase_order_line_rels''',
        true,
      );
  dynamic orderLineData(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_line[:]''',
      );
}

class PurchaseOrderLineProductUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    double? priceSubtotal,
    double? priceUnit,
    int? productId,
    int? productQty,
    double? priceTax,
    String? name = '',
    double? priceTotal,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "price_subtotal": ${priceSubtotal},
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_qty": ${productQty},
  "price_tax": ${priceTax},
  "name": "${name}",
  "price_total": ${priceTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Line Product Update',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/po_line_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseOrderLineProductCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    dynamic? accountTaxPurchaseOrderLineRelsJson,
    String? name = '',
    int? orderId,
    double? priceSubtotal,
    double? priceUnit,
    int? productId,
    double? productQty,
    int? productUom,
    double? productUomQty,
    double? priceTax,
  }) {
    final accountTaxPurchaseOrderLineRels =
        _serializeJson(accountTaxPurchaseOrderLineRelsJson);
    final ffApiRequestBody = '''
{
  "account_tax_purchase_order_line_rels": ${accountTaxPurchaseOrderLineRels},
  "name": "${name}",
  "order_id": ${orderId},
  "price_subtotal": ${priceSubtotal},
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_qty": ${productQty},
  "product_uom": ${productUom},
  "product_uom_qty": ${productUomQty},
  "price_tax": ${priceTax}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Line Product Create',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/po_line_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseOrderDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Delete',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_purchase_order',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseOrderLineProductDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Line Product Delete',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_purchase_order_line',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic orderId(dynamic response) => getJsonField(
        response,
        r'''$.delete_purchase_order_line.returning[:].order_id''',
      );
}

class PurchaseOrderUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    int? partnerId,
    int? paymentTermId,
    String? dateOrder = '',
    String? datePlanned = '',
    String? notes = '',
    double? amountUntaxed,
    double? amountTax,
    double? amountTotal,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "partner_id": ${partnerId},
  "payment_term_id": ${paymentTermId},
  "date_order": "${dateOrder}",
  "date_planned": "${datePlanned}",
  "notes": "${notes}",
  "amount_total": ${amountTotal},
  "amount_untaxed": ${amountUntaxed},
  "amount_tax": ${amountTax}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Update',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConvertToPurchaseOrderCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? state = 'purchase',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Convert to Purchase Order',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_state_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PurchaseBillConversionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Bill Conversion',
      apiUrl:
          '${PurchaseApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_bill_conversion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Purchase Api Group Group Code

/// Start Accounting Api Group Group Code

class AccountingApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static InvoiceListCall invoiceListCall = InvoiceListCall();
  static VendorBillListCall vendorBillListCall = VendorBillListCall();
  static PaymentListCall paymentListCall = PaymentListCall();
  static InvoiceViewCall invoiceViewCall = InvoiceViewCall();
  static VendorBillViewCall vendorBillViewCall = VendorBillViewCall();
  static PaymentViewCall paymentViewCall = PaymentViewCall();
  static InvoiceCreateCall invoiceCreateCall = InvoiceCreateCall();
  static VendorBillCreateCall vendorBillCreateCall = VendorBillCreateCall();
  static PaymentCreateCall paymentCreateCall = PaymentCreateCall();
  static AccountingLineProductPostCall accountingLineProductPostCall =
      AccountingLineProductPostCall();
  static AccountingLineProductDetailsCall accountingLineProductDetailsCall =
      AccountingLineProductDetailsCall();
  static AccountingLineProductUpdateCall accountingLineProductUpdateCall =
      AccountingLineProductUpdateCall();
  static InvoiceUpdateCall invoiceUpdateCall = InvoiceUpdateCall();
  static VendorBillUpdateCall vendorBillUpdateCall = VendorBillUpdateCall();
  static InvoiceDeleteCall invoiceDeleteCall = InvoiceDeleteCall();
  static VendorBillDeleteCall vendorBillDeleteCall = VendorBillDeleteCall();
  static InvoiceStatusUpdateCall invoiceStatusUpdateCall =
      InvoiceStatusUpdateCall();
  static AccountingLineProductDeleteCall accountingLineProductDeleteCall =
      AccountingLineProductDeleteCall();
  static ConvertToInvoiceCall convertToInvoiceCall = ConvertToInvoiceCall();
  static BankDetailsCall bankDetailsCall = BankDetailsCall();
  static InvoicePayConversionCall invoicePayConversionCall =
      InvoicePayConversionCall();
}

class InvoiceListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? start = '',
    String? end = '',
    String? status = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "start": "${start}",
  "end": "${end}",
  "status": "${status}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice List',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
}

class VendorBillListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? start = '',
    String? end = '',
    String? status = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "start": "${start}",
  "end": "${end}",
  "status": "${status}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill List',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/vendor_bill_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
}

class PaymentListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    String? type = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment List',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/account_payment_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_payment''',
        true,
      );
}

class InvoiceViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice View',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic moveId(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].id''',
      );
  dynamic partnerId(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].res_partner.id''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].res_partner.name''',
      );
  dynamic invoiceDate(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].invoice_date''',
      );
  dynamic invoiceDueDate(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].invoice_date_due''',
      );
  dynamic untaxedTotalAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].amount_untaxed''',
      );
  dynamic overAllTotalAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].amount_total''',
      );
  dynamic lineList(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_move_lines''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].name''',
      );
  dynamic contactGstTax(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_move_lines[:].account_move_line_account_tax_rels''',
        true,
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].state''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class VendorBillViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill View',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/vendor_bill_view',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic billName(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].name''',
      );
  dynamic partnerId(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].res_partner.id''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].res_partner.name''',
      );
  dynamic overallTotal(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].amount_total''',
      );
  dynamic taxTotal(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].amount_tax''',
      );
  dynamic dueDate(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].invoice_date_due''',
      );
  dynamic paymentTermId(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_payment_term.id''',
      );
  dynamic paymentTermName(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_payment_term.name''',
      );
  dynamic productLineList(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_move_lines''',
        true,
      );
  dynamic lineJasons(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_move_lines''',
        true,
      );
  dynamic billId(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].id''',
      );
  dynamic invoiceDate(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].invoice_date''',
      );
  dynamic amountuntax(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].amount_untaxed''',
      );
  dynamic vendorGst(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].account_move_lines[:].account_move_line_account_tax_rels''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.account_move[:].state''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class PaymentViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment View',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/payment_details_view',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:]''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].account_move.name''',
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].create_date''',
      );
  dynamic paymentType(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].payment_type''',
      );
  dynamic amount(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].amount''',
      );
  dynamic journalName(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].account_move.account_journal.name''',
      );
  dynamic state(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].account_move.state''',
      );
  dynamic accountPaymentMethod(dynamic response) => getJsonField(
        response,
        r'''$.account_payment[:].account_payment_method.name''',
      );
  dynamic myActivity(dynamic response) => getJsonField(
        response,
        r'''$.mail_activity''',
        true,
      );
}

class InvoiceCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? partnerId,
    String? date = '',
    dynamic? accountMoveLinesJson,
    String? invoiceDate = '',
    String? invoiceDateDue = '',
    int? invoicePaymentTermId,
    double? amountUntaxed,
    double? amountTotal,
  }) {
    final accountMoveLines = _serializeJson(accountMoveLinesJson);
    final ffApiRequestBody = '''
{
  "team_id": 1,
  "company_id": 1,
  "state": "draft",
  "journal_id": 1,
  "currency_id": 20,
  "partner_id": ${partnerId},
  "date": "${date}",
  "invoice_date": "${invoiceDate}",
  "invoice_date_due": "${invoiceDateDue}",
  "invoice_payment_term_id": ${invoicePaymentTermId},
  "account_move_lines": ${accountMoveLines},
  "amount_total": ${amountTotal},
  "amount_untaxed": ${amountUntaxed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Create',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VendorBillCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? partnerId,
    String? date = '',
    dynamic? accountMoveLinesJson,
    String? invoiceDate = '',
    String? invoiceDateDue = '',
    int? invoicePaymentTermId,
    double? amountUntaxed,
    double? amountTotal,
  }) {
    final accountMoveLines = _serializeJson(accountMoveLinesJson);
    final ffApiRequestBody = '''
{
  "team_id": 1,
  "company_id": 1,
  "state": "draft",
  "journal_id": 1,
  "currency_id": 20,
  "partner_id": ${partnerId},
  "date": "${date}",
  "invoice_date": "${invoiceDate}",
  "invoice_date_due": "${invoiceDateDue}",
  "invoice_payment_term_id": ${invoicePaymentTermId},
  "account_move_lines": ${accountMoveLines},
  "amount_total": ${amountTotal},
  "amount_untaxed": ${amountUntaxed}
  
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill Create',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/vendor_bill_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PaymentCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? paymentType = '',
    String? partnerType = '',
    int? partnerId,
    double? amount,
    String? paymentReference = '',
    int? moveId,
  }) {
    final ffApiRequestBody = '''
{
  "payment_type": "${paymentType}",
  "partner_type": "${partnerType}",
  "partner_id": ${partnerId},
  "amount": ${amount},
  "move_id": ${moveId},
  "destination_account_id": 7,
  "payment_reference": "${paymentReference}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment Create',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/payment_method_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AccountingLineProductPostCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    dynamic? accountMoveLineAccountTaxRelsJson,
    int? moveId,
    String? name = '',
    double? priceSubtotal,
    double? priceTotal,
    double? priceUnit,
    int? productId,
    int? productUomId,
    double? quantity,
  }) {
    final accountMoveLineAccountTaxRels =
        _serializeJson(accountMoveLineAccountTaxRelsJson);
    final ffApiRequestBody = '''
{
  "account_move_line_account_tax_rels": ${accountMoveLineAccountTaxRels},
  "move_id": ${moveId},
  "name": "${name}",
  "price_subtotal": ${priceSubtotal},
  "price_total": ${priceTotal},
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_uom_id": ${productUomId},
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Accounting Line Product Post',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_product_line_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AccountingLineProductDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Accounting Line Product Details',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/account_move_line_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic moveId(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].move_id''',
      );
  dynamic moveName(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].move_name''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].name''',
      );
  dynamic priceSubtotal(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].price_subtotal''',
      );
  dynamic priceTotal(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].price_total''',
      );
  dynamic priceperUnit(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].price_unit''',
      );
  dynamic quantity(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].quantity''',
      );
  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].product_id''',
      );
  dynamic productTempId(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].product_product.product_template.id''',
      );
  dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].product_product.product_template.name''',
      );
  dynamic taxLineList(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].account_move_line_account_tax_rels''',
        true,
      );
  dynamic taxLineJson(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:].account_move_line_account_tax_rels''',
        true,
      );
  dynamic uOMId(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:]..uom_uom.id''',
      );
  dynamic uOMName(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:]..uom_uom.name''',
      );
  dynamic accountMoveLine(dynamic response) => getJsonField(
        response,
        r'''$.account_move_line[:]''',
      );
}

class AccountingLineProductUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? name = '',
    double? priceUnit,
    int? productId,
    int? productUomId,
    double? quantity,
    int? eq,
    double? priceSubtotal,
    double? priceTotal,
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "price_unit": ${priceUnit},
  "product_id": ${productId},
  "product_uom_id": ${productUomId},
  "quantity": ${quantity},
  "_eq": ${eq},
  "price_subtotal": ${priceSubtotal},
  "price_total": ${priceTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Accounting Line Product Update',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/account_move_line_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InvoiceUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    int? partnerId,
    String? invoiceDate = '',
    String? invoiceDateDue = '',
    String? narration = '',
    int? invoicePaymentTermId,
    double? amountTax,
    double? amountUntaxed,
    double? amountTotal,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "partner_id": ${partnerId},
  "invoice_date": "${invoiceDate}",
  "invoice_date_due": "${invoiceDateDue}",
  "narration": "${narration}",
  "invoice_payment_term_id": ${invoicePaymentTermId},
  "amount_tax": ${amountTax},
  "amount_untaxed": ${amountUntaxed},
  "amount_total": ${amountTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Update',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VendorBillUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    int? partnerId,
    String? invoiceDate = '',
    String? invoiceDateDue = '',
    String? narration = '',
    int? invoicePaymentTermId,
    double? amountTax,
    double? amountUntaxed,
    double? amountTotal,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "partner_id": ${partnerId},
  "invoice_date": "${invoiceDate}",
  "invoice_date_due": "${invoiceDateDue}",
  "narration": "${narration}",
  "invoice_payment_term_id": ${invoicePaymentTermId},
  "amount_tax": ${amountTax},
  "amount_untaxed": ${amountUntaxed},
  "amount_total": ${amountTotal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill Update',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InvoiceDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Delete',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_invoice',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VendorBillDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill Delete',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_invoice',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InvoiceStatusUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    String? state = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Status Update',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_state_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AccountingLineProductDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Accounting Line Product Delete',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/delete_invoice_product_line',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic orderId(dynamic response) => getJsonField(
        response,
        r'''$.delete_account_move_line.returning[:].move_id''',
      );
}

class ConvertToInvoiceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? state = 'posted',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Convert to Invoice',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_state_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BankDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Bank Details',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/customer_bankinfo',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accountno(dynamic response) => getJsonField(
        response,
        r'''$.res_partner_bank[:].acc_number''',
      );
  dynamic bankname(dynamic response) => getJsonField(
        response,
        r'''$.res_partner_bank[:].res_bank.name''',
      );
  dynamic companyname(dynamic response) => getJsonField(
        response,
        r'''$.res_partner_bank[:].res_company.name''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.res_partner_bank[:].acc_holder_name''',
      );
}

class InvoicePayConversionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Pay Conversion',
      apiUrl:
          '${AccountingApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_pay_conversion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Accounting Api Group Group Code

/// Start Expenses Api Group Group Code

class ExpensesApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static ExpensesListCall expensesListCall = ExpensesListCall();
  static ExpensesViewCall expensesViewCall = ExpensesViewCall();
  static ExpensesDeleteCall expensesDeleteCall = ExpensesDeleteCall();
  static ExpensesCreateCall expensesCreateCall = ExpensesCreateCall();
  static ExpensesUpdateCall expensesUpdateCall = ExpensesUpdateCall();
}

class ExpensesListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses List',
      apiUrl: '${ExpensesApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpensesViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses View',
      apiUrl:
          '${ExpensesApiGroupGroup.baseUrl}${domainUrl}/api/rest/expenses_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpensesDeleteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses Delete',
      apiUrl:
          '${ExpensesApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_delete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpensesCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? productId,
    String? name = '',
    double? unitAmount,
    double? quantity,
    int? productUomId,
    String? date = '',
    String? paymentMode = '',
    double? totalAmount,
    int? accountId,
    String? description = '',
    int? employeeId,
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "name": "${name}",
  "unit_amount": ${unitAmount},
  "quantity": ${quantity},
  "product_uom_id": ${productUomId},
  "date": "${date}",
  "payment_mode": "${paymentMode}",
  "total_amount": ${totalAmount},
  "account_id": ${accountId},
  "description": "${description}",
  "employee_id": ${employeeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses Create',
      apiUrl:
          '${ExpensesApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExpensesUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? productId,
    String? name = '',
    double? unitAmount,
    double? quantity,
    int? productUomId,
    String? date = '',
    String? paymentMode = '',
    double? totalAmount,
    int? accountId,
    String? description = '',
    int? employeeId,
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "name": "${name}",
  "unit_amount": ${unitAmount},
  "quantity": ${quantity},
  "product_uom_id": ${productUomId},
  "date": "${date}",
  "payment_mode": "${paymentMode}",
  "total_amount": ${totalAmount},
  "account_id": ${accountId},
  "description": "${description}",
  "employee_id": ${employeeId},
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Expenses Update',
      apiUrl:
          '${ExpensesApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Expenses Api Group Group Code

/// Start Contact Api Group Group Code

class ContactApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static ContactsListCall contactsListCall = ContactsListCall();
  static ContactsViewCall contactsViewCall = ContactsViewCall();
  static ContactsUpdateCall contactsUpdateCall = ContactsUpdateCall();
  static ContactsCreateCall contactsCreateCall = ContactsCreateCall();
  static ContactSearchCall contactSearchCall = ContactSearchCall();
  static ContactSaleListCall contactSaleListCall = ContactSaleListCall();
  static ContactInvoiceListCall contactInvoiceListCall =
      ContactInvoiceListCall();
  static ContactPurchaseListCall contactPurchaseListCall =
      ContactPurchaseListCall();
  static ContactAccountPaymentCall contactAccountPaymentCall =
      ContactAccountPaymentCall();
}

class ContactsListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? limit,
    int? offset,
    int? customerRank,
    int? supplierRank,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contacts List',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
        'customer_rank': customerRank,
        'supplier_rank': supplierRank,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.res_partner''',
        true,
      );
}

class ContactsViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contacts View',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/get_partners_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].name''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].email''',
      );
  dynamic mobile(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].mobile''',
      );
  dynamic websiteurl(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].website''',
      );
  dynamic companyId(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].company_id''',
      );
  dynamic customerrank(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].customer_rank''',
      );
  dynamic vendorrank(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].supplier_rank''',
      );
  dynamic street(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].street''',
      );
  dynamic function(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].function''',
      );
  dynamic purchaseOrder(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].purchase_orders_aggregate.aggregate.sum.amount_total''',
      );
  dynamic saleOrder(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].sale_orders_aggregate.aggregate.sum.amount_total''',
      );
  dynamic accountMove(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].account_moves_aggregate.aggregate.sum.amount_residual''',
      );
  dynamic accountPayment(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].account_payments_aggregate.aggregate.sum.amount''',
      );
  dynamic companyName(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].res_company.name''',
      );
  dynamic companyNameS(dynamic response) => getJsonField(
        response,
        r'''$.res_partner[:].company_name''',
      );
}

class ContactsUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? id,
    int? customerRank,
    String? email = '',
    String? mobile = '',
    String? name = '',
    String? street = '',
    int? supplierRank,
    String? website = '',
  }) {
    final ffApiRequestBody = '''
{
  "customer_rank": ${customerRank},
  "email": "${email}",
  "id": ${id},
  "mobile": "${mobile}",
  "name": "${name}",
  "street": "${street}",
  "supplier_rank": ${supplierRank},
  "website": "${website}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Contacts Update',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/contacts_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ContactsCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? vat = '',
    String? name = '',
    String? street = '',
    String? zip = '',
    String? mobile = '',
    String? phone = '',
    String? email = '',
    String? website = '',
    int? supplierRank,
    int? customerRank,
    int? stateId,
    int? countryId,
    String? companyName = '',
  }) {
    final ffApiRequestBody = '''
{
  "vat": "${vat}",
  "name": "${name}",
  "street": "${street}",
  "zip": "${zip}",
  "mobile": "${mobile}",
  "phone": "${phone}",
  "email": "${email}",
  "website": "${website}",
  "supplier_rank": ${supplierRank},
  "customer_rank": ${customerRank},
  "state_id": ${stateId},
  "country_id": ${countryId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Contacts Create',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact_create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic contactId(dynamic response) => getJsonField(
        response,
        r'''$.insert_res_partner.returning[:].id''',
      );
}

class ContactSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? name = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Search',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/search_contact',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic contactList(dynamic response) => getJsonField(
        response,
        r'''$.res_partner''',
        true,
      );
}

class ContactSaleListCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Sale List',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/partner_id_sale_order_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleOrder(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
}

class ContactInvoiceListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    String? eq1 = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Invoice List',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/partner_id_invoice_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
        '_eq1': eq1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
}

class ContactPurchaseListCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Purchase List',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/partner_id_purchase_order_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
}

class ContactAccountPaymentCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'contact account payment',
      apiUrl:
          '${ContactApiGroupGroup.baseUrl}${domainUrl}/api/rest/partner_id_account_payment',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.account_payment''',
        true,
      );
}

/// End Contact Api Group Group Code

/// Start Dashboad Api Group Group Code

class DashboadApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static DashboardBillListCall dashboardBillListCall = DashboardBillListCall();
  static OverAllDashboardCall overAllDashboardCall = OverAllDashboardCall();
  static DashboardInvoiceListCall dashboardInvoiceListCall =
      DashboardInvoiceListCall();
  static SalesDashboardCall salesDashboardCall = SalesDashboardCall();
  static PurchaseDashboardCall purchaseDashboardCall = PurchaseDashboardCall();
}

class DashboardBillListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? start = '',
    String? end = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Bill List',
      apiUrl:
          '${DashboadApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_bill_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OverAllDashboardCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? start = '',
    String? end = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Over All Dashboard',
      apiUrl:
          '${DashboadApiGroupGroup.baseUrl}${domainUrl}/api/rest/overall_dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic opportunityCounts(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.aggregate.count''',
      );
  dynamic opportunityTotal(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.aggregate.sum.expected_revenue''',
      );
  dynamic draftOrderCounts(dynamic response) => getJsonField(
        response,
        r'''$.DraftOrder.aggregate.count''',
      );
  dynamic draftOrdeTotal(dynamic response) => getJsonField(
        response,
        r'''$.DraftOrder.aggregate.sum.amount_total''',
      );
  dynamic saleOrderCounts(dynamic response) => getJsonField(
        response,
        r'''$.SaleOrder.aggregate.count''',
      );
  dynamic saleOrderTotal(dynamic response) => getJsonField(
        response,
        r'''$.SaleOrder.aggregate.sum.amount_total''',
      );
  dynamic purchaseCounts(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.aggregate.count''',
      );
  dynamic purchaseorderTotal(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.aggregate.sum.amount_total''',
      );
  dynamic vendorInvoiceCounts(dynamic response) => getJsonField(
        response,
        r'''$.vendorInvoice.aggregate.count''',
      );
  dynamic vendorInvoiceTotal(dynamic response) => getJsonField(
        response,
        r'''$.vendorInvoice.aggregate.sum.amount_total''',
      );
  dynamic invoicesCounts(dynamic response) => getJsonField(
        response,
        r'''$.Invoice.aggregate.count''',
      );
  dynamic invoicesTotal(dynamic response) => getJsonField(
        response,
        r'''$.Invoice.aggregate.sum.amount_total''',
      );
  dynamic expenseCounts(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.aggregate.count''',
      );
  dynamic expenseTotal(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.aggregate.sum.total_amount''',
      );
  dynamic paymentCount(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.aggregate.count''',
      );
  dynamic paymentTotal(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.aggregate.sum.amount''',
      );
}

class DashboardInvoiceListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? start = '',
    String? end = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Invoice List',
      apiUrl:
          '${DashboadApiGroupGroup.baseUrl}${domainUrl}/api/rest/dashboard_invoice_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SalesDashboardCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? start = '',
    String? end = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sales Dashboard',
      apiUrl:
          '${DashboadApiGroupGroup.baseUrl}${domainUrl}/api/rest/sales_dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic quotationCount(dynamic response) => getJsonField(
        response,
        r'''$.Quotations.aggregate.count''',
      );
  dynamic quotationTotal(dynamic response) => getJsonField(
        response,
        r'''$.Quotations.aggregate.sum.amount_total''',
      );
  dynamic saleCount(dynamic response) => getJsonField(
        response,
        r'''$.SaleOrder.aggregate.count''',
      );
  dynamic saleTotal(dynamic response) => getJsonField(
        response,
        r'''$.SaleOrder.aggregate.sum.amount_total''',
      );
  dynamic qsentCount(dynamic response) => getJsonField(
        response,
        r'''$.Quotationssent.aggregate.count''',
      );
  dynamic qsentTotal(dynamic response) => getJsonField(
        response,
        r'''$.Quotationssent.aggregate.sum.amount_total''',
      );
  dynamic qcancelCount(dynamic response) => getJsonField(
        response,
        r'''$.Quotationscancel.aggregate.count''',
      );
  dynamic invoiceCount(dynamic response) => getJsonField(
        response,
        r'''$.toinvoice.aggregate.count''',
      );
  dynamic invoceTotal(dynamic response) => getJsonField(
        response,
        r'''$.toinvoice.aggregate.sum''',
      );
  dynamic qCanceltotal(dynamic response) => getJsonField(
        response,
        r'''$.Quotationscancel.aggregate.sum''',
      );
  dynamic quotationcanceltotal(dynamic response) => getJsonField(
        response,
        r'''$.Quotationscancel.aggregate.sum.amount_total''',
      );
  dynamic totalcustomercount(dynamic response) => getJsonField(
        response,
        r'''$.total_customer.aggregate.count''',
      );
  dynamic toinvoiceTotal(dynamic response) => getJsonField(
        response,
        r'''$.toinvoice.aggregate.sum.amount_total''',
      );
}

class PurchaseDashboardCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
    int? topVendorLimit,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PurchaseDashboard',
      apiUrl:
          '${DashboadApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
        'top_vendor_limit': topVendorLimit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Dashboad Api Group Group Code

/// Start Inventory Api group Group Code

class InventoryApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static GrnListCall grnListCall = GrnListCall();
  static DeliveryChallenListCall deliveryChallenListCall =
      DeliveryChallenListCall();
  static InventoryListsCall inventoryListsCall = InventoryListsCall();
  static GrnViewCall grnViewCall = GrnViewCall();
  static GRNQuantityUpdateCall gRNQuantityUpdateCall = GRNQuantityUpdateCall();
  static DeliveryChallanViewCall deliveryChallanViewCall =
      DeliveryChallanViewCall();
  static GRNStatusUpdateCall gRNStatusUpdateCall = GRNStatusUpdateCall();
  static InventoryViewCall inventoryViewCall = InventoryViewCall();
  static OnhandviewCall onhandviewCall = OnhandviewCall();
  static ForecastQuantityCall forecastQuantityCall = ForecastQuantityCall();
  static PurchaseProductViewCall purchaseProductViewCall =
      PurchaseProductViewCall();
  static SoldProductsCall soldProductsCall = SoldProductsCall();
  static GRNCreateCall gRNCreateCall = GRNCreateCall();
  static GRNPurchaseListCall gRNPurchaseListCall = GRNPurchaseListCall();
  static SourceLocationsCall sourceLocationsCall = SourceLocationsCall();
  static DestinationLocationsCall destinationLocationsCall =
      DestinationLocationsCall();
  static DeliveryChellanCall deliveryChellanCall = DeliveryChellanCall();
  static InventoryCreateCall inventoryCreateCall = InventoryCreateCall();
  static InventoryCategoryCall inventoryCategoryCall = InventoryCategoryCall();
  static UnitOfMeasuresCall unitOfMeasuresCall = UnitOfMeasuresCall();
  static InventoryImageCall inventoryImageCall = InventoryImageCall();
  static ContactProfileUploadCall contactProfileUploadCall =
      ContactProfileUploadCall();
  static DcStockPickingTypeCall dcStockPickingTypeCall =
      DcStockPickingTypeCall();
  static GRNStockPickingTypeCall gRNStockPickingTypeCall =
      GRNStockPickingTypeCall();
  static PickListCall pickListCall = PickListCall();
  static PurchaseOrderListSearchCall purchaseOrderListSearchCall =
      PurchaseOrderListSearchCall();
  static SaleOrderListSearchCall saleOrderListSearchCall =
      SaleOrderListSearchCall();
  static PickSaleDetailCall pickSaleDetailCall = PickSaleDetailCall();
  static PickPurchaseDetailCall pickPurchaseDetailCall =
      PickPurchaseDetailCall();
  static DCQuantityUpdateCall dCQuantityUpdateCall = DCQuantityUpdateCall();
  static GRNConvertionCall gRNConvertionCall = GRNConvertionCall();
}

class GrnListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? limit,
    String? state = '',
    int? offset,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Grn List',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
}

class DeliveryChallenListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? limit,
    int? offset,
    String? eq = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'delivery Challen List',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest//dc_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': limit,
        'offset': offset,
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
}

class InventoryListsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? limit,
    int? offset,
    bool? purchaseOk = true,
    bool? saleOk = true,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "limit": ${limit},
  "offset": ${offset},
  "sale_ok": ${saleOk},
  "purchase_ok": ${purchaseOk}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inventory lists',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
        true,
      );
}

class GrnViewCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Grn View',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_product_details',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productquantity(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves[:].product_uom_qty''',
        true,
      );
  dynamic locationdestination(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stockLocationByLocationId''',
      );
  dynamic sourcelocation(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stockLocationByLocationId.complete_name''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].name''',
      );
  dynamic pickingid(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_picking_type.name''',
      );
  dynamic scheduledate(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].scheduled_date''',
      );
  dynamic fulldata(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves''',
        true,
      );
  dynamic destLocation(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_location.complete_name''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].res_partner.name''',
      );
  dynamic grn(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic qtydone(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves[:].stock_move_lines..qty_done''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].state''',
      );
}

class GRNQuantityUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    int? qtyDone,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "quantity": ${qtyDone}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GRN Quantity Update',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_quantity_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeliveryChallanViewCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delivery Challan View',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dc_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].name''',
      );
  dynamic scheduleddate(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].scheduled_date''',
      );
  dynamic pickingid(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_picking_type.name''',
      );
  dynamic fulldata(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves''',
        true,
      );
  dynamic productquantity(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves[:].product_uom_qty''',
      );
  dynamic origin(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].origin''',
      );
  dynamic destinationid(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_location.name''',
      );
  dynamic source(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stockLocationByLocationId.name''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].res_partner.name''',
      );
  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic qtydone(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].stock_moves[:].stock_move_lines..qty_done''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking[:].state''',
      );
}

class GRNStatusUpdateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? state = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "state": "${state}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GRN Status Update',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_state_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InventoryViewCall {
  Future<ApiCallResponse> call({
    int? eq,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inventory view',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productname(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.name''',
      );
  dynamic categoryname(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_category.name''',
      );
  dynamic listprice(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.list_price''',
      );
  dynamic units(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.uom_uom.name''',
      );
  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
        true,
      );
  dynamic saleOk(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.sale_ok''',
      );
  dynamic purchaseOk(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.purchase_ok''',
      );
}

class OnhandviewCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'onhandview',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/onhand_quantity',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic quantityList(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].stock_quants[:].quantity''',
        true,
      );
  dynamic uom(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.uom_uom.name''',
      );
  dynamic quants(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].stock_quants''',
        true,
      );
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.count_stock.aggregate.count''',
      );
}

class ForecastQuantityCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'forecast quantity',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/forecast_quantity',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic quantity(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].forecast_quantity.product_qty''',
      );
  dynamic quantitylists(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
      );
}

class PurchaseProductViewCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Product View',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchased_product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productquantity(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_lines[:].product_qty''',
      );
  dynamic purchaseorder(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.aggregate.count''',
      );
}

class SoldProductsCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sold products',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/sold_products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productquantity(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_line_aggregate.aggregate.sum.product_uom_qty''',
      );
  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
  dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.aggregate.count''',
      );
}

class GRNCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? partnerId,
    int? pickingTypeId,
    int? locationId,
    int? locationDestId,
    String? scheduledDate = '',
    dynamic? stockMovesJson,
    String? domainUrl = '',
  }) {
    final stockMoves = _serializeJson(stockMovesJson);
    final ffApiRequestBody = '''
{
  "partner_id": ${partnerId},
  "picking_type_id": ${pickingTypeId},
  "location_id": ${locationId},
  "location_dest_id": ${locationDestId},
  "scheduled_date": "${scheduledDate}",
  "move_type": "direct",
  "state": "assigned",
  "company_id": 1,
  "stock_moves": ${stockMoves}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GRN Create',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GRNPurchaseListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? companyId,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "company_id": ${companyId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GRN Purchase List',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/stock_picking_type',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic stockid(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].id''',
        true,
      );
  dynamic stockname(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].name''',
        true,
      );
}

class SourceLocationsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? limit,
    int? offset,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Source Locations',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dropdown_stock_picking_type',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': 100,
        'offset': 0,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic pickingname(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].name''',
        true,
      );
  dynamic pickingidd(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].id''',
        true,
      );
}

class DestinationLocationsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? limit,
    int? offset,
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Destination Locations',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dropdown_stock_location',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': 100,
        'offset': 0,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic locationid(dynamic response) => getJsonField(
        response,
        r'''$.stock_location[:].id''',
        true,
      );
  dynamic locationname(dynamic response) => getJsonField(
        response,
        r'''$.stock_location[:].complete_name''',
        true,
      );
}

class DeliveryChellanCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? partnerId,
    int? pickingTypeId,
    int? locationId,
    int? locationDestId,
    String? scheduledDate = '',
    dynamic? stockMovesJson,
    String? domainUrl = '',
  }) {
    final stockMoves = _serializeJson(stockMovesJson);
    final ffApiRequestBody = '''
{
  "partner_id": ${partnerId},
  "picking_type_id": ${pickingTypeId},
  "location_id": ${locationId},
  "location_dest_id": ${locationDestId},
  "scheduled_date": "${scheduledDate}",
  "move_type": "direct",
  "state": "assigned",
  "company_id": 1,
  "stock_moves": ${stockMoves}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delivery Chellan',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InventoryCreateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? name = '',
    String? type = '',
    int? categId,
    int? uomId,
    int? listPrice,
    bool? saleOk = true,
    bool? purchaseOk = true,
    String? l10nInHsnCode = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "type": "${type}",
  "categ_id": ${categId},
  "uom_id": ${uomId},
  "list_price": ${listPrice},
  "sale_ok": ${saleOk},
  "purchase_ok": ${purchaseOk},
  "l10n_in_hsn_code": "${l10nInHsnCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inventory Create',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.insert_product_template.returning[:].id''',
      );
}

class InventoryCategoryCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'inventory Category',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_category_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic categoryid(dynamic response) => getJsonField(
        response,
        r'''$.product_category[:].id''',
        true,
      );
  dynamic categoryname(dynamic response) => getJsonField(
        response,
        r'''$.product_category[:].name''',
        true,
      );
}

class UnitOfMeasuresCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'unit of measures',
      apiUrl: '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/uom_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic unitid(dynamic response) => getJsonField(
        response,
        r'''$.uom_uom[:].id''',
        true,
      );
  dynamic unitname(dynamic response) => getJsonField(
        response,
        r'''$.uom_uom[:].name''',
        true,
      );
}

class InventoryImageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? productId,
    String? base64String = '',
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId},
  "image": "${base64String}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inventory Image',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_image_upload',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ContactProfileUploadCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? contactId,
    String? image = '',
  }) {
    final ffApiRequestBody = '''
{
  "image": "${image}",
  "contact_id": ${contactId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Contact Profile Upload',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/contact_profile_upload',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DcStockPickingTypeCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? companyId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dc StockPicking Type',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dropdown_stock_picking_type_dc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': 100,
        'offset': 0,
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].name''',
        true,
      );
}

class GRNStockPickingTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? companyId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GRN StockPicking Type',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dropdown_stock_picking_type_grn',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'limit': 100,
        'offset': 0,
        'company_id': companyId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].id''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking_type[:].name''',
        true,
      );
}

class PickListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? limit,
    int? offset,
    int? pickTypeId,
    String? state = '',
  }) {
    final ffApiRequestBody = '''
{
  "state": "${state}",
  "pick_type_id": ${pickTypeId},
  "limit": ${limit},
  "offset": ${offset}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pick List',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/picking_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
}

class PurchaseOrderListSearchCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PurchaseOrderListSearch',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/all_purchase_records',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic purchaseOrderList(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
}

class SaleOrderListSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? iregex = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SaleOrderListSearch',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/all_sale_records',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleOrderList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
}

class PickSaleDetailCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? saleId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PickSaleDetail',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/picking_sale_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'sale_id': saleId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic lineItems(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].sale_order_lines''',
        true,
      );
  dynamic dcId(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].stock_pickings[:].id''',
      );
  dynamic dcName(dynamic response) => getJsonField(
        response,
        r'''$.sale_order[:].stock_pickings[:].name''',
      );
}

class PickPurchaseDetailCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? purchaseId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PickPurchaseDetail',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/picking_purchase_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': purchaseId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic lineItems(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_lines''',
        true,
      );
  dynamic gRNId(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_stock_picking_rels[:].stock_picking.id''',
      );
  dynamic gRNName(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order[:].purchase_order_stock_picking_rels[:].stock_picking.name''',
      );
}

class DCQuantityUpdateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    double? qtyDone,
    int? id,
    int? stockMoveId,
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id},
  "qty_done": ${qtyDone},
  "stock_move_id": ${stockMoveId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DC Quantity Update',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/dc_quantity_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GRNConvertionCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? eq = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GRN Convertion',
      apiUrl:
          '${InventoryApiGroupGroup.baseUrl}${domainUrl}/api/rest/transfer_warehouse',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fulldataapi(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
}

/// End Inventory Api group Group Code

/// Start Catalogue Group Code

class CatalogueGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static ProductsByCategoryCall productsByCategoryCall =
      ProductsByCategoryCall();
  static ProductCategoryCall productCategoryCall = ProductCategoryCall();
  static ProductDetailsCall productDetailsCall = ProductDetailsCall();
  static AddToBookmarkCall addToBookmarkCall = AddToBookmarkCall();
  static RemoveBookMarkCall removeBookMarkCall = RemoveBookMarkCall();
  static GetBookmarkListCall getBookmarkListCall = GetBookmarkListCall();
  static ProductDetailsOfflineCall productDetailsOfflineCall =
      ProductDetailsOfflineCall();
  static ProductVariantsCall productVariantsCall = ProductVariantsCall();
  static GetProductIdWithNameCall getProductIdWithNameCall =
      GetProductIdWithNameCall();
  static GetIdByVariantCheckCall getIdByVariantCheckCall =
      GetIdByVariantCheckCall();
}

class ProductsByCategoryCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Products By Category',
      apiUrl:
          '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/products_in_category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'category_id': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic categoryproductlist(dynamic response) => getJsonField(
        response,
        r'''$.product_template''',
        true,
      );
  dynamic variantList(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].product_products''',
        true,
      );
}

class ProductCategoryCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Product Category',
      apiUrl:
          '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/product_category_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productcategorylist(dynamic response) => getJsonField(
        response,
        r'''$.product_category''',
        true,
      );
}

class ProductDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? eq,
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Product Details',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/product_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.name''',
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].id''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.description''',
      );
  dynamic pricelist(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.list_price''',
      );
  dynamic productimage(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_images''',
        true,
      );
  dynamic productimages(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_images[:].id''',
        true,
      );
  dynamic productvideo(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_images[:].video_url''',
        true,
      );
  dynamic categoryname(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_category.name''',
      );
  dynamic uomname(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.uom_uom.name''',
      );
  dynamic specification(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].gmt_product_lines''',
        true,
      );
  dynamic annexure(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].ir_attachment_product_product_rels''',
        true,
      );
  dynamic displayname(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_display''',
      );
  dynamic bookMark(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].fav_lists''',
        true,
      );
  dynamic productTemp(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_template_attribute_lines''',
        true,
      );
  dynamic productAtrb(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_template_attribute_lines[:].product_attribute.product_attribute_values''',
        true,
      );
  dynamic firstVaiant(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_template_attribute_lines[:].product_template_attribute_values[0].id''',
        true,
      );
  dynamic productTemplateId(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.id''',
      );
}

class AddToBookmarkCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? productId,
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add To Bookmark',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/add_fav',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RemoveBookMarkCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "product_id": ${productId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Remove BookMark',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/remove_favourite',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBookmarkListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bookmark List',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/get_fav',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic bookmarkList(dynamic response) => getJsonField(
        response,
        r'''$.fav_list''',
        true,
      );
}

class ProductDetailsOfflineCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    int? eq,
  }) {
    final ffApiRequestBody = '''
{
  "_eq": ${eq}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Product Details Offline',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/product_details',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProductVariantsCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    int? id,
    String? authToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Product Variants',
      apiUrl: '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/product_variants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic variantsList(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].product_products''',
        true,
      );
  dynamic variantsIdArray(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].product_products[:].id''',
        true,
      );
  dynamic variantNameArray(dynamic response) => getJsonField(
        response,
        r'''$.product_template[:].product_products[:].product_display''',
        true,
      );
}

class GetProductIdWithNameCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    String? productName = '',
  }) {
    final ffApiRequestBody = '''
{
  "product_name": "${productName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Product Id With Name',
      apiUrl:
          '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/product_name_search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].id''',
      );
  dynamic productImages(dynamic response) => getJsonField(
        response,
        r'''$.product_product[:].product_template.product_images''',
        true,
      );
}

class GetIdByVariantCheckCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    List<int>? attributeIdsList,
    int? tmplId,
  }) {
    final attributeIds = _serializeList(attributeIdsList);

    final ffApiRequestBody = '''
{
  "tmpl_id": ${tmplId},
  "attribute_ids": "${attributeIds}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Id By Variant Check',
      apiUrl:
          '${CatalogueGroup.baseUrl}${domainUrl}/api/rest/attribute_variant',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.variant.result.status''',
      );
}

/// End Catalogue Group Code

/// Start Search ApiGroup Group Code

class SearchApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static SaleOrderSearchCall saleOrderSearchCall = SaleOrderSearchCall();
  static PurchaseOrderSearchCall purchaseOrderSearchCall =
      PurchaseOrderSearchCall();
  static CrmLeadSearchCall crmLeadSearchCall = CrmLeadSearchCall();
  static ExpenseSearchCall expenseSearchCall = ExpenseSearchCall();
  static ProjectSearchCall projectSearchCall = ProjectSearchCall();
  static TaskSearchCall taskSearchCall = TaskSearchCall();
  static InvoiceRecordSearchCall invoiceRecordSearchCall =
      InvoiceRecordSearchCall();
  static PaymentSearchCall paymentSearchCall = PaymentSearchCall();
  static GRNSearchCall gRNSearchCall = GRNSearchCall();
  static InventoryProductSearchCall inventoryProductSearchCall =
      InventoryProductSearchCall();
}

class SaleOrderSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? partnerName = '',
    String? domainUrl = '',
    String? state = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sale Order Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/sale_order_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'partner_name': partnerName,
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic saleorderfullapi(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
}

class PurchaseOrderSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? partnerName = '',
    String? domainUrl = '',
    String? state = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Order Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/purchase_order_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'partner_name': partnerName,
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic purchaseordersearchapi(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
}

class CrmLeadSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Crm Lead Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/crm_lead_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic lead(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
}

class ExpenseSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense Search ',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/expense_search_by_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic expenseSearch(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense''',
        true,
      );
}

class ProjectSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Project Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/project_search_by_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic projectSearch(dynamic response) => getJsonField(
        response,
        r'''$.project_project''',
        true,
      );
}

class TaskSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Task Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/task_search_by_name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskSearch(dynamic response) => getJsonField(
        response,
        r'''$.project_task''',
        true,
      );
}

class InvoiceRecordSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? iregex = '',
    String? domainUrl = '',
    String? type = '',
    String? state = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice Record Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/invoice_record_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_iregex': iregex,
        'type': type,
        'state': state,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic accountmove(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
}

class PaymentSearchCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? authToken = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Payment search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/payment_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic searchfullapi(dynamic response) => getJsonField(
        response,
        r'''$.account_payment''',
        true,
      );
}

class GRNSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? partnerName = '',
    String? domainUrl = '',
    int? pickingId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GRN  Search',
      apiUrl: '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/grn_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'partner_name': partnerName,
        'picking_id': pickingId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic grnsearchapi(dynamic response) => getJsonField(
        response,
        r'''$.stock_picking''',
        true,
      );
}

class InventoryProductSearchCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? regex = '',
    String? domainUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Inventory Product Search',
      apiUrl:
          '${SearchApiGroupGroup.baseUrl}${domainUrl}/api/rest/product_search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_regex': regex,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productList(dynamic response) => getJsonField(
        response,
        r'''$.product_product''',
        true,
      );
}

/// End Search ApiGroup Group Code

/// Start CollegeManagement Group Code

class CollegeManagementGroup {
  static String baseUrl = 'https://[baseurl]/api/rest';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
  };
  static HolidayListCall holidayListCall = HolidayListCall();
}

class HolidayListCall {
  Future<ApiCallResponse> call({
    String? baseurl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Holiday List',
      apiUrl: '${CollegeManagementGroup.baseUrl}/holiday_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic holiday(dynamic response) => getJsonField(
        response,
        r'''$.hr_holidays_public_line''',
        true,
      );
}

/// End CollegeManagement Group Code

/// Start Material Request Group Code

class MaterialRequestGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static EquipmentListCall equipmentListCall = EquipmentListCall();
  static EquipmentViewCall equipmentViewCall = EquipmentViewCall();
  static EquipmentCreateCall equipmentCreateCall = EquipmentCreateCall();
}

class EquipmentListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Equipment List',
      apiUrl:
          '${MaterialRequestGroup.baseUrl}${domainUrl}/api/rest/req_equipment',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic equipmentList(dynamic response) => getJsonField(
        response,
        r'''$.request_for_equipments''',
        true,
      );
}

class EquipmentViewCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
    int? eq,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Equipment View',
      apiUrl:
          '${MaterialRequestGroup.baseUrl}${domainUrl}/api/rest/list_equipment_of_requirement',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        '_eq': eq,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic equipmentLineList(dynamic response) => getJsonField(
        response,
        r'''$.request_for_equipments[:].equipments_lines''',
        true,
      );
  dynamic equipmentAdmin(dynamic response) => getJsonField(
        response,
        r'''$.request_for_equipments[:].res_user.res_partner.name''',
      );
  dynamic equipmentName(dynamic response) => getJsonField(
        response,
        r'''$.request_for_equipments[:].project_project.name''',
      );
  dynamic equipmentDate(dynamic response) => getJsonField(
        response,
        r'''$.request_for_equipments[:].create_date''',
      );
}

class EquipmentCreateCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? projectId,
    dynamic? equipmentsLinesJson,
  }) {
    final equipmentsLines = _serializeJson(equipmentsLinesJson);
    final ffApiRequestBody = '''
{
  "project_id": ${projectId},
  "equipments_lines": ${equipmentsLines}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Equipment Create',
      apiUrl:
          '${MaterialRequestGroup.baseUrl}${domainUrl}/api/rest/equipment_post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Material Request Group Code

/// Start Manufacturing Api Group Group Code

class ManufacturingApiGroupGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static WorkOrderListCall workOrderListCall = WorkOrderListCall();
  static StartWorkOrderCall startWorkOrderCall = StartWorkOrderCall();
  static PauseWorkOrderCall pauseWorkOrderCall = PauseWorkOrderCall();
  static DoneWorkOrderCall doneWorkOrderCall = DoneWorkOrderCall();
  static WorkOrderViewCall workOrderViewCall = WorkOrderViewCall();
  static ManufactureOrderListCall manufactureOrderListCall =
      ManufactureOrderListCall();
  static ManufactureOrderViewCall manufactureOrderViewCall =
      ManufactureOrderViewCall();
  static WorkOrderIsOncheckCall workOrderIsOncheckCall =
      WorkOrderIsOncheckCall();
}

class WorkOrderListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Work Order List',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/list_work_order',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic workOrderList(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder''',
        true,
      );
}

class StartWorkOrderCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? workOrderId,
  }) {
    final ffApiRequestBody = '''
{
  "work_order_id": ${workOrderId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'StartWorkOrder',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/start_work_order',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PauseWorkOrderCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? workOrderId,
  }) {
    final ffApiRequestBody = '''
{
  "work_order_id": ${workOrderId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PauseWorkOrder',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/pause_work_order',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DoneWorkOrderCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? workOrderId,
  }) {
    final ffApiRequestBody = '''
{
  "work_order_id": ${workOrderId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DoneWorkOrder',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/done_work_order',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WorkOrderViewCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? workOrderId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'WorkOrderView',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/view_workorder',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'work_order_id': workOrderId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic logNote(dynamic response) => getJsonField(
        response,
        r'''$.mail_message''',
        true,
      );
  dynamic workOrderId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].id''',
      );
  dynamic workOrderName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].name''',
      );
  dynamic expectedDuration(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].duration_expected''',
      );
  dynamic workCenterId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].mrp_workcenter.id''',
      );
  dynamic workCenterName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].mrp_workcenter.name''',
      );
  dynamic workOrderState(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].state''',
      );
  dynamic mRPName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].mrp_production.name''',
      );
  dynamic mRPId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].mrp_production.id''',
      );
  dynamic mRPState(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].mrp_production.state''',
      );
  dynamic workOrderStartDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].date_start''',
      );
  dynamic workOrderFinishedDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].date_finished''',
      );
  dynamic workOrderPlannedStartDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].date_planned_start''',
      );
  dynamic workOrderPlannedFinishedDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].date_planned_finished''',
      );
  dynamic duration(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].duration''',
      );
  dynamic cunsumption(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workorder[:].consumption''',
      );
}

class ManufactureOrderListCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ManufactureOrderList',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/manufacture_order_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic manufacturingList(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production''',
        true,
      );
}

class ManufactureOrderViewCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    int? moId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ManufactureOrderView',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/manufacturing_order_view',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'mo_id': moId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic workOrders(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].mrp_workorders''',
        true,
      );
  dynamic stockMoves(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].stock_moves''',
        true,
      );
  dynamic manufacturingName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].name''',
      );
  dynamic productId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].product_id''',
      );
  dynamic productQty(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].product_qty''',
      );
  dynamic plannedStartDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].date_planned_start''',
      );
  dynamic partnerName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].res_user.res_partner.name''',
      );
  dynamic productName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].mrp_bom.product_template.name''',
      );
  dynamic plannedEndDate(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].date_planned_finished''',
      );
  dynamic workOrderCount(dynamic response) => getJsonField(
        response,
        r'''$.mrp_production[:].work_order_count.aggregate.count''',
      );
}

class WorkOrderIsOncheckCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'WorkOrderIsOncheck',
      apiUrl:
          '${ManufacturingApiGroupGroup.baseUrl}${domainUrl}/api/rest/is_workorder_on',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic productivityId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workcenter_productivity[:].id''',
      );
  dynamic workOrderId(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workcenter_productivity[:].mrp_workorder.id''',
      );
  dynamic workOrderName(dynamic response) => getJsonField(
        response,
        r'''$.mrp_workcenter_productivity[:].mrp_workorder.name''',
      );
}

/// End Manufacturing Api Group Group Code

/// Start Overall Dashboard Group Code

class OverallDashboardGroup {
  static String baseUrl = 'https://';
  static Map<String, String> headers = {};
  static OpportunityListDashCall opportunityListDashCall =
      OpportunityListDashCall();
  static PurchaseListDashCall purchaseListDashCall = PurchaseListDashCall();
  static QuotationListDashCall quotationListDashCall = QuotationListDashCall();
  static SaleListDashCall saleListDashCall = SaleListDashCall();
  static InvoiceListDashCall invoiceListDashCall = InvoiceListDashCall();
  static VendorBillListDashCall vendorBillListDashCall =
      VendorBillListDashCall();
  static PaymentListDashCall paymentListDashCall = PaymentListDashCall();
  static ExpenseListDashCall expenseListDashCall = ExpenseListDashCall();
}

class OpportunityListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Opportunity List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/opportunity_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic opportunity(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead''',
        true,
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.nodes[:].create_date''',
        true,
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.nodes[:].expected_revenue''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.aggregate.sum.expected_revenue''',
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.crm_lead_aggregate.nodes''',
        true,
      );
}

class PurchaseListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/purchase_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic puchase(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.aggregate.sum.amount_total''',
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.nodes[:].date_order''',
        true,
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.nodes[:].amount_total''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.purchase_order_aggregate.nodes''',
        true,
      );
}

class QuotationListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Quotation List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/quotation_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic quotation(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.aggregate.sum.amount_total''',
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes[:].amount_total''',
        true,
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes[:].date_order''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes''',
        true,
      );
}

class SaleListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sale List Dash',
      apiUrl: '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/sale_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic salelist(dynamic response) => getJsonField(
        response,
        r'''$.sale_order''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.aggregate.sum.amount_total''',
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes[:].date_order''',
        true,
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes[:].amount_total''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.sale_order_aggregate.nodes''',
        true,
      );
}

class InvoiceListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/dashboard_invoice_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic invoice(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.aggregate.sum.amount_total''',
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes[:].amount_total''',
        true,
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes[:].create_date''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes''',
        true,
      );
}

class VendorBillListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Vendor Bill List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/dashboard_bill_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic vendor(dynamic response) => getJsonField(
        response,
        r'''$.account_move''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.aggregate.sum.amount_total''',
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes[:].amount_total''',
        true,
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes[:].create_date''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.account_move_aggregate.nodes''',
        true,
      );
}

class PaymentListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Payment List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/payment_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic payment(dynamic response) => getJsonField(
        response,
        r'''$.account_payment''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.aggregate.sum.amount''',
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.nodes[:].amount''',
        true,
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.nodes[:].create_date''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.account_payment_aggregate.nodes''',
        true,
      );
}

class ExpenseListDashCall {
  Future<ApiCallResponse> call({
    String? domainUrl = '',
    String? authToken = '',
    String? start = '',
    String? end = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Expense List Dash',
      apiUrl:
          '${OverallDashboardGroup.baseUrl}${domainUrl}/api/rest/expense_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'start': start,
        'end': end,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic expence(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense''',
        true,
      );
  dynamic totalCount(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.aggregate.count''',
      );
  dynamic totalAmount(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.aggregate.sum.total_amount''',
      );
  dynamic dateWise(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.nodes[:].date''',
        true,
      );
  dynamic amountWise(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.nodes[:].amount''',
        true,
      );
  dynamic nodeList(dynamic response) => getJsonField(
        response,
        r'''$.hr_expense_aggregate.nodes''',
        true,
      );
}

/// End Overall Dashboard Group Code

class UrlCheckCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Url Check',
      apiUrl: 'https://url.mo.vc/urls',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic cin(dynamic response) => getJsonField(
        response,
        r'''$[:].cin''',
        true,
      );
  static dynamic graphUrl(dynamic response) => getJsonField(
        response,
        r'''$[:].graphql_url''',
        true,
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$[:].url''',
        true,
      );
}

class UserAccessCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? domainUrl = '',
  }) {
    final ffApiRequestBody = '''
{
  "token": "${authToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Access',
      apiUrl: 'https://${domainUrl}/api/rest/user_access',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.user_access.result.message''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
