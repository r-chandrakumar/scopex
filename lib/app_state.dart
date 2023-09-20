import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _userrole = prefs.getString('ff_userrole') ?? _userrole;
    });
    _safeInit(() {
      _ticketStatus = prefs.getInt('ff_ticketStatus') ?? _ticketStatus;
    });
    _safeInit(() {
      _CenterLocation =
          _latLngFromString(prefs.getString('ff_CenterLocation')) ??
              _CenterLocation;
    });
    _safeInit(() {
      _attendanceMonth = prefs.getInt('ff_attendanceMonth') ?? _attendanceMonth;
    });
    _safeInit(() {
      _attendanceYear = prefs.getInt('ff_attendanceYear') ?? _attendanceYear;
    });
    _safeInit(() {
      _userid = prefs.getInt('ff_userid') ?? _userid;
    });
    _safeInit(() {
      _leadstatus = prefs.getInt('ff_leadstatus') ?? _leadstatus;
    });
    _safeInit(() {
      _taskstatus = prefs.getInt('ff_taskstatus') ?? _taskstatus;
    });
    _safeInit(() {
      _projecttaskstatus =
          prefs.getInt('ff_projecttaskstatus') ?? _projecttaskstatus;
    });
    _safeInit(() {
      _expensestatus =
          prefs.getStringList('ff_expensestatus') ?? _expensestatus;
    });
    _safeInit(() {
      _expensecurrentstatus =
          prefs.getString('ff_expensecurrentstatus') ?? _expensecurrentstatus;
    });
    _safeInit(() {
      _CapExpense = prefs.getStringList('ff_CapExpense') ?? _CapExpense;
    });
    _safeInit(() {
      _taskids = prefs.getInt('ff_taskids') ?? _taskids;
    });
    _safeInit(() {
      _projectstaatus =
          prefs.getStringList('ff_projectstaatus') ?? _projectstaatus;
    });
    _safeInit(() {
      _CapProjectstatus =
          prefs.getStringList('ff_CapProjectstatus') ?? _CapProjectstatus;
    });
    _safeInit(() {
      _currentprojectstatus =
          prefs.getString('ff_currentprojectstatus') ?? _currentprojectstatus;
    });
    _safeInit(() {
      _searchbar = prefs.getString('ff_searchbar') ?? _searchbar;
    });
    _safeInit(() {
      _ChartCount = prefs.getStringList('ff_ChartCount') ?? _ChartCount;
    });
    _safeInit(() {
      _currentleadstage =
          prefs.getString('ff_currentleadstage') ?? _currentleadstage;
    });
    _safeInit(() {
      _leadstage = prefs.getStringList('ff_leadstage') ?? _leadstage;
    });
    _safeInit(() {
      _ProjectPieChart =
          prefs.getStringList('ff_ProjectPieChart') ?? _ProjectPieChart;
    });
    _safeInit(() {
      _phoneNumber = prefs.getString('ff_phoneNumber') ?? _phoneNumber;
    });
    _safeInit(() {
      _DomainUrl = prefs.getString('ff_DomainUrl') ?? _DomainUrl;
    });
    _safeInit(() {
      _headername = prefs.getString('ff_headername') ?? _headername;
    });
    _safeInit(() {
      _onesignalId = prefs.getString('ff_onesignalId') ?? _onesignalId;
    });
    _safeInit(() {
      _onesignalAppId = prefs.getInt('ff_onesignalAppId') ?? _onesignalAppId;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_appBarList')) {
        try {
          _appBarList = jsonDecode(prefs.getString('ff_appBarList') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _navmenu = prefs.getStringList('ff_navmenu') ?? _navmenu;
    });
    _safeInit(() {
      _currentmodule = prefs.getString('ff_currentmodule') ?? _currentmodule;
    });
    _safeInit(() {
      _currentpage = prefs.getString('ff_currentpage') ?? _currentpage;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_taxJson')) {
        try {
          _taxJson = jsonDecode(prefs.getString('ff_taxJson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _productAddItem = prefs.getStringList('ff_productAddItem')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _productAddItem;
    });
    _safeInit(() {
      _companyid = prefs.getInt('ff_companyid') ?? _companyid;
    });
    _safeInit(() {
      _ProductEditItem = prefs.getStringList('ff_ProductEditItem')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _ProductEditItem;
    });
    _safeInit(() {
      _ProductImages = prefs.getStringList('ff_ProductImages')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _ProductImages;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_totalsJson')) {
        try {
          _totalsJson = jsonDecode(prefs.getString('ff_totalsJson') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _RoleAccess = prefs.getStringList('ff_RoleAccess') ?? _RoleAccess;
    });
    _safeInit(() {
      _initialMonth = prefs.getInt('ff_initialMonth') ?? _initialMonth;
    });
    _safeInit(() {
      _WebUrl = prefs.getString('ff_WebUrl') ?? _WebUrl;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_settingsValue')) {
        try {
          _settingsValue =
              jsonDecode(prefs.getString('ff_settingsValue') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _currencySymbol = prefs.getString('ff_currencySymbol') ?? _currencySymbol;
    });
    _safeInit(() {
      _currencyId = prefs.getInt('ff_currencyId') ?? _currencyId;
    });
    _safeInit(() {
      _RoleFullList = prefs.getStringList('ff_RoleFullList') ?? _RoleFullList;
    });
    _safeInit(() {
      _LoginID = prefs.getInt('ff_LoginID') ?? _LoginID;
    });
    _safeInit(() {
      _Attendence = prefs.getBool('ff_Attendence') ?? _Attendence;
    });
    _safeInit(() {
      _notificationList = prefs.getStringList('ff_notificationList')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _notificationList;
    });
    _safeInit(() {
      _notificationCount =
          prefs.getInt('ff_notificationCount') ?? _notificationCount;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _username = 'user';
  String get username => _username;
  set username(String _value) {
    _username = _value;
  }

  bool _loginstatus = false;
  bool get loginstatus => _loginstatus;
  set loginstatus(bool _value) {
    _loginstatus = _value;
  }

  int _attendanceid = 0;
  int get attendanceid => _attendanceid;
  set attendanceid(int _value) {
    _attendanceid = _value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
    prefs.setString('ff_accessToken', _value);
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
    prefs.setString('ff_name', _value);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }

  String _userrole = '';
  String get userrole => _userrole;
  set userrole(String _value) {
    _userrole = _value;
    prefs.setString('ff_userrole', _value);
  }

  int _ticketStatus = 1;
  int get ticketStatus => _ticketStatus;
  set ticketStatus(int _value) {
    _ticketStatus = _value;
    prefs.setInt('ff_ticketStatus', _value);
  }

  LatLng? _CenterLocation = LatLng(13.1118896, 80.1540219);
  LatLng? get CenterLocation => _CenterLocation;
  set CenterLocation(LatLng? _value) {
    _CenterLocation = _value;
    _value != null
        ? prefs.setString('ff_CenterLocation', _value.serialize())
        : prefs.remove('ff_CenterLocation');
  }

  int _attendanceMonth = 0;
  int get attendanceMonth => _attendanceMonth;
  set attendanceMonth(int _value) {
    _attendanceMonth = _value;
    prefs.setInt('ff_attendanceMonth', _value);
  }

  int _attendanceYear = 0;
  int get attendanceYear => _attendanceYear;
  set attendanceYear(int _value) {
    _attendanceYear = _value;
    prefs.setInt('ff_attendanceYear', _value);
  }

  int _userid = 7;
  int get userid => _userid;
  set userid(int _value) {
    _userid = _value;
    prefs.setInt('ff_userid', _value);
  }

  int _leadstatus = 1;
  int get leadstatus => _leadstatus;
  set leadstatus(int _value) {
    _leadstatus = _value;
    prefs.setInt('ff_leadstatus', _value);
  }

  int _taskstatus = 1;
  int get taskstatus => _taskstatus;
  set taskstatus(int _value) {
    _taskstatus = _value;
    prefs.setInt('ff_taskstatus', _value);
  }

  int _projecttaskstatus = 1;
  int get projecttaskstatus => _projecttaskstatus;
  set projecttaskstatus(int _value) {
    _projecttaskstatus = _value;
    prefs.setInt('ff_projecttaskstatus', _value);
  }

  List<String> _expensestatus = [
    'draft',
    'approved',
    'refused',
    'done',
    'reported'
  ];
  List<String> get expensestatus => _expensestatus;
  set expensestatus(List<String> _value) {
    _expensestatus = _value;
    prefs.setStringList('ff_expensestatus', _value);
  }

  void addToExpensestatus(String _value) {
    _expensestatus.add(_value);
    prefs.setStringList('ff_expensestatus', _expensestatus);
  }

  void removeFromExpensestatus(String _value) {
    _expensestatus.remove(_value);
    prefs.setStringList('ff_expensestatus', _expensestatus);
  }

  void removeAtIndexFromExpensestatus(int _index) {
    _expensestatus.removeAt(_index);
    prefs.setStringList('ff_expensestatus', _expensestatus);
  }

  void updateExpensestatusAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _expensestatus[_index] = updateFn(_expensestatus[_index]);
    prefs.setStringList('ff_expensestatus', _expensestatus);
  }

  void insertAtIndexInExpensestatus(int _index, String _value) {
    _expensestatus.insert(_index, _value);
    prefs.setStringList('ff_expensestatus', _expensestatus);
  }

  String _expensecurrentstatus = 'draft';
  String get expensecurrentstatus => _expensecurrentstatus;
  set expensecurrentstatus(String _value) {
    _expensecurrentstatus = _value;
    prefs.setString('ff_expensecurrentstatus', _value);
  }

  List<String> _CapExpense = [
    'To Submitted',
    'Approved',
    'Refused',
    'Paid',
    'Submitted'
  ];
  List<String> get CapExpense => _CapExpense;
  set CapExpense(List<String> _value) {
    _CapExpense = _value;
    prefs.setStringList('ff_CapExpense', _value);
  }

  void addToCapExpense(String _value) {
    _CapExpense.add(_value);
    prefs.setStringList('ff_CapExpense', _CapExpense);
  }

  void removeFromCapExpense(String _value) {
    _CapExpense.remove(_value);
    prefs.setStringList('ff_CapExpense', _CapExpense);
  }

  void removeAtIndexFromCapExpense(int _index) {
    _CapExpense.removeAt(_index);
    prefs.setStringList('ff_CapExpense', _CapExpense);
  }

  void updateCapExpenseAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _CapExpense[_index] = updateFn(_CapExpense[_index]);
    prefs.setStringList('ff_CapExpense', _CapExpense);
  }

  void insertAtIndexInCapExpense(int _index, String _value) {
    _CapExpense.insert(_index, _value);
    prefs.setStringList('ff_CapExpense', _CapExpense);
  }

  int _taskids = 0;
  int get taskids => _taskids;
  set taskids(int _value) {
    _taskids = _value;
    prefs.setInt('ff_taskids', _value);
  }

  List<String> _projectstaatus = [
    'not_started',
    'onprogress',
    'onhold',
    'completed',
    'not_completed'
  ];
  List<String> get projectstaatus => _projectstaatus;
  set projectstaatus(List<String> _value) {
    _projectstaatus = _value;
    prefs.setStringList('ff_projectstaatus', _value);
  }

  void addToProjectstaatus(String _value) {
    _projectstaatus.add(_value);
    prefs.setStringList('ff_projectstaatus', _projectstaatus);
  }

  void removeFromProjectstaatus(String _value) {
    _projectstaatus.remove(_value);
    prefs.setStringList('ff_projectstaatus', _projectstaatus);
  }

  void removeAtIndexFromProjectstaatus(int _index) {
    _projectstaatus.removeAt(_index);
    prefs.setStringList('ff_projectstaatus', _projectstaatus);
  }

  void updateProjectstaatusAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _projectstaatus[_index] = updateFn(_projectstaatus[_index]);
    prefs.setStringList('ff_projectstaatus', _projectstaatus);
  }

  void insertAtIndexInProjectstaatus(int _index, String _value) {
    _projectstaatus.insert(_index, _value);
    prefs.setStringList('ff_projectstaatus', _projectstaatus);
  }

  List<String> _CapProjectstatus = [
    'Not Started',
    'In Progress',
    'Completed',
    'Not Completed'
  ];
  List<String> get CapProjectstatus => _CapProjectstatus;
  set CapProjectstatus(List<String> _value) {
    _CapProjectstatus = _value;
    prefs.setStringList('ff_CapProjectstatus', _value);
  }

  void addToCapProjectstatus(String _value) {
    _CapProjectstatus.add(_value);
    prefs.setStringList('ff_CapProjectstatus', _CapProjectstatus);
  }

  void removeFromCapProjectstatus(String _value) {
    _CapProjectstatus.remove(_value);
    prefs.setStringList('ff_CapProjectstatus', _CapProjectstatus);
  }

  void removeAtIndexFromCapProjectstatus(int _index) {
    _CapProjectstatus.removeAt(_index);
    prefs.setStringList('ff_CapProjectstatus', _CapProjectstatus);
  }

  void updateCapProjectstatusAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _CapProjectstatus[_index] = updateFn(_CapProjectstatus[_index]);
    prefs.setStringList('ff_CapProjectstatus', _CapProjectstatus);
  }

  void insertAtIndexInCapProjectstatus(int _index, String _value) {
    _CapProjectstatus.insert(_index, _value);
    prefs.setStringList('ff_CapProjectstatus', _CapProjectstatus);
  }

  String _currentprojectstatus = 'not_started';
  String get currentprojectstatus => _currentprojectstatus;
  set currentprojectstatus(String _value) {
    _currentprojectstatus = _value;
    prefs.setString('ff_currentprojectstatus', _value);
  }

  String _searchbar = '  ';
  String get searchbar => _searchbar;
  set searchbar(String _value) {
    _searchbar = _value;
    prefs.setString('ff_searchbar', _value);
  }

  List<String> _ChartCount = [];
  List<String> get ChartCount => _ChartCount;
  set ChartCount(List<String> _value) {
    _ChartCount = _value;
    prefs.setStringList('ff_ChartCount', _value);
  }

  void addToChartCount(String _value) {
    _ChartCount.add(_value);
    prefs.setStringList('ff_ChartCount', _ChartCount);
  }

  void removeFromChartCount(String _value) {
    _ChartCount.remove(_value);
    prefs.setStringList('ff_ChartCount', _ChartCount);
  }

  void removeAtIndexFromChartCount(int _index) {
    _ChartCount.removeAt(_index);
    prefs.setStringList('ff_ChartCount', _ChartCount);
  }

  void updateChartCountAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ChartCount[_index] = updateFn(_ChartCount[_index]);
    prefs.setStringList('ff_ChartCount', _ChartCount);
  }

  void insertAtIndexInChartCount(int _index, String _value) {
    _ChartCount.insert(_index, _value);
    prefs.setStringList('ff_ChartCount', _ChartCount);
  }

  String _currentleadstage = 'New';
  String get currentleadstage => _currentleadstage;
  set currentleadstage(String _value) {
    _currentleadstage = _value;
    prefs.setString('ff_currentleadstage', _value);
  }

  List<String> _leadstage = ['New', 'Qualified', 'Proposition', 'Won'];
  List<String> get leadstage => _leadstage;
  set leadstage(List<String> _value) {
    _leadstage = _value;
    prefs.setStringList('ff_leadstage', _value);
  }

  void addToLeadstage(String _value) {
    _leadstage.add(_value);
    prefs.setStringList('ff_leadstage', _leadstage);
  }

  void removeFromLeadstage(String _value) {
    _leadstage.remove(_value);
    prefs.setStringList('ff_leadstage', _leadstage);
  }

  void removeAtIndexFromLeadstage(int _index) {
    _leadstage.removeAt(_index);
    prefs.setStringList('ff_leadstage', _leadstage);
  }

  void updateLeadstageAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _leadstage[_index] = updateFn(_leadstage[_index]);
    prefs.setStringList('ff_leadstage', _leadstage);
  }

  void insertAtIndexInLeadstage(int _index, String _value) {
    _leadstage.insert(_index, _value);
    prefs.setStringList('ff_leadstage', _leadstage);
  }

  List<String> _ProjectPieChart = [
    'Completed',
    'Not Started',
    'In Progress',
    'On Hold'
  ];
  List<String> get ProjectPieChart => _ProjectPieChart;
  set ProjectPieChart(List<String> _value) {
    _ProjectPieChart = _value;
    prefs.setStringList('ff_ProjectPieChart', _value);
  }

  void addToProjectPieChart(String _value) {
    _ProjectPieChart.add(_value);
    prefs.setStringList('ff_ProjectPieChart', _ProjectPieChart);
  }

  void removeFromProjectPieChart(String _value) {
    _ProjectPieChart.remove(_value);
    prefs.setStringList('ff_ProjectPieChart', _ProjectPieChart);
  }

  void removeAtIndexFromProjectPieChart(int _index) {
    _ProjectPieChart.removeAt(_index);
    prefs.setStringList('ff_ProjectPieChart', _ProjectPieChart);
  }

  void updateProjectPieChartAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ProjectPieChart[_index] = updateFn(_ProjectPieChart[_index]);
    prefs.setStringList('ff_ProjectPieChart', _ProjectPieChart);
  }

  void insertAtIndexInProjectPieChart(int _index, String _value) {
    _ProjectPieChart.insert(_index, _value);
    prefs.setStringList('ff_ProjectPieChart', _ProjectPieChart);
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String _value) {
    _phoneNumber = _value;
    prefs.setString('ff_phoneNumber', _value);
  }

  String _DomainUrl = 'hymechgraphql.mo.vc';
  String get DomainUrl => _DomainUrl;
  set DomainUrl(String _value) {
    _DomainUrl = _value;
    prefs.setString('ff_DomainUrl', _value);
  }

  String _headername = '';
  String get headername => _headername;
  set headername(String _value) {
    _headername = _value;
    prefs.setString('ff_headername', _value);
  }

  String _onesignalId = '';
  String get onesignalId => _onesignalId;
  set onesignalId(String _value) {
    _onesignalId = _value;
    prefs.setString('ff_onesignalId', _value);
  }

  int _onesignalAppId = 0;
  int get onesignalAppId => _onesignalAppId;
  set onesignalAppId(int _value) {
    _onesignalAppId = _value;
    prefs.setInt('ff_onesignalAppId', _value);
  }

  dynamic _appBarList = jsonDecode(
      '{\"project\":[\"Dashboard\",\"Attendance\",\"Projects\",\"Team\",\"Expenses\",\"Task\",\"Leave\"],\"currentmodule\":\"project\",\"currentpage\":\"p\"}');
  dynamic get appBarList => _appBarList;
  set appBarList(dynamic _value) {
    _appBarList = _value;
    prefs.setString('ff_appBarList', jsonEncode(_value));
  }

  List<String> _navmenu = ['project', 'lead', 'attendance', 'expenses'];
  List<String> get navmenu => _navmenu;
  set navmenu(List<String> _value) {
    _navmenu = _value;
    prefs.setStringList('ff_navmenu', _value);
  }

  void addToNavmenu(String _value) {
    _navmenu.add(_value);
    prefs.setStringList('ff_navmenu', _navmenu);
  }

  void removeFromNavmenu(String _value) {
    _navmenu.remove(_value);
    prefs.setStringList('ff_navmenu', _navmenu);
  }

  void removeAtIndexFromNavmenu(int _index) {
    _navmenu.removeAt(_index);
    prefs.setStringList('ff_navmenu', _navmenu);
  }

  void updateNavmenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _navmenu[_index] = updateFn(_navmenu[_index]);
    prefs.setStringList('ff_navmenu', _navmenu);
  }

  void insertAtIndexInNavmenu(int _index, String _value) {
    _navmenu.insert(_index, _value);
    prefs.setStringList('ff_navmenu', _navmenu);
  }

  String _currentmodule = '';
  String get currentmodule => _currentmodule;
  set currentmodule(String _value) {
    _currentmodule = _value;
    prefs.setString('ff_currentmodule', _value);
  }

  String _currentpage = '';
  String get currentpage => _currentpage;
  set currentpage(String _value) {
    _currentpage = _value;
    prefs.setString('ff_currentpage', _value);
  }

  dynamic _taxJson;
  dynamic get taxJson => _taxJson;
  set taxJson(dynamic _value) {
    _taxJson = _value;
    prefs.setString('ff_taxJson', jsonEncode(_value));
  }

  List<dynamic> _productAddItem = [];
  List<dynamic> get productAddItem => _productAddItem;
  set productAddItem(List<dynamic> _value) {
    _productAddItem = _value;
    prefs.setStringList(
        'ff_productAddItem', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToProductAddItem(dynamic _value) {
    _productAddItem.add(_value);
    prefs.setStringList('ff_productAddItem',
        _productAddItem.map((x) => jsonEncode(x)).toList());
  }

  void removeFromProductAddItem(dynamic _value) {
    _productAddItem.remove(_value);
    prefs.setStringList('ff_productAddItem',
        _productAddItem.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromProductAddItem(int _index) {
    _productAddItem.removeAt(_index);
    prefs.setStringList('ff_productAddItem',
        _productAddItem.map((x) => jsonEncode(x)).toList());
  }

  void updateProductAddItemAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _productAddItem[_index] = updateFn(_productAddItem[_index]);
    prefs.setStringList('ff_productAddItem',
        _productAddItem.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInProductAddItem(int _index, dynamic _value) {
    _productAddItem.insert(_index, _value);
    prefs.setStringList('ff_productAddItem',
        _productAddItem.map((x) => jsonEncode(x)).toList());
  }

  int _companyid = 0;
  int get companyid => _companyid;
  set companyid(int _value) {
    _companyid = _value;
    prefs.setInt('ff_companyid', _value);
  }

  List<dynamic> _ProductEditItem = [];
  List<dynamic> get ProductEditItem => _ProductEditItem;
  set ProductEditItem(List<dynamic> _value) {
    _ProductEditItem = _value;
    prefs.setStringList(
        'ff_ProductEditItem', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToProductEditItem(dynamic _value) {
    _ProductEditItem.add(_value);
    prefs.setStringList('ff_ProductEditItem',
        _ProductEditItem.map((x) => jsonEncode(x)).toList());
  }

  void removeFromProductEditItem(dynamic _value) {
    _ProductEditItem.remove(_value);
    prefs.setStringList('ff_ProductEditItem',
        _ProductEditItem.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromProductEditItem(int _index) {
    _ProductEditItem.removeAt(_index);
    prefs.setStringList('ff_ProductEditItem',
        _ProductEditItem.map((x) => jsonEncode(x)).toList());
  }

  void updateProductEditItemAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ProductEditItem[_index] = updateFn(_ProductEditItem[_index]);
    prefs.setStringList('ff_ProductEditItem',
        _ProductEditItem.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInProductEditItem(int _index, dynamic _value) {
    _ProductEditItem.insert(_index, _value);
    prefs.setStringList('ff_ProductEditItem',
        _ProductEditItem.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _ProductImages = [];
  List<dynamic> get ProductImages => _ProductImages;
  set ProductImages(List<dynamic> _value) {
    _ProductImages = _value;
    prefs.setStringList(
        'ff_ProductImages', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToProductImages(dynamic _value) {
    _ProductImages.add(_value);
    prefs.setStringList(
        'ff_ProductImages', _ProductImages.map((x) => jsonEncode(x)).toList());
  }

  void removeFromProductImages(dynamic _value) {
    _ProductImages.remove(_value);
    prefs.setStringList(
        'ff_ProductImages', _ProductImages.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromProductImages(int _index) {
    _ProductImages.removeAt(_index);
    prefs.setStringList(
        'ff_ProductImages', _ProductImages.map((x) => jsonEncode(x)).toList());
  }

  void updateProductImagesAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _ProductImages[_index] = updateFn(_ProductImages[_index]);
    prefs.setStringList(
        'ff_ProductImages', _ProductImages.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInProductImages(int _index, dynamic _value) {
    _ProductImages.insert(_index, _value);
    prefs.setStringList(
        'ff_ProductImages', _ProductImages.map((x) => jsonEncode(x)).toList());
  }

  List<String> _Hrmenu = [
    'Employees',
    'Attendances',
    'Payroll',
    'Timesheets',
    'Time Off',
    'Expenses'
  ];
  List<String> get Hrmenu => _Hrmenu;
  set Hrmenu(List<String> _value) {
    _Hrmenu = _value;
  }

  void addToHrmenu(String _value) {
    _Hrmenu.add(_value);
  }

  void removeFromHrmenu(String _value) {
    _Hrmenu.remove(_value);
  }

  void removeAtIndexFromHrmenu(int _index) {
    _Hrmenu.removeAt(_index);
  }

  void updateHrmenuAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Hrmenu[_index] = updateFn(_Hrmenu[_index]);
  }

  void insertAtIndexInHrmenu(int _index, String _value) {
    _Hrmenu.insert(_index, _value);
  }

  dynamic _totalsJson;
  dynamic get totalsJson => _totalsJson;
  set totalsJson(dynamic _value) {
    _totalsJson = _value;
    prefs.setString('ff_totalsJson', jsonEncode(_value));
  }

  List<String> _RoleAccess = [];
  List<String> get RoleAccess => _RoleAccess;
  set RoleAccess(List<String> _value) {
    _RoleAccess = _value;
    prefs.setStringList('ff_RoleAccess', _value);
  }

  void addToRoleAccess(String _value) {
    _RoleAccess.add(_value);
    prefs.setStringList('ff_RoleAccess', _RoleAccess);
  }

  void removeFromRoleAccess(String _value) {
    _RoleAccess.remove(_value);
    prefs.setStringList('ff_RoleAccess', _RoleAccess);
  }

  void removeAtIndexFromRoleAccess(int _index) {
    _RoleAccess.removeAt(_index);
    prefs.setStringList('ff_RoleAccess', _RoleAccess);
  }

  void updateRoleAccessAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _RoleAccess[_index] = updateFn(_RoleAccess[_index]);
    prefs.setStringList('ff_RoleAccess', _RoleAccess);
  }

  void insertAtIndexInRoleAccess(int _index, String _value) {
    _RoleAccess.insert(_index, _value);
    prefs.setStringList('ff_RoleAccess', _RoleAccess);
  }

  dynamic _CustomerSearch;
  dynamic get CustomerSearch => _CustomerSearch;
  set CustomerSearch(dynamic _value) {
    _CustomerSearch = _value;
  }

  dynamic _ContactSearch;
  dynamic get ContactSearch => _ContactSearch;
  set ContactSearch(dynamic _value) {
    _ContactSearch = _value;
  }

  dynamic _CountrySearch;
  dynamic get CountrySearch => _CountrySearch;
  set CountrySearch(dynamic _value) {
    _CountrySearch = _value;
  }

  dynamic _StateSearch;
  dynamic get StateSearch => _StateSearch;
  set StateSearch(dynamic _value) {
    _StateSearch = _value;
  }

  int _initialMonth = 1;
  int get initialMonth => _initialMonth;
  set initialMonth(int _value) {
    _initialMonth = _value;
    prefs.setInt('ff_initialMonth', _value);
  }

  dynamic _SupplierSearch;
  dynamic get SupplierSearch => _SupplierSearch;
  set SupplierSearch(dynamic _value) {
    _SupplierSearch = _value;
  }

  String _drawerActiveMenu = 'CRM';
  String get drawerActiveMenu => _drawerActiveMenu;
  set drawerActiveMenu(String _value) {
    _drawerActiveMenu = _value;
  }

  String _WebUrl = '';
  String get WebUrl => _WebUrl;
  set WebUrl(String _value) {
    _WebUrl = _value;
    prefs.setString('ff_WebUrl', _value);
  }

  dynamic _questionDetails;
  dynamic get questionDetails => _questionDetails;
  set questionDetails(dynamic _value) {
    _questionDetails = _value;
  }

  dynamic _ProductSearch;
  dynamic get ProductSearch => _ProductSearch;
  set ProductSearch(dynamic _value) {
    _ProductSearch = _value;
  }

  dynamic _ProjectSearch;
  dynamic get ProjectSearch => _ProjectSearch;
  set ProjectSearch(dynamic _value) {
    _ProjectSearch = _value;
  }

  String _myactivity = '';
  String get myactivity => _myactivity;
  set myactivity(String _value) {
    _myactivity = _value;
  }

  DateTime? _SelectedDate;
  DateTime? get SelectedDate => _SelectedDate;
  set SelectedDate(DateTime? _value) {
    _SelectedDate = _value;
  }

  dynamic _settingsValue = jsonDecode(
      '{\"inventory_low_stock\":10,\"inventory_medium_stock\":30,\"initial_month\":1,\"limit\":10,\"iventory_filter\":\"sale\",\"grn_filter\":\"assigned\",\"delivery_challan\":\"assigned\",\"quatation_filter\":\"sent\",\"sale_filter\":\"sale\",\"purchase_filter\":\"purchase\",\"rfq_filter\":\"sent\",\"invoice_filter\":\"draft\",\"vendorBill_filter\":\"draft\",\"payment_filter\":\"draft\",\"contact\":\"all\",\"expenses_filter\":\"draft\"}');
  dynamic get settingsValue => _settingsValue;
  set settingsValue(dynamic _value) {
    _settingsValue = _value;
    prefs.setString('ff_settingsValue', jsonEncode(_value));
  }

  String _currencySymbol = '';
  String get currencySymbol => _currencySymbol;
  set currencySymbol(String _value) {
    _currencySymbol = _value;
    prefs.setString('ff_currencySymbol', _value);
  }

  int _currencyId = 0;
  int get currencyId => _currencyId;
  set currencyId(int _value) {
    _currencyId = _value;
    prefs.setInt('ff_currencyId', _value);
  }

  dynamic _PurchaseListSearch;
  dynamic get PurchaseListSearch => _PurchaseListSearch;
  set PurchaseListSearch(dynamic _value) {
    _PurchaseListSearch = _value;
  }

  dynamic _SaleListSearch;
  dynamic get SaleListSearch => _SaleListSearch;
  set SaleListSearch(dynamic _value) {
    _SaleListSearch = _value;
  }

  List<String> _RoleFullList = [];
  List<String> get RoleFullList => _RoleFullList;
  set RoleFullList(List<String> _value) {
    _RoleFullList = _value;
    prefs.setStringList('ff_RoleFullList', _value);
  }

  void addToRoleFullList(String _value) {
    _RoleFullList.add(_value);
    prefs.setStringList('ff_RoleFullList', _RoleFullList);
  }

  void removeFromRoleFullList(String _value) {
    _RoleFullList.remove(_value);
    prefs.setStringList('ff_RoleFullList', _RoleFullList);
  }

  void removeAtIndexFromRoleFullList(int _index) {
    _RoleFullList.removeAt(_index);
    prefs.setStringList('ff_RoleFullList', _RoleFullList);
  }

  void updateRoleFullListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _RoleFullList[_index] = updateFn(_RoleFullList[_index]);
    prefs.setStringList('ff_RoleFullList', _RoleFullList);
  }

  void insertAtIndexInRoleFullList(int _index, String _value) {
    _RoleFullList.insert(_index, _value);
    prefs.setStringList('ff_RoleFullList', _RoleFullList);
  }

  dynamic _ResUserSearch;
  dynamic get ResUserSearch => _ResUserSearch;
  set ResUserSearch(dynamic _value) {
    _ResUserSearch = _value;
  }

  bool _activityRemained = false;
  bool get activityRemained => _activityRemained;
  set activityRemained(bool _value) {
    _activityRemained = _value;
  }

  int _LoginID = 0;
  int get LoginID => _LoginID;
  set LoginID(int _value) {
    _LoginID = _value;
    prefs.setInt('ff_LoginID', _value);
  }

  bool _Attendence = false;
  bool get Attendence => _Attendence;
  set Attendence(bool _value) {
    _Attendence = _value;
    prefs.setBool('ff_Attendence', _value);
  }

  List<dynamic> _notificationList = [];
  List<dynamic> get notificationList => _notificationList;
  set notificationList(List<dynamic> _value) {
    _notificationList = _value;
    prefs.setStringList(
        'ff_notificationList', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToNotificationList(dynamic _value) {
    _notificationList.add(_value);
    prefs.setStringList('ff_notificationList',
        _notificationList.map((x) => jsonEncode(x)).toList());
  }

  void removeFromNotificationList(dynamic _value) {
    _notificationList.remove(_value);
    prefs.setStringList('ff_notificationList',
        _notificationList.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromNotificationList(int _index) {
    _notificationList.removeAt(_index);
    prefs.setStringList('ff_notificationList',
        _notificationList.map((x) => jsonEncode(x)).toList());
  }

  void updateNotificationListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _notificationList[_index] = updateFn(_notificationList[_index]);
    prefs.setStringList('ff_notificationList',
        _notificationList.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInNotificationList(int _index, dynamic _value) {
    _notificationList.insert(_index, _value);
    prefs.setStringList('ff_notificationList',
        _notificationList.map((x) => jsonEncode(x)).toList());
  }

  int _notificationCount = 0;
  int get notificationCount => _notificationCount;
  set notificationCount(int _value) {
    _notificationCount = _value;
    prefs.setInt('ff_notificationCount', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
