import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String? getDateFormat() {
  // Get Today date in dd/M/YY

  var now = new DateTime.now();
  var formatter = new DateFormat('M/dd/y');
  String formatted = formatter.format(now);
  return formatted;
}

dynamic addItemProductInventory(
  int? productid,
  String? productname,
  double? qty,
  String? unit,
  int? unitid,
) {
  var newdata = {
    "product_id": productid,
    "product_name": productname,
    "qty": qty,
    "unit": unit,
    "unitid": unitid
  };

  return newdata;
}

String? attachmentconvertor(
  int? id,
  String? model,
  String? url,
) {
  if (id == null) {
    return null;
  }

  if (model == null) {
    return null;
  }

  String? imageurl =
      'https://${url}/web/image?model=${model}&id=${id}&field=datas';
  return imageurl;
}

dynamic addProblemListStore(
  String? problemList,
  int? problemId,
) {
  if (problemList == null || problemList == '' || problemList == 'null') {
    problemList = '{"data":[]}';
  }
  // if (problemId != null && problemName != null) {
  //   problemList.add({
  //     'problemId': problemId,
  //     'problemName': problemName,
  //   });
  // }

  final existingData = jsonDecode(problemList!);

  // Add new product and quantity to the existing data
  final newProduct = {
    "comment": null,
    "select_comment": null,
    "problem_id": problemId,
    "status": null
  };
  existingData['data'].add(newProduct);

  // Convert the updated map back to JSON string
  final updatedJsonString = jsonEncode(existingData);

  return updatedJsonString;
}

String? changeDateFomat(String? logdate) {
  // change date format of given date argument
  if (logdate == 'null' || logdate == null || logdate == '' || logdate == '-') {
    return '-';
  }

  var date = DateTime.parse(logdate!);
  var formatter = new DateFormat('MM/dd/yyyy');
  String formatted = formatter.format(date);
  return formatted;
}

bool? ifAccessoriesAdded(
  int? accessoriesId,
  int? serviceId,
) {
  Future<dynamic> ifAccessoriesAdded1() async {
    var http;
    final response = await http.get(Uri.parse(
        'https://canligraphql.mo.vc/api/rest/accessories_lines?_eq=${accessoriesId}&_eq1=${serviceId}'));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return Future<dynamic>.value(result.product_accessories_line.length);
    }
  }

  dynamic response = ifAccessoriesAdded1();
  if (response == 0) {
    return false;
  } else {
    return true;
  }
}

dynamic addProductItemInventoryJson(
  int? productId,
  List<dynamic>? existedProductList,
) {
  if (existedProductList == null ||
      existedProductList == 'null' ||
      existedProductList.length == 0) {
    return {
      "status": false,
    };
  }
  final index = existedProductList
      .indexWhere((element) => element['product_id'] == productId);
  if (index == -1) {
    return {
      "status": false,
    };
  } else {
    return {
      "status": true,
      "index": index,
    };
  }
}

String? getProjectImagepath(int? productId) {
  String imagepath =
      'https://canlierp.mo.vc/web/image?model=product.template&id=231&field=image_128';
  return imagepath;
}

dynamic addProductItemUpdateInventory(
  List<dynamic>? existedProductList,
  int? productid,
  String? productname,
  double? qty,
  String? unit,
  int? unitid,
) {
  if (existedProductList == null ||
      // ignore: unrelated_type_equality_checks
      existedProductList == 'null' ||
      existedProductList.length == 0) {
    return {
      "status": false,
    };
  }
  final index = existedProductList!
      .indexWhere((element) => element['product_id'] == productid);
  if (index == -1) {
    return {
      "status": false,
    };
  } else {
    var updatedData = {
      "product_id": productid,
      "product_name": existedProductList[index]['product_name'],
      "qty": existedProductList[index]['qty'] + qty,
      "unit": existedProductList[index]['unit'],
      "unitid": existedProductList[index]['unitid']
    };
    return {
      "status": true,
      "data": updatedData,
    };
  }
}

String? getDateTimeFormat() {
  // Get Today date in dd/M/Y
  var now = new DateTime.now();
  print('1');
  print(now);
  var formatter = new DateFormat('yyyy-MM-dd HH:mm:ss');
  print(formatter);
  String formatted = formatter.format(now);
  print(formatted);
  return formatted;
}

String? changeDateTimeFormat(String? checkindate) {
  if (checkindate != null && checkindate != 'null') {
    var date = DateTime.parse(checkindate!);
    var formatter = new DateFormat('EEE, d MMM yyyy h:mm a');
    String formatted = formatter.format(date);
    return formatted;
  } else {
    return '-';
  }
}

bool? checkLoggedIn(String? checkOutDate) {
  if (checkOutDate == 'null') {
    return true;
  } else {
    return false;
  }
}

int? changeStringToInt(String? qrvalue) {
  print('qrvalue');
  print(qrvalue);
  if (qrvalue == null || qrvalue == "null" || qrvalue == '') {
    return 0;
  }
// convert  string to integer
  int? qrvalue1 = int.parse(qrvalue!);
  return qrvalue1;
}

String? answerCheckEmpyOrNot(String? answer) {
  if (answer == null || answer == 'null') {
    return '-';
  } else {
    return answer;
  }
}

bool? checkCompleteValue(String? stage) {
  if (stage == 'null' || stage == null) {
    return true;
  }
  if (stage == 'Completed') {
    return false;
  } else {
    return true;
  }
}

String? setOldAnswer(String? oldanswer) {
  if (oldanswer == 'null' || oldanswer == null) {
    return '';
  } else {
    return oldanswer;
  }
}

bool? checkAnswerIsSelectType(String? checklistType) {
  if (checklistType == 'selection') {
    return true;
  } else {
    return false;
  }
}

bool? checkAnswerisValueType(String? checklistType) {
  if (checklistType == 'value') {
    return true;
  } else {
    return false;
  }
}

bool? questionCountCheck(int? questionCount) {
  if (questionCount != 0) {
    return true;
  } else {
    return false;
  }
}

int? increasePageNumber(int? pageNumber) {
  if (pageNumber == null) {
    return 1;
  } else {
    return pageNumber + 1;
  }
}

int? decreasePageNumber(int? pageNumber) {
  if (pageNumber == null) {
    return 1;
  } else {
    return pageNumber - 1;
  }
}

bool? checklistPassCheck(String? result) {
  if (result == 'pass') {
    return true;
  } else {
    return false;
  }
}

bool? checkListStatusNotStartedCheck(String? status) {
  if (status == 'not_started') {
    return true;
  } else {
    return false;
  }
}

bool? checkListStatusCompetedCheck(String? status) {
  if (status == 'completed') {
    return true;
  } else {
    return false;
  }
}

int? findSecondswithStartandCurrent(String? startDate) {
  if (startDate == null || startDate == 'null') {
    return 0;
  }
  final DateTime start = DateTime.parse(startDate);
  final DateTime now = DateTime.now();
  final Duration difference = now.difference(start);
  return difference.inSeconds;
}

String? getDateTimeFormatForSave() {
  return DateFormat('M/dd/y HH:mm:ss').format(DateTime.now());
}

String? getTimeWithDate(String? datetime) {
  if (datetime == null || datetime == 'null') {
    return '';
  }
  DateTime dateTime = DateTime.parse(datetime);
  return DateFormat('hh:mm a').format(dateTime);
}

dynamic daylistAsArray() {
  var list = <int>[];
  for (var i = 1; i <= 31; i++) {
    list.add(i);
  }
  return list;
}

String? leaveSwitchStatusColor(String? status) {
  switch (status) {
    case 'draft':
      return '#EE8B60';
    case 'cancel':
      return '#FCDC0C';
    case 'confirm':
      return '#4B39EF';
    case 'refuse':
      return '#E21C3D';
    case 'validate':
      return '#04A24C';
    default:
      return '';
  }
}

String? convertHoursWithStartAndEndDateTime(
  String? start,
  String? end,
) {
  if (start == null || end == null || start == 'null' || end == 'null') {
    return null;
  }
  final startDateTime = DateTime.parse(start);
  final endDateTime = DateTime.parse(end);
  final difference = endDateTime.difference(startDateTime);
  final hours = difference.inHours;
  final minutes = difference.inMinutes % 60;
  return '$hours h $minutes m';
}

String? leaveSwitchStatusText(String? status) {
  switch (status) {
    case 'draft':
      return 'To Submit';
    case 'cancel':
      return 'Cancelled';
    case 'confirm':
      return 'To Approve';
    case 'refuse':
      return 'Refused';
    case 'validate':
      return 'Approved';
    default:
      return '';
  }
}

double? findDaysBetweenTwoDates(
  String? fromdate,
  String? todate,
) {
  if (fromdate == null ||
      todate == null ||
      fromdate == 'null' ||
      todate == 'null') {
    return 0;
  }
  var f = DateTime.parse(fromdate);
  var t = DateTime.parse(todate);
  var difference = t.difference(f).inDays;
  difference += 1;
  if (difference < 0) {
    return 0;
  }

  return difference.toDouble();
}

DateTime? convertStringToDateTime(String? date) {
  if (date == null || date == 'null') {
    return DateTime.now();
  }
  return DateTime.parse(date);
}

String? convertDateFormatToSave(String? date) {
  if (date == null || date == 'null') {
    return '';
  }
  var date1 = DateTime.parse(date);
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(date1);
  return formatted;
}

String? convertLeaveDateFormat(String? leavedate) {
  if (leavedate == null || leavedate == 'null' || leavedate == 'DD/MM/YYYY') {
    return '';
  }
  var date = DateTime.parse(leavedate);
  var formatter = new DateFormat('dd MMM,yyyy');
  String formatted = formatter.format(date);
  return formatted;
}

String? intToHours(String? workinghours) {
  if (workinghours == null || workinghours == 'null') {
    return '';
  }
  int hours = int.parse(workinghours);
  int h = hours ~/ 60;
  int m = hours % 60;
  return '$h h $m m';
}

String? dateToDay(String? date) {
  if (date == null || date == 'null') {
    return null;
  }
  DateTime dateTime = DateTime.parse(date);
  return DateFormat.E().format(dateTime);
}

String? dateToDayformat(String? date) {
  if (date == null || date == 'null') {
    return null;
  }
  DateTime dateTime = DateTime.parse(date);
  return DateFormat.d().format(dateTime);
}

String? expencePaidByName(String? paidby) {
  if (paidby == 'null' || paidby == null) {
    return '';
  }

  switch (paidby) {
    case 'own_account':
      return 'EMP(to reimburse)';
    case 'company_account':
      return 'Company';
    default:
      return '';
  }
}

String? expesesSwichNameChange(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'draft':
        return 'TO SUBMIT';
      case 'reported':
        return 'SUBMITTED';
      case 'approved':
        return 'APPROVED';
      case 'done':
        return 'PAID';
      case 'refused':
        return 'REFUSED';
      default:
        return '';
    }
  } else {
    switch (status) {
      case 'draft':
        return '#FCBA03'; // violet
      case 'reported':
        return '#FF7D7D';
      case 'approved':
        return '#FF9529';
      case 'done':
        return '#00B051'; // green
      case 'refused':
        return '#FF7D7D'; // red
      default:
        return '';
    }
  }
}

String? questionNullCheck(String? answer) {
  if (answer == 'null') {
    return '';
  } else {
    return answer;
  }
}

String? leaveSwitchStatusColorCopy(String? status) {
  switch (status) {
    case 'draft':
      return '#EE8B60';
    case 'cancel':
      return '#FCDC0C';
    case 'confirm':
      return '#4B39EF';
    case 'refuse':
      return '#E21C3D';
    case 'validate':
      return '#04A24C';
    default:
      return '';
  }
}

dynamic addSpareList(
  String? oldJson,
  String? productName,
  double? quantity,
) {
  final existingJsonString = oldJson;
  final newProductName = productName;
  final newProductQuantity = quantity;

  // Parse existing JSON string into a map
  final existingData = jsonDecode(existingJsonString!);

  // Add new product and quantity to the existing data
  final newProduct = {'name': newProductName, 'quantity': newProductQuantity};
  existingData['products'].add(newProduct);

  // Convert the updated map back to JSON string
  final updatedJsonString = jsonEncode(existingData);

  return updatedJsonString;
}

double? expenseFindTotal(
  double? unitprice,
  double? quantity,
) {
  if (unitprice == null ||
      quantity == null ||
      unitprice == 'null' ||
      quantity == 'null') {
    return 0;
  }
  return unitprice * quantity;
}

String? attendanceGerWorkingHours(
  String? checkInTime,
  String? checkOutTime,
) {
  if (checkInTime == null ||
      checkOutTime == null ||
      checkInTime == 'null' ||
      checkOutTime == 'null') {
    return '';
  }
  final DateTime checkIn = DateTime.parse(checkInTime);
  final DateTime checkOut = DateTime.parse(checkOutTime);
  final Duration duration = checkOut.difference(checkIn);
  final String hours = duration.inHours.toString().padLeft(2, '0');
  final String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
  final String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
  return '${hours}h:${minutes}m:${seconds}s';
}

String? attendanceWorkingHoursCalculation(String? checkInTime) {
  if (checkInTime == null || checkInTime == 'null') {
    return null;
  }
  final DateTime checkInDateTime =
      DateTime.parse(checkInTime).add(Duration(hours: 5, minutes: 30));
  final DateTime currentDateTime = DateTime.now();
  final Duration duration = currentDateTime.difference(checkInDateTime);
  final String durationString = duration.toString();
  final String durationStringWithoutMicroSeconds =
      durationString.substring(0, durationString.indexOf('.'));
  return durationStringWithoutMicroSeconds;
}

String? convertfileIntoBase64(dynamic filebytes) {
  if (filebytes == null || filebytes == 'null') {
    return '';
  }

  final bytes = filebytes?.bytes!;
  final base64String = base64Encode(bytes!);
  return base64String;
}

dynamic base64StringIntoJson(
  String? base64String,
  dynamic filejson,
) {
  if (base64String == '' || base64String == null || base64String == 'null') {
    filejson.add(base64String);
  }
  return filejson;
}

bool? roleDriverCheck(String? userrole) {
  if (userrole == null || userrole == 'null') {
    return false;
  }

  if (userrole == 'user') {
    return true;
  }

  return false;
}

bool? roleManagerCheck(String? userRole) {
  if (userRole == null || userRole == 'null') {
    return false;
  }

  if (userRole == 'manager') {
    return true;
  }
  return false;
}

bool? roleWorkerCheck(String? userRole) {
  if (userRole == null || userRole == 'null') {
    return false;
  }

  if (userRole == 'worker') {
    return true;
  }
  return false;
}

bool? roleManagerAndWorkerCheck(String? userRole) {
  if (userRole == null || userRole == 'null') {
    return false;
  }

  if (userRole == 'manager' || userRole == 'worker') {
    return true;
  }
  return false;
}

bool? roleDriverAndManagerCheck(String? userRole) {
  if (userRole == null || userRole == 'null') {
    return false;
  }

  if (userRole == 'manager' || userRole == 'user') {
    return true;
  }
  return false;
}

String? ticketStatusSwitchName(String? status) {
  // switch case to change name
  switch (status) {
    case 'partialy_completed':
      return 'Partialy Completed';
    case 'not_completed':
      return 'Not completed';
    case 'completed':
      return 'Completed';
    case 'waiting':
      return 'Waiting';
    default:
      return '-';
  }
}

dynamic addProblemList(
  dynamic problemList,
  int? problemId,
  String? problemName,
) {
  if (problemList == null || problemList == '' || problemList == 'null') {
    problemList = '[]';
  }
  // if (problemId != null && problemName != null) {
  //   problemList.add({
  //     'problemId': problemId,
  //     'problemName': problemName,
  //   });
  // }

  final existingData = jsonDecode(problemList!);

  // Add new product and quantity to the existing data
  final newProduct = {'name': problemName, 'id': problemId};
  existingData.add(newProduct);

  // Convert the updated map back to JSON string
  final updatedJsonString = jsonEncode(existingData);

  return updatedJsonString;
}

dynamic removeSpecialWordsProblem(String? problemList) {
  if (problemList == null) {
    return "{}";
  }
  String jsonString = problemList;
  jsonString = problemList.replaceAll("\\", '');
  return json.decode(jsonString);
}

dynamic removeProblemListStore(
  String? problemList,
  int? index,
) {
  // remove index json from json string
  if (problemList == null) {
    return null;
  }
  if (index == null) {
    return problemList;
  }
  final json = jsonDecode(problemList);
  final data = json['data'] as List<dynamic>;
  data.removeAt(index);
  return jsonEncode(json);
}

double? returnDistanceBetweenTwoPoints(
  LatLng? positionOne,
  LatLng? positionTwo,
) {
  // calculate the distance between two points on a spheroid and return distance as double
  var p = 0.017453292519943295;
  var a = 0.5 -
      math.cos((positionTwo!.latitude - positionOne!.latitude) * p) / 2 +
      math.cos(positionOne.latitude * p) *
          math.cos(positionTwo.latitude * p) *
          (1 - math.cos((positionTwo.longitude - positionOne.longitude) * p)) /
          2;
  double result = 12742 * math.asin(math.sqrt(a));
  // uncomment the line below if you want the result to be rounded
  // double finalResult = result.roundToDouble();
  // if you uncommented the line above, you have to replace result in the line below with finalResult
  return result;
}

String? getGoogleMapUrl(
  LatLng? from,
  String? tolat,
  String? tolng,
) {
  if (from == null || tolat == null || tolng == null) {
    return null;
  }
  if (tolat == null || tolat == 'null') {
    tolat = '13.12399713163587';
  }
  if (tolng == null || tolng == 'null') {
    tolng = '80.14508610969776';
  }

  return 'https://www.google.com/maps/dir/?api=1&origin=${from.latitude},${from.longitude}&destination=${tolat},${tolng}&travelmode=driving';
}

String? getLatAndLng(
  LatLng? location,
  String? type,
) {
  // get lat and lng using if condition
  if (location != null || location != 'null') {
    if (type == 'lat') {
      return location?.latitude.toString();
    } else if (type == 'lng') {
      return location?.longitude.toString();
    }
  }
  return '';
}

int? getCurrentMonth() {
  DateTime now = DateTime.now();
  return now.month;
}

String? getMonthName(int? monthid) {
  if (monthid == null) {
    return '';
  }
  if (monthid == 1) {
    return 'Jan';
  } else if (monthid == 2) {
    return 'Feb';
  } else if (monthid == 3) {
    return 'Mar';
  } else if (monthid == 4) {
    return 'Apr';
  } else if (monthid == 5) {
    return 'May';
  } else if (monthid == 6) {
    return 'Jun';
  } else if (monthid == 7) {
    return 'Jul';
  } else if (monthid == 8) {
    return 'Aug';
  } else if (monthid == 9) {
    return 'Sep';
  } else if (monthid == 10) {
    return 'Oct';
  } else if (monthid == 11) {
    return 'Nov';
  } else if (monthid == 12) {
    return 'Dec';
  } else {
    return '';
  }
}

int? getCurrentYear() {
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy');
  String formatted = formatter.format(now);
  return int.parse(formatted);
}

dynamic getNextMonthWithYear(
  int? month,
  int? year,
) {
  // get next month and year with given data
  if (month == null || year == null || month == 'null' || year == 'null') {
    return {
      'month': month,
      'year': year,
    };
  }
  if (month == 12) {
    return {
      'month': 1,
      'year': year + 1,
    };
  } else {
    return {
      'month': month + 1,
      'year': year,
    };
  }
}

dynamic getPreviousMonthWithYear(
  int? month,
  int? year,
) {
  if (month == null || month == 'null' || year == null || year == 'null') {
    return {
      'month': '',
      'year': '',
    };
  }

  if (month == 1) {
    return {
      'month': 12,
      'year': year - 1,
    };
  } else {
    return {
      'month': month - 1,
      'year': year,
    };
  }
}

String? getDateWithFormat() {
  print('test');
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(now);
  return formatted;
}

String? getDateTimeWithFormat() {
  print('test1');
  var now = new DateTime.now();
  print(now);
  var formatter = new DateFormat('yyyy-MM-dd HH:mm:ss');
  print(formatter);
  String formatted = formatter.format(now);
  print(formatted);
  return formatted;
}

String? getDateAndTimeWithFormat() {
  print('currenttime');
  var now = new DateTime.now();
  print(now);
  var formatter = new DateFormat('yyyy-MM-dd HH:mm:ss');
  print(formatter);
  String formatted = formatter.format(now);
  print(formatted);
  return formatted;
}

double? findduration(
  String? startdateTime,
  String? endDateTime,
) {
  if (startdateTime == null || endDateTime == null) {
    return 0.0;
  }
  DateTime start = DateTime.parse(startdateTime!);
  DateTime end = DateTime.parse(endDateTime!);
  Duration duration = end.difference(start);
  double? durationInHours = duration.inMinutes.toDouble() / 60;
  return double.parse(durationInHours.toStringAsFixed(2));
}

String? convertDateFormat(String? date) {
  if (date == null || date == 'null' || date == '' || date == '-') {
    return '-';
  }
  DateTime dateTime = DateTime.parse(date!);
  return DateFormat('MMM d, yyyy').format(dateTime);
}

String? changeStatusToUpperCase(String? status) {
  if (status == null || status == 'null') {
    return '-';
  }
  String? newStatus = status!.replaceAll('_', ' ');
  return newStatus.split(" ").map((word) {
    return word.substring(0, 1).toUpperCase() + word.substring(1);
  }).join(" ");
}

String? convertDateTimeFormat(String? datetime) {
  if (datetime == null || datetime == 'null') {
    return '-';
  }
  DateTime dateTime = DateTime.parse(datetime!);
  return DateFormat('MMM d, yyyy HH:mm').format(dateTime);
}

bool? taskStartCheck(bool? timerstatus) {
  if (timerstatus == false) {
    return true;
  } else {
    return false;
  }
}

bool? taskStopCheck(bool? timerstatus) {
  if (timerstatus == true) {
    return true;
  } else {
    return false;
  }
}

String? imageconverter(
  int? id,
  String? model,
  String? url,
) {
  if (id == null) {
    return null;
  }

  if (model == null) {
    return null;
  }

  String? imageurl =
      'https://${url}/web/image?model=${model}&id=${id}&field=image_1920';
  return imageurl;
}

String? getTodayDate() {
  var now = new DateTime.now();
  var formatter = new DateFormat('MM-dd-yyyy');
  String formatted = formatter.format(now);
  return formatted + ' 23:59:59';
}

String? calculateLastweekStartDate() {
  DateTime now = DateTime.now();
  DateTime lastWeek = now.subtract(Duration(days: 7));
  String lastWeekStartDate = DateFormat('MM-dd-yyyy').format(lastWeek);
  return lastWeekStartDate;
}

int? division(
  int? leadcount,
  int? woncount,
) {
  // ratio calculation two values
  if (leadcount == null || woncount == null) {
    return null;
  }
  if (leadcount == 0) {
    return 0;
  }
  double variable = (woncount / leadcount) * 100;
  int result = variable.round();
  return result;
}

String? colorcode(String? stage) {
  switch (stage) {
    case 'New':
      return '#008000';

    /// green
    case 'qulified':
      return '#FFFF00';

    ///yellow

    default:
      return '#008000';
  }
}

bool? jsonVisibleConditions(dynamic projecttask) {
  var task = projecttask.length;
  if (task < 5) {
    return true;
  } else {
    return false;
  }
}

String? emptyfunction(String? search) {
  if (search == null || search == 'null') {
    return "";
  }
  return search;
}

List<dynamic>? pieChart(
  String? completed,
  String? notstarted,
  String? inprogress,
  String? onhold,
) {
  return [completed, notstarted, inprogress, onhold];
}

int? isInteger(dynamic isinteger) {
  if (isinteger == null || isinteger == 'null') {
    return 0;
  } else {
    return isinteger.toInt();
  }
}

bool? arrayValue(List<dynamic>? array) {
  // get array value count
  print(array);
  if (array == null || array == 'null') {
    return false;
  } else {
    if (array.length < 5) {
      return true;
    } else {
      return false;
    }
  }
}

List<String>? funnelChartLabel() {
  return ['New', 'Qualified', 'Won', 'Preposition'];
}

dynamic funnelChartValue(
  int? newparams,
  int? qualified,
  int? preposition,
  int? won,
) {
  final List<String> labels = ["Open", "Qualified", "Preposition", "Won"];

  final List<double> values = [
    newparams?.toDouble() ?? 0.0,
    qualified?.toDouble() ?? 0.0,
    preposition?.toDouble() ?? 0.0,
    won?.toDouble() ?? 0.0
  ];
  values.sort((a, b) => b.compareTo(a));

  final List<double> result = [];
  for (final value in values) {
    result.add(value);
  }

  final List<String> sortedLabels = [];
  for (final value in result) {
    final index = values.indexOf(value);
    sortedLabels.add(labels[index]);
  }

  return {"values": result, "lables": sortedLabels};
}

String? beforeThreeMonthDate() {
  final now = DateTime.now();
  final lastThreeMonth = now.subtract(Duration(days: 90));
  final formatter = DateFormat('MM-dd-yyyy');
  return formatter.format(lastThreeMonth);
}

String? taskStatus(int? id) {
  if (id == null || id == 'null') {
    return '';
  }
  switch (id) {
    case 1:
      return 'New';
    case 2:
      return 'In Progress';
    case 3:
      return 'Done';
    case 4:
      return 'Cancelled';
    default:
      return null;
  }
}

String? cinExistCheck(
  List<String>? cin,
  List<String>? graphqlUrl,
  String? currentcinNumber,
  List<String>? weburl,
  String? type,
) {
  if (cin == null ||
      graphqlUrl == null ||
      currentcinNumber == null ||
      weburl == null) {
    return 'nodata';
  }

  final index = cin.indexOf(currentcinNumber);
  if (index == -1) {
    return 'nodata';
  }
  if (type == "web") {
    return weburl[index];
  } else {
    return graphqlUrl[index];
  }
}

String? amountSymbol(
  String? amount,
  String? symbol,
) {
  if (symbol == 'null' || symbol == null) {
    symbol = "₹";
  }

  if (amount == 'null' || amount == null) {
    return symbol + " 0";
  }
  String rupeeSymbol = symbol + " ";
  double amountnew = double.parse(amount);
  String amountString =
      amountnew.toStringAsFixed(2); // Convert to string with 2 decimal places

  List<String> parts =
      amountString.split('.'); // Split integer and decimal parts
  String integerPart = parts[0];
  String decimalPart = parts[1];

  double decimalvalue = double.parse(decimalPart);

  // Format the integer part with separators
  String formattedIntegerPart = '';
  for (int i = integerPart.length - 1, count = -1; i >= 0; i--, count++) {
    if (count != 0 && count % 2 == 0) {
      formattedIntegerPart = ',' + formattedIntegerPart;
    }
    formattedIntegerPart = integerPart[i] + formattedIntegerPart;
  }
  String formattedAmount = "";
  if (decimalvalue > 0) {
    formattedAmount = '$rupeeSymbol$formattedIntegerPart.$decimalPart';
  } else {
    formattedAmount = '$rupeeSymbol$formattedIntegerPart';
  }
  return formattedAmount;
}

int? convertIntToString(int? value) {
  // convert integer value to string
  if (value == null || value == "null") return 0;
  return value;
}

String? dateFormat(String? date) {
  print(date);
  if (date == null || date == 'null' || date == '' || date == '-') {
    return '-';
  }
  DateTime dateTime = DateTime.parse(date!);
  return DateFormat('MMM d, yyyy').format(dateTime);
}

String? isNull(String? value) {
  if (value == null || value == 'null' || value == "") {
    return '';
  } else {
    return value;
  }
}

String? emptyStringReturn(String? data) {
  if (data == null || data == 'null') {
    return "";
  } else {
    return data;
  }
}

int? emptyIntReturn(int? data) {
  if (data == '' || data == null || data == 'null') {
    return 0;
  } else {
    return data;
  }
}

dynamic taxjson(
  dynamic addlast,
  String? type,
  int? taxid,
  String? taxname,
  double? taxamount,
  double? taxpercent,
  double? total,
  int? index,
  dynamic productList,
  String? taxUpdateKeyValue,
) {
  var existingData;
  print(productList);
  if (addlast == null ||
      addlast == '' ||
      addlast == 'null' ||
      addlast == "{}") {
    addlast =
        '{"taxnames":[],"taxpercent":[],"taxid":[],"taxidjson":{"data":[]},"taxamount":0,"total":0}';
    existingData = jsonDecode(addlast);
  } else {
    existingData = addlast!;
  }

  if (type == 'add') {
    existingData['taxnames'].add(taxname);
    existingData['taxpercent'].add(taxpercent);
    existingData['taxid'].add(taxid);
    final taxdata = jsonDecode('{"data":[]}');
    var taxidarray = existingData['taxid'];
    if (taxidarray == null || taxidarray == 'null' || taxidarray == '') {
      // taxdata['data'] = [];
    } else {
      for (var i = 0; i < taxidarray.length; i++) {
        final newTax = {
          "account_tax_id": taxidarray[i],
        };
        taxdata['data'].add(newTax);
      }
    }

    existingData['taxidjson'] = taxdata;
  } else if (type == 'update') {
    var taxUpdateKeyValuename;
    switch (taxUpdateKeyValue) {
      case 'product':
        taxUpdateKeyValuename = 'product_taxes_rels';
        break;
      case 'sales':
        taxUpdateKeyValuename = 'account_tax_sale_order_line_rels';
        break;
      case 'purchase':
        taxUpdateKeyValuename = 'account_tax_purchase_order_line_rels';
        break;
      case 'invoice':
        taxUpdateKeyValuename = 'account_move_line_account_tax_rels';
        break;
      default:
        taxUpdateKeyValuename = 'product_taxes_rels';
    }

    var taxlistarray = productList[taxUpdateKeyValuename];

    if (taxlistarray == null || taxlistarray == 'null' || taxlistarray == '') {
      return "{}";
    }
    if (taxlistarray.length == 0) {
      return "{}";
    }
    var taxidarray = [];
    var taxnamearray = [];
    var taxpercentarray = [];
    for (var i = 0; i < taxlistarray.length; i++) {
      taxidarray.add(taxlistarray[i]['account_tax']['id']);
      taxnamearray.add(taxlistarray[i]['account_tax']['name']);
      taxpercentarray.add(taxlistarray[i]['account_tax']['amount']);
    }
    existingData['taxnames'] = taxnamearray;
    existingData['taxpercent'] = taxpercentarray;
    existingData['taxid'] = taxidarray;
    final taxdata = jsonDecode('{"data":[]}');

    if (taxidarray == null || taxidarray == 'null' || taxidarray == '') {
      // taxdata['data'] = [];
    } else {
      for (var i = 0; i < taxidarray.length; i++) {
        final newTax = {
          "account_tax_id": taxidarray[i],
        };
        taxdata['data'].add(newTax);
      }
    }
    print(taxdata);
    existingData['taxidjson'] = taxdata;
  } else if (type == 'delete') {
    existingData['taxnames'].removeAt(index!);
    existingData['taxpercent'].removeAt(index);
    existingData['taxid'].removeAt(index);

    final taxdata = jsonDecode('{"data":[]}');

    var taxidarray = existingData['taxid'];
    if (taxidarray == null || taxidarray == 'null' || taxidarray == '') {
    } else {
      for (var i = 0; i < taxidarray.length; i++) {
        final newTax = {
          "account_tax_id": taxidarray[i],
        };
        taxdata['data'].add(newTax);
      }
    }

    existingData['taxidjson'] = taxdata;
  } else if (type == 'tax_total') {
    print(taxamount);
    existingData['taxamount'] = taxamount;
    existingData['total'] = total;
  }
  print(existingData);

  return existingData;
}

int? findListCount(dynamic listvalue) {
  if (listvalue == null || listvalue == '' || listvalue == '') {
    return 0;
  }
  if (listvalue is List) {
    return listvalue.length;
  } else {
    return 0;
  }
}

dynamic findListValueWithIndex(
  List<dynamic>? listvalue,
  int? value,
  String? type,
) {
  print(listvalue);
  if (listvalue == null || value == null || value >= listvalue.length) {
    return "";
  }

  if (type == 'value') {
    return listvalue[value];
  } else {
    return listvalue.indexWhere((element) => element == value);
  }
}

bool? findListValueExist(
  List<dynamic>? listvalue,
  dynamic value,
) {
  if (listvalue == null || listvalue.isEmpty) {
    return false;
  }
  return listvalue.contains(value);
}

bool? findMenuname(
  String? first,
  String? second,
) {
  if (first == second) {
    return true;
  }
  return false;
}

double? findTotalamount(
  double? subtotal,
  String? type,
  dynamic productList,
  String? jsonType,
  String? taxkey,
) {
  if (subtotal == null || subtotal == 'null') {
    return 0.0;
  }
  double? taxAmount = 0.0;
  double? taxtotal = 0.0;
  var taxpercentarray = [];

  if (jsonType == 'update') {
    var taxUpdateKeyValuename;
    switch (taxkey) {
      case 'product':
        taxUpdateKeyValuename = 'product_taxes_rels';
        break;
      case 'sales':
        taxUpdateKeyValuename = 'account_tax_sale_order_line_rels';
        break;
      case 'purchase':
        taxUpdateKeyValuename = 'account_tax_purchase_order_line_rels';
        break;
      case 'invoice':
        taxUpdateKeyValuename = 'account_move_line_account_tax_rels';
        break;
      default:
        taxUpdateKeyValuename = 'product_taxes_rels';
    }

    var taxlistarray = productList[taxUpdateKeyValuename];

    if (taxlistarray == null || taxlistarray == 'null' || taxlistarray == '') {
      taxpercentarray = [];
      taxlistarray = [];
    }
    if (taxlistarray.length == 0) {
      taxpercentarray = [];
    }
    if (taxlistarray.length > 0) {
      for (var i = 0; i < taxlistarray.length; i++) {
        taxpercentarray.add(taxlistarray[i]['account_tax']['amount']);
      }
    }
  } else {
    taxpercentarray = productList['taxpercent'] ?? [];
  }

  if (taxpercentarray != null) {
    for (var tax in taxpercentarray) {
      taxAmount = subtotal * tax / 100;
      taxtotal = taxAmount + taxtotal!;
    }
  }
  if (type == 'total') {
    return taxtotal! + subtotal;
  } else {
    return taxtotal;
  }
}

dynamic addItemProduct(
  int? productid,
  String? productname,
  double? qty,
  double? amount,
  double? subtotal,
  String? unit,
  int? unitid,
  dynamic taxjson,
) {
  var newdata = {
    "product_id": productid,
    "product_name": productname,
    "qty": qty,
    "amount": amount,
    "subtotal": subtotal,
    "unit": unit,
    "unitid": unitid,
    "taxjson": taxjson
  };

  return newdata;
}

double? findSubTotal(
  double? qty,
  double? amount,
) {
  if (qty == null || qty == "" || qty == 'null') {
    qty = 0;
  }

  if (amount == null || amount == "" || amount == 'null') {
    amount = 0;
  }

  return qty * amount;
}

String? saveCurrentDateTime() {
  final DateTime currentDateTime = DateTime.now();
  final Duration subtractedDuration = Duration(hours: 5, minutes: 30);
  final DateTime updatedDateTime = currentDateTime.subtract(subtractedDuration);

// You can format the updatedDateTime if desired
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final String formattedDateTime = formatter.format(updatedDateTime);

  return formattedDateTime;
}

String? saveGivenDateTime(String? datetime) {
  print(datetime);
  var date = new DateTime(datetime as int);
  print(date);
  DateTime newDateTime = date.add(Duration(days: 5, hours: 30));
  print(newDateTime);
  String? value = DateFormat('MM-dd-yyyy HH:mm:ss').format(newDateTime);
  print(value);

  return value;
}

double? emptydoubleReturn(double? data) {
  if (data == '' || data == null || data == 'null') {
    return 0.0;
  } else {
    return data;
  }
}

dynamic dateStartAndEndWithDays(int? day) {
  if (day == 1) {
    day = 90;
  } else {
    day = 30;
  }

  DateTime now = DateTime.now();
  DateTime date = now.subtract(Duration(days: day ?? 1));
  DateTime start = DateTime(date.year, date.month, date.day, 0, 0, 0);
  DateTime end = DateTime(date.year, date.month, date.day, 23, 59, 59);
  return {"start": start, "end": end};
}

String? findTotalWithJson(
  dynamic productListItem,
  String? type,
  List<dynamic>? allproductListItems,
) {
  print(allproductListItems);
  if (type == 'total') {
    if (productListItem == null || productListItem == 'null') {
      return '0.0';
    }

    final jsonString = productListItem;
    Map<String, dynamic> existingData = json.decode(jsonString);

    double? total = 0.0;
    total = existingData['taxjson']['total'];
    return total.toString();
  } else if (type == 'all_total') {
    if (allproductListItems == null || allproductListItems == 'null') {
      return '0.0';
    }

    if (allproductListItems.length == 0) {
      return '0.0';
    }

    double total = 0.0;

    for (var i = 0; i < allproductListItems.length; i++) {
      double currenttotal = allproductListItems[i]['taxjson']['total'];

      total = currenttotal + total;
      // round to 2 decimal
      total = double.parse((total).toStringAsFixed(2));
    }

    return total.toString() ?? '';
  } else if (type == 'untax_total') {
    if (allproductListItems == null || allproductListItems == 'null') {
      return '0.0';
    }

    if (allproductListItems.length == 0) {
      return '0.0';
    }

    double untax_total = 0.0;

    for (var i = 0; i < allproductListItems.length; i++) {
      double currenttotal = allproductListItems[i]['subtotal'];

      untax_total = currenttotal + untax_total;
      // round to 2 decimal
      untax_total = double.parse((untax_total).toStringAsFixed(2));
    }

    return untax_total.toString() ?? '';
  } else if (type == 'tax_total') {
    if (allproductListItems == null || allproductListItems == 'null') {
      return '0.0';
    }

    if (allproductListItems.length == 0) {
      return '0.0';
    }

    double tax_total = 0.0;

    for (var i = 0; i < allproductListItems.length; i++) {
      double currenttotal = allproductListItems[i]['taxjson']['taxamount'];

      tax_total = currenttotal + tax_total;
      // round to 2 decimal
      tax_total = double.parse((tax_total).toStringAsFixed(2));
    }

    return tax_total.toString() ?? '';
  }
}

dynamic storeproductLineItems(
  List<dynamic>? lineitems,
  String? taxUpdateKeyValue,
  int? currencyid,
  int? companyid,
) {
  var taxUpdateKeyValuename;
  switch (taxUpdateKeyValue) {
    case 'product':
      taxUpdateKeyValuename = 'product_taxes_rels';
      break;
    case 'sales':
      taxUpdateKeyValuename = 'account_tax_sale_order_line_rels';
      break;
    case 'purchase':
      taxUpdateKeyValuename = 'account_tax_purchase_order_line_rels';
      break;
    case 'invoice':
      taxUpdateKeyValuename = 'account_move_line_account_tax_rels';
      break;
    default:
      taxUpdateKeyValuename = 'product_taxes_rels';
  }

  // loop addlast and return json
  var productLineItemslist = '{"data":[]}';
  var newdata = {};
  var productLineItemsarray = jsonDecode(productLineItemslist);
  // get current date
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  var taxjson = jsonDecode('{"data":[]}');

  if (taxUpdateKeyValue == 'sales') {
    for (var i = 0; i < lineitems!.length; i++) {
      if (lineitems[i]['taxjson'] != null &&
          lineitems[i]['taxjson'] != 'null') {
        var tax = jsonEncode(lineitems[i]['taxjson']['taxidjson']);
        taxjson = tax;
      }

      newdata = {
        "product_id": lineitems[i]['product_id'],
        "name": lineitems[i]['product_name'],
        "product_uom_qty": lineitems[i]['qty'],
        "price_unit": lineitems[i]['amount'],
        "price_subtotal": lineitems[i]['subtotal'],
        "product_uom": lineitems[i]['unitid'],
        "customer_lead": 0,
        "currency_id": currencyid,
        "company_id": companyid
      };
      newdata[taxUpdateKeyValuename] = jsonDecode(taxjson);

      productLineItemsarray['data'].add(newdata);
    }
  } else if (taxUpdateKeyValue == 'invoice') {
    for (var i = 0; i < lineitems!.length; i++) {
      if (lineitems[i]['taxjson'] != null &&
          lineitems[i]['taxjson'] != 'null') {
        var tax = jsonEncode(lineitems[i]['taxjson']['taxidjson']);
        taxjson = tax;
      }
      newdata = {
        "product_id": lineitems[i]['product_id'],
        "name": lineitems[i]['product_name'],
        "currency_id": currencyid,
        "price_unit": lineitems[i]['amount'],
        "price_subtotal": lineitems[i]['subtotal'],
        "account_id": 12,
        "quantity": lineitems[i]['qty'],
        "product_uom_id": lineitems[i]['unitid'],
        "company_id": companyid
      };
      newdata[taxUpdateKeyValuename] = jsonDecode(taxjson);

      productLineItemsarray['data'].add(newdata);
    }
  } else {
    for (var i = 0; i < lineitems!.length; i++) {
      if (lineitems[i]['taxjson'] != null &&
          lineitems[i]['taxjson'] != 'null') {
        var tax = jsonEncode(lineitems[i]['taxjson']['taxidjson']);
        taxjson = tax;
      }
      newdata = {
        "product_id": lineitems[i]['product_id'],
        "name": lineitems[i]['product_name'],
        "product_qty": lineitems[i]['qty'],
        "price_unit": lineitems[i]['amount'],
        "price_subtotal": lineitems[i]['subtotal'],
        "product_uom": lineitems[i]['unitid'],
        "date_planned": formattedDate,
        "currency_id": currencyid,
        "company_id": companyid
      };
      newdata[taxUpdateKeyValuename] = jsonDecode(taxjson);

      productLineItemsarray['data'].add(newdata);
    }
  }
  productLineItemslist = jsonEncode(productLineItemsarray);

  return productLineItemsarray;
}

double? findTotalAmountsinEdit(
  List<double>? taxamount,
  List<double>? subtotals,
  String? type,
) {
  double? totaltaxAmount = 0.0;
  double? totalSubtotal = 0.0;
  if (taxamount != 'null' && taxamount != null && taxamount != '') {
    for (var tax in taxamount) {
      if (tax == 'null' || tax == '') {
        tax = 0.0;
      }
      totaltaxAmount = (totaltaxAmount! + tax);
    }
  }
  if (type == 'tax') {
    return totaltaxAmount;
  }

  if (subtotals != 'null' && subtotals != null && subtotals != '') {
    for (var sub in subtotals) {
      if (sub == 'null' || sub == '') {
        sub = 0.0;
      }
      totalSubtotal = (totalSubtotal! + sub);
    }
  }

  if (type == 'untax') {
    return totalSubtotal;
  }

  return totaltaxAmount! + totalSubtotal!;
}

String? findProductItemValues(
  dynamic productListItem,
  String? type,
) {
  if (productListItem == null || productListItem == 'null') {
    return '-';
  }

  final jsonString = productListItem;
  Map<String, dynamic> existingData = json.decode(jsonString);
  var value;
  switch (type) {
    case 'name':
      value = existingData['product_name'];
      break;
    case 'qty':
      value = existingData['qty'];
      break;
    case 'amount':
      value = existingData['amount'];
      break;
    case 'subtotal':
      value = existingData['subtotal'];
      break;
    case 'unit':
      value = existingData['unit'];
      break;
    default:
      value = "";
  }
  return value;
}

dynamic totalsJson(
  String? type,
  List<dynamic>? detailList,
) {
  double taxamount = 0.0;
  double untaxamount = 0.0;
  double overallamount = 0.0;
  var convertedjson;
  if (detailList == '' || detailList == null) {
    convertedjson = {"taxtotal": 0.0, "untaxtotal": 0.0, "overalltotal": 0.0};
    return convertedjson;
  }
  print(detailList);
  int listlength = detailList.length;
  for (var i = 0; i < listlength; i++) {
    var subTotal = detailList[i]['price_subtotal'] ?? 0.0;
    var taxTotal = 0.0;
    if (type == 'account') {
      double taxpercent = 0.0;
      var name = 'account_move_line_account_tax_rels';
      if (detailList[i][name] != null) {
        for (int j = 0; j < detailList[i][name].length; j++) {
          taxpercent = detailList[i][name][j]['account_tax']['amount'] ?? 0.0;
          taxTotal = taxTotal + (subTotal * taxpercent / 100);
        }
      } else {
        taxTotal = 0.0;
      }
    } else {
      if (detailList[i]['price_tax'] == null ||
          detailList[i]['price_tax'] == 'null' ||
          detailList[i]['price_tax'] == '') {
        taxTotal = 0.0;
      } else {
        taxTotal = detailList[i]['price_tax'].toDouble();
      }
    }
    if (taxTotal == 'null' || taxTotal == '') {
      taxTotal = 0.0;
    }
    taxamount = (taxamount + taxTotal);
    if (subTotal == 'null' || subTotal == '') {
      subTotal = 0.0;
    }
    untaxamount = (untaxamount + subTotal);
  }
  overallamount = taxamount + untaxamount;
  convertedjson = {
    "taxtotal": taxamount,
    "untaxtotal": untaxamount,
    "overalltotal": overallamount
  };
  return convertedjson;
}

List<double>? emptyList() {
  return [];
}

String? listphone(String? phone) {
  if (phone == null || phone == "null") {
    return "-";
  }

  return phone;
}

bool? nullCheck(bool? data) {
  if (data == true) {
    return true;
  } else {
    return false;
  }
}

bool? checkStatusIf(int? id) {
  if (id == 3) {
    print('df');
    return false;
  } else {
    return true;
  }
}

String? address(
  String? value1,
  String? value2,
  String? value3,
) {
  if (value1 == null || value1 == 'null' || value1 == '') {
    value1 = "";
  } else {
    value1 = '$value1,';
  }
  if (value2 == null || value2 == 'null' || value2 == '') {
    value2 = "";
  } else {
    value2 = '$value2,';
  }
  if (value3 == null || value3 == 'null' || value3 == '') {
    value3 = "";
  } else {
    value3 = '$value3.';
  }

  return '$value1 $value2 $value3';
}

String? getInventoryImageUrl(
  int? id,
  String? url,
) {
  return "https://${url}/web/image?model=product.template&id=${id}&field=image_128";
}

double? calculatesingleTaxamount(
  double? subtotal,
  List<dynamic>? taxLine,
) {
  if (taxLine == null || taxLine == '') {
    return 0.0;
  }
  var taxTotal = 0.0;
  double taxpercent = 0.0;
  for (int i = 0; i < taxLine.length; i++) {
    taxpercent = taxLine[i]['account_tax']['amount'];
    taxTotal = taxTotal + (subtotal! * taxpercent / 100);
  }
  return taxTotal;
}

String? databaseDateFormat(String? date) {
  // Get Today date in dd/M/Y
  var now = new DateTime.now();
  print('1');
  print(now);
  var formatter = new DateFormat('MM-dd-yyyy');
  print(formatter);
  String formatted = formatter.format(now);
  print(formatted);
  return formatted;
}

String? nullcheckforDisplay(String? displayValue) {
  if (displayValue == '' || displayValue == null || displayValue == 'null') {
    return '-';
  }

  return displayValue;
}

String? stopTimer(
  String? start,
  String? stop,
) {
  if (start == null || stop == null) {
    print('stop1');
    return '00:00:00';
  }
  if (stop != null) {
    final startTime = DateTime.parse(start);
    final stopTime = DateTime.parse(stop);

    final diff = stopTime.difference(startTime);

    final hours = diff.inHours;
    final minutes = diff.inMinutes.remainder(60);
    final seconds = diff.inSeconds.remainder(60);

    return '$hours:$minutes:$seconds';
  }
  print('stop2');
  return '00:00:00';
}

double? totalAmount(
  double? databasevalue,
  double? pagestatevalue,
) {
  if (databasevalue != '' || databasevalue != null) {
    return databasevalue;
  } else {
    return pagestatevalue;
  }
}

bool? taskStatusIfCancelled(int? id) {
  print(id);
  if (id == 3) {
    return false;
  }
  return true;
}

List<dynamic>? editItemProductList(
  String? type,
  List<dynamic>? productLines,
) {
  List<Map<String, dynamic>> productList = [];
  if (productLines != null) {
    var name = '';
    switch (type) {
      case 'product':
        name = 'product_taxes_rels';
        break;
      case 'sales':
        name = 'account_tax_sale_order_line_rels';
        break;
      case 'purchase':
        name = 'account_tax_purchase_order_line_rels';
        break;
      case 'invoice':
        name = 'account_move_line_account_tax_rels';
        break;
      default:
        name = 'product_taxes_rels';
    }
    for (var productLine in productLines) {
      var taxamount = 0.0;
      var subTotal = productLine['price_subtotal'] ?? 0.0;
      List<String> taxnames = [];
      for (var tax in productLine[name]) {
        if (tax['account_tax']['name'] == null ||
            tax['account_tax']['name'] == 'null' ||
            tax['account_tax']['name'] == '') {
          tax['account_tax']['name'] = '';
        } else {
          taxnames.add(tax['account_tax']['name']);
        }
        taxnames.add(tax['account_tax']['name']);
        var taxpercent = tax['account_tax']['amount'] ?? 0.0;
        taxamount = taxamount + (subTotal * taxpercent / 100);
      }
      if (type == 'invoice') {
        productLine['product_uom_qty'] = productLine['quantity'] ?? '';
      }
      if (type == 'purchase') {
        productLine['product_uom_qty'] = productLine['product_qty'] ?? '';
      }
      var newdata = {
        "line_id": productLine['id'] ?? '',
        "product_id": productLine['product_product']['id'] ?? '',
        "product_name":
            productLine['product_product']['product_template']['name'] ?? '',
        "qty": productLine['product_uom_qty'] ?? '',
        "amount": productLine['price_unit'],
        "subtotal": productLine['price_subtotal'] ?? '',
        "unit": productLine['uom_uom']['name'] ?? '',
        "taxamount": taxamount,
        "total": taxamount + subTotal,
        "taxnames": taxnames
      };
      productList.add(newdata);
    }
  }

  return productList;
}

int? calculateInventoryQuantity(dynamic quantityList) {
  if (quantityList == null || quantityList == 'null') {
    return 0;
  }
  int sum = 0;
  for (var i = 0; i < quantityList.length; i++) {
    sum += int.parse(quantityList[i]);
  }
  return sum;
}

String? yeartoDate(String? date) {
  // Get Today date in dd/M/Y
  var formatter = new DateFormat('yyyy-mm-dd');
  String formatted = formatter.format(date as DateTime);
  return formatted;
}

List<String>? roleAccessPushSingleArray(List<String>? array) {
  // [ Admin /  Rights, Admin /  Rights2] prevent duplicate value  before slash & omit after slash value
  if (array == null || array.isEmpty) {
    return [];
  }

  final List<String> set = [];
  for (final String item in array) {
    final List<String> parts = item.split('/');
    String trim = parts[0].trim();
    String key = trim.replaceAll(RegExp(r'\s+$'), '');
    if (parts.length > 1 && !set.contains(key)) {
      set.add(key);
    }
  }

  return set.toList();
}

bool? checkTwoArray(
  List<String>? sidemenu,
  List<String>? submenu,
) {
  if (sidemenu == null || submenu == null) {
    return null;
  }
  var variable;
  List<String> trimmedArray =
      sidemenu.map((element) => element.trim()).toList();
  for (final element in trimmedArray) {
    if (submenu.contains(element)) {
      String variable = 'true';
    } else {
      String variable = 'false';
    }
  }

  if (variable == 'true') {
    return true;
  } else {
    return false;
  }
}

List<dynamic>? imageAndVideoByList(List<dynamic>? productTemplates) {
  if (productTemplates == 'null' || productTemplates == null) {
    return [];
  }
  if (productTemplates.length == 0) {
    return [];
  }
  var content_array = [];
  for (var i = 0; i < productTemplates.length; i++) {
    var projectimagearray = productTemplates[i];
    var content_json = {};
    content_json = {
      "content": projectimagearray['id'],
      "content_type": 'image',
      "content_name": projectimagearray['name']
    };
    content_array.add(content_json);

    content_json = {
      "content": projectimagearray['video_url'],
      "content_type": 'video',
      "content_name": projectimagearray['name']
    };
    if (projectimagearray['video_url'] == 'null' ||
        projectimagearray['video_url'] == null) {
    } else {
      content_array.add(content_json);
    }
  }
  return content_array;
}

bool? checkProductTypeImage(String? contenttype) {
  if (contenttype == 'image') {
    return true;
  }
  return false;
}

bool? checkArrayValue(
  List<String>? sidemenu,
  String? value,
) {
  if (sidemenu == null || value == null) {
    return null;
  }
  var variable;
  List<String> modifiedList =
      sidemenu.map((string) => string.replaceAll(' ', '')).toList();

  if (!modifiedList.contains(value)) {
    return false;
  }
  return true;
}

String? yeartoDateTime(String? date) {
  final parsedDate = DateTime.parse(date!);
  return DateFormat('EEE, d MMM yyyy h:mm a').format(parsedDate);
}

bool? equalValueCheck(
  int? value1,
  int? value2,
) {
  if (value1 == value2) {
    return true;
  }
  return false;
}

dynamic checkProductExist(
  int? productid,
  List<dynamic>? existedlist,
) {
  var data = {
    "status": false,
  };
  print(productid);
  print(existedlist);
  if (productid == null || existedlist == null) {
    print(1);
    return data;
  }
  if (existedlist == 'null' || existedlist == '' || existedlist.length == 0) {
    print(2);
    return data;
  }
  if (existedlist.length == 0) {
    print(3);
    return data;
  }
  final index =
      existedlist.indexWhere((element) => element['product_id'] == productid);
  if (index == -1) {
    print(4);
    return data;
  }
  print(5);
  var data2 = {"status": true, "id": existedlist[index]['line_id']};
  return data2;
}

bool? conditionVisibilityNullCheck(String? value) {
  if (value == '' || value == null || value == 0 || value == 'null') {
    return false;
  }
  return true;
}

String? beforeOneMonthDate(int? initialMonth) {
  switch (initialMonth) {
    case 3:
      final now = DateTime.now();
      final lastThreeMonth = now.subtract(Duration(days: 3 * 30));
      final formatter = DateFormat('MM-dd-yyyy');
      return formatter.format(lastThreeMonth) + ' 00:00:00';
    case 6:
      final now = DateTime.now();
      final lastsixMonth = DateTime(now.year, now.month - 6, now.day);
      final formatter = DateFormat('MM-dd-yyyy');
      return formatter.format(lastsixMonth) + ' 00:00:00';
    case 12:
      final now = DateTime.now();
      final lastoneYear = DateTime(now.year - 1, now.month, now.day);
      ;
      final formatter = DateFormat('MM-dd-yyyy');
      return formatter.format(lastoneYear) + ' 00:00:00';
    default:
      final now = DateTime.now();
      final lastonemonth = now.subtract(Duration(days: 30));
      final formatter = DateFormat('MM-dd-yyyy');
      return formatter.format(lastonemonth) + ' 00:00:00';
  }
}

String? grnSwitchCustomFunction(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'draft':
        return 'Draft';
      case 'waiting':
        return 'Waiting Another Person';
      case 'confirmed':
        return 'Waiting';
      case 'assigned':
        return 'Ready';
      case 'done':
        return 'Done';
      case 'cancel':
        return 'Cancelled';
      default:
        return '';
    }
  } else {
    switch (status) {
      case 'draft':
        return '#FF7D7D'; //pink
      case 'reported':
        return '#FF9529'; // Yellow
      case 'approved':
        return '#298EF2'; //Blue
      case 'done':
        return '#00B051'; // green
      case 'assigned':
        return '#34ebd8'; // Gray
      case 'refused':
        return '#868383'; // Gray
      default:
        return '';
    }
  }
}

dynamic getMonthAndDate(
  int? month,
  int? year,
) {
  if (month == null || month == 'null' || year == null || year == 'null') {
    return {
      'month': '',
      'year': '',
    };
  }

  if (month == 1) {
    return {
      'month': 12,
      'year': year - 1,
    };
  } else {
    return {
      'month': month - 1,
      'year': year,
    };
  }
}

dynamic getMonthsStartAndEndDate(
  int? month,
  int? year,
) {
  var now = DateTime.now();
  var startDate = DateTime(year!, month!, 1);
  var endDate = DateTime(year!, month + 1, 1).subtract(Duration(days: 1));
  var formatter = DateFormat('MM-dd-yyyy');
  var formattedStartDate = formatter.format(startDate);
  var formattedEndDate = formatter.format(endDate);
  return {'startDate': formattedStartDate, 'endDate': formattedEndDate};
}

int? getCurrentMonths() {
  DateTime now = DateTime.now();
  return now.month;
}

int? getCurrentYears() {
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy');
  String formatted = formatter.format(now);
  return int.parse(formatted);
}

dynamic addProductItemJson(
  int? productId,
  List<dynamic>? existedProductList,
) {
  if (existedProductList == null ||
      existedProductList == 'null' ||
      existedProductList.length == 0) {
    return {
      "status": false,
    };
  }
  final index = existedProductList
      .indexWhere((element) => element['product_id'] == productId);
  if (index == -1) {
    return {
      "status": false,
    };
  } else {
    return {
      "status": true,
      "index": index,
    };
  }
}

dynamic addProductItemUpdate(
  List<dynamic>? existedProductList,
  int? productid,
  String? productname,
  double? qty,
  double? amount,
  double? subtotal,
  String? unit,
  int? unitid,
  dynamic taxJson,
) {
  if (existedProductList == null ||
      // ignore: unrelated_type_equality_checks
      existedProductList == 'null' ||
      existedProductList.length == 0) {
    return {
      "status": false,
    };
  }
  final index = existedProductList!
      .indexWhere((element) => element['product_id'] == productid);
  if (index == -1) {
    return {
      "status": false,
    };
  } else {
    var existedTaxJsonData = existedProductList[index]['taxjson'];
    var taxJsonData = taxJson;

    var taxtotal = existedTaxJsonData['total'] + taxJsonData['total'];
    var taxamount = existedTaxJsonData['taxamount'] + taxJsonData['taxamount'];
    var existedTaxJsonnameArray = [];
    if (existedTaxJsonData['taxnames'] == '' ||
        existedTaxJsonData['taxnames'] == null) {
      existedTaxJsonnameArray = [];
    } else {
      existedTaxJsonnameArray = existedTaxJsonData['taxnames'];
    }
    var existedTaxJsonpercentArray = [];
    if (existedTaxJsonData['taxpercent'] == '' ||
        existedTaxJsonData['taxpercent'] == null) {
      existedTaxJsonpercentArray = [];
    } else {
      existedTaxJsonpercentArray = existedTaxJsonData['taxpercent'];
    }

    var existedTaxJsonidArray = [];
    if (existedTaxJsonData['taxid'] == '' ||
        existedTaxJsonData['taxid'] == null) {
      existedTaxJsonidArray = [];
    } else {
      existedTaxJsonidArray = existedTaxJsonData['taxid'];
    }
    if (taxJsonData['taxid'] == '' || taxJsonData['taxid'] == null) {
      taxJsonData['taxid'] = [];
    }
    if (taxJsonData['taxid'].length > 0) {
      for (var i = 0; i < taxJsonData['taxid'].length; i++) {
        var taxindex = existedTaxJsonidArray.indexOf(taxJsonData['taxid'][i]);
        if (taxindex == -1) {
          existedTaxJsonnameArray.add(taxJsonData['taxnames'][i]);
          existedTaxJsonidArray.add(taxJsonData['taxid'][i]);
          existedTaxJsonpercentArray.add(taxJsonData['taxpercent'][i]);
        }
      }
    }
    final taxdata = jsonDecode('{"data":[]}');
    var taxidarray = existedTaxJsonidArray;
    if (taxidarray.length > 0) {
      for (var i = 0; i < taxidarray.length; i++) {
        final newTax = {
          "account_tax_id": taxidarray[i],
        };
        taxdata['data'].add(newTax);
      }
    }
    var taxJsonData2 = {
      "taxnames": existedTaxJsonnameArray,
      "taxpercent": existedTaxJsonpercentArray,
      "taxid": existedTaxJsonidArray,
      "taxamount": taxamount,
      "total": taxtotal,
      "taxidjson": taxdata
    };
    var updatedData = {
      "product_id": productid,
      "product_name": existedProductList[index]['product_name'],
      "qty": existedProductList[index]['qty'] + qty,
      "amount": existedProductList[index]['amount'],
      "subtotal": existedProductList[index]['subtotal'] + subtotal,
      "unit": existedProductList[index]['unit'],
      "unitid": existedProductList[index]['unitid'],
      "taxjson": taxJsonData2
    };
    return {
      "status": true,
      "data": updatedData,
    };
  }
}

dynamic getNextMonthNames(
  int? month,
  int? year,
) {
  if (month == null || year == null || month == 'null' || year == 'null') {
    return {
      'month': month,
      'year': year,
    };
  }
  if (month == 12) {
    return {
      'month': 1,
      'year': year + 1,
    };
  } else {
    return {
      'month': month + 1,
      'year': year,
    };
  }
}

String? quotationSwitchCustomFunction(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'draft':
        return 'Quotation';
      case 'send':
        return 'Quotation Send';
      case 'cancel':
        return 'Cancel';

      default:
        return '';
    }
  } else {
    switch (status) {
      case 'draft':
        return '#FF7D7D'; //pink
      case 'send':
        return '#FF9529'; // Yellow
      case 'cancle':
        return '#298EF2'; //Blue

      default:
        return '';
    }
  }
}

dynamic piechartgetTopFiveValues(
  List<dynamic>? label,
  List<dynamic>? value,
) {
  if (label == null || value == null || label.isEmpty || value.isEmpty) {
    return {'labels': [], 'values': []};
  }

  // Combine label and value into a map
  final dataMap = Map.fromIterables(label, value);

  // Sort the map by value in descending order
  final sortedMap = Map.fromEntries(
      dataMap.entries.toList()..sort((a, b) => b.value.compareTo(a.value)));

  // Get the top 5 entries from the sorted map
  final topEntries = sortedMap.entries.take(5);

  // Rearrange the label and value lists based on the top entries
  final topLabels = topEntries.map((entry) => entry.key).toList();
  final topValues = topEntries.map((entry) => entry.value).toList();

  return {'labels': topLabels, 'values': topValues};
}

String? onHandTotal(List<dynamic>? amountList) {
  if (amountList == null || amountList == 'null') {
    return '0.0';
  }
  if (amountList.length == 0) {
    return '0.0';
  }
  double total = 0.0;
  for (var i = 0; i < amountList.length; i++) {
    total = total + amountList[i];
  }
  return total.toString();
}

double? convertstringtoDouble(String? value) {
  if (value == null || value == 'null') {
    return 0.0;
  }
  try {
    return double.parse(value);
  } catch (e) {
    return 0.0;
  }
}

DateTime? convertMonthFormatToDateTime(String? date) {
  if (date == 'null' || date == null) {
    return DateTime.now();
  }

  DateTime dateTime = DateFormat("MM-dd-yyyy").parse(date);
  return dateTime;
}

String? saleOrderCustomFunction(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'invoiced':
        return 'Fully Invoiced';
      case 'to invoiced':
        return 'To Invoiced';
      case 'no':
        return 'Nothing to invoiced';

      default:
        return '';
    }
  } else {
    switch (status) {
      case 'invoiced':
        return '#FF7D7D'; //pink
      case 'to invoiced':
        return '#FF9529'; // Yellow
      case 'no':
        return '#298EF2'; //Blue

      default:
        return '';
    }
  }
}

bool? inventoryStockCheck(
  double? quantity,
  String? type,
) {
  if (quantity == null || quantity == 'null') {
    quantity = 0;
  }
  var result = false;
  if (type == 'low') {
    if (quantity < 10) {
      result = true;
    } else {
      result = false;
    }
  } else if (type == 'medium') {
    if (quantity > 10 && quantity < 25) {
      result = true;
    } else {
      result = false;
    }
  } else if (type == 'high') {
    if (quantity > 25) {
      result = true;
    } else {
      result = false;
    }
  }
  return result;
}

dynamic storeProductGrn(
  List<dynamic>? lineitems,
  int? companyid,
  int? locationid,
  String? procuremethod,
  int? locationdestid,
) {
  print(lineitems);

  var taxUpdateKeyValuename;
  var newdata = {};
  var productLineItemslist = '{"data":[]}';
  var productLineItemsarray = jsonDecode(productLineItemslist);
  // get current date
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  print(formattedDate);
  for (var i = 0; i < lineitems!.length; i++) {
    newdata = {
      "company_id": lineitems[i]['company_id'],
      "product_id": lineitems[i]['product_id'],
      "name": lineitems[i]['product_name'],
      "product_uom_qty": lineitems[i]['qty'],
      "product_uom": lineitems[i]['unitid'],
      "company_id": companyid,
      "location_id": locationid,
      "procure_method": procuremethod,
      "location_dest_id": locationdestid,
      "date": formattedDate,
    };
    productLineItemsarray['data'].add(newdata);
  }
  // convert into json
  productLineItemslist = jsonEncode(productLineItemsarray);
  print(productLineItemslist);

  return productLineItemsarray;
}

String? filterDateFormatChange(
  String? date,
  String? type,
) {
  if (date == 'null' || date == null) {
    return "";
  }

  if (type == 'list') {
    var dateisok;
    try {
      // Try to parse the string as a date
      DateTime.parse(date);
      dateisok = true;
    } catch (e) {
      // If parsing fails, it's not a valid date format
      dateisok = false;
    }
    DateTime dateTime;
    if (dateisok) {
      dateTime = DateTime.parse(date);
    } else {
      dateTime = DateFormat("MM-dd-yyyy").parse(date!);
    }
    // Format the DateTime object to desired format: "MMMM d, yyyy"
    String formattedDate = DateFormat("MMMM d, yyyy").format(dateTime);
    return formattedDate;
  } else {
    var dateisok;
    try {
      // Try to parse the string as a date
      DateTime.parse(date);
      dateisok = true;
    } catch (e) {
      // If parsing fails, it's not a valid date format
      dateisok = false;
    }
    print('date Ok');
    print(date);
    if (dateisok) {
      DateTime dateTime = DateTime.parse(date);
      String formattedDate = DateFormat("MM-dd-yyyy").format(dateTime);
      return formattedDate;
    } else {
      return date;
    }

    // If parsing fails, it's not a valid date format
  }
}

String? getStartdateWithInitialMonth(int? period) {
  if (period == 'null' || period == null) {
    period = 1;
  }
  final now = DateTime.now();
  var initialMonth = now.month - period;
  var initialYear = now.year;
  if (initialMonth <= 0) {
    initialYear--;
    initialMonth += 12;
  }
  final initialDate = DateTime(initialYear, initialMonth, now.day);
  final formatter = DateFormat('MM-dd-yyyy');
  return formatter.format(initialDate);
}

String? rfqSwitchCustomFunction(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'draft':
        return 'rfq';
      case 'sent':
        return 'RFQ Send';
      case 'cancel':
        return 'Cancelled';
      default:
        return '';
    }
  } else {
    switch (status) {
      case 'draft':
        return '#FF7D7D'; //pink
      case 'sent':
        return '#00B051'; // Green
      case 'cancel':
        return '#FF0000'; // Red

      default:
        return '';
    }
  }
}

String? purchaseorderSwitchCustomFunction(
  String? status,
  String? type,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (status) {
      case 'invoiced':
        return 'No Bill to Received';
      case 'no':
        return 'Nothing to Bill';
      case 'to invoice':
        return 'Waiting Bills';
      default:
        return '';
    }
  } else {
    switch (status) {
      case 'invoiced':
        return '#FF7D7D'; //pink
      case 'no':
        return '#FF9529'; // Yellow
      case 'to invoice':
        return '#298EF2'; //Blue

      default:
        return '';
    }
  }
}

String? convertFilterDateFormat(String? date) {
  if (date == 'null' || date == null) {
    return "";
  }
  var dateisok;
  try {
    // Try to parse the string as a date
    DateTime.parse(date);
    dateisok = true;
  } catch (e) {
    // If parsing fails, it's not a valid date format
    dateisok = false;
  }
  DateTime dateTime;
  if (dateisok) {
    dateTime = DateTime.parse(date);
  } else {
    dateTime = DateFormat("MM-dd-yyyy").parse(date!);
  }
  // Format the DateTime object to desired format: "MMMM d, yyyy"
  String formattedDate = DateFormat("MMMM d, yyyy").format(dateTime);
  return formattedDate;
}

String? attendanceListTimeFormat(String? datetime) {
  if (datetime == null || datetime == 'null') {
    return '';
  }
  final DateTime dateTime =
      DateTime.parse(datetime).add(Duration(hours: 5, minutes: 30));
  return DateFormat('hh:mm a').format(dateTime);
}

double? attendanceWorkedHours(String? checkInTime) {
  if (checkInTime == null || checkInTime == 'null') {
    return null;
  }
  final DateTime checkInDateTime =
      DateTime.parse(checkInTime).add(Duration(hours: 5, minutes: 30));
  final DateTime currentDateTime = DateTime.now();
  final Duration duration = currentDateTime.difference(checkInDateTime);
  final double durationInHours = duration.inMinutes / 60.0;
  final double formattedDuration =
      double.parse(durationInHours.toStringAsFixed(2));
  return formattedDuration;
}

String? convertAttachmentUrl(
  String? domainurl,
  int? id,
  String? model,
) {
  return "https://${domainurl}/web/image?model=${model}&id=${id}&field=datas";
}

dynamic addItemEquipment(
  String? type,
  double? quantity,
  dynamic productItem,
  List<dynamic>? existedItems,
) {
  if (type == 'add') {
    var productItemarray = productItem;
    var data = {
      "product_id": productItemarray['id'],
      "product_name": productItemarray['product_template']['name'],
      "qty": quantity,
      "unit": productItemarray['product_template']['uom_uom']['name'],
      "unitid": productItemarray['product_template']['uom_uom']['id'],
    };
    // var encodedData = jsonEncode(data);
    // // remove slash from encoded data
    // var encodedData2 = encodedData.replaceAll(r'\/', '/');
    return data;
  } else {
    if (existedItems == null || existedItems == 'null') {
      existedItems = [];
    }

    var equipmentList = '{"data":[]}';
    var equipmentListarray = jsonDecode(equipmentList);

    for (var i = 0; i < existedItems.length; i++) {
      var data = {
        "equipments": existedItems[i]['product_id'],
        "quantity": existedItems[i]['qty'],
        "units": existedItems[i]['unitid'],
        "state": "received"
      };
      equipmentListarray['data'].add(data);
    }
    var encodedData = jsonEncode(equipmentListarray);
    // remove slash from encoded data
    var encodedData2 = encodedData.replaceAll(r'\/', '/');
    return encodedData2;
  }
}

String? allSwitchCustomFunction(
  String? status,
  String? type,
  String? model,
) {
  if (type == 'null') {
    return ' ';
  }
  if (type == 'name') {
    switch (model) {
      case 'grn':
        switch (status) {
          case 'draft':
            return 'Draft';
          case 'waiting':
            return 'Waiting Another Person';
          case 'confirmed':
            return 'Waiting';
          case 'assigned':
            return 'Ready';
          case 'done':
            return 'Done';
          case 'cancel':
            return 'Cancelled';
          default:
            return '';
        }
      default:
        return '';
    }
  } else {
    switch (model) {
      case 'grn':
        switch (status) {
          case 'draft':
            return '#FF7D7D'; //pink
          case 'reported':
            return '#FF9529'; // Yellow
          case 'approved':
            return '#298EF2'; //Blue
          case 'done':
            return '#00B051'; // green
          case 'assigned':
            return '#34ebd8'; // Gray
          case 'refused':
            return '#868383'; // Gray
          default:
            return '';
        }
      default:
        return '';
    }
  }
}

dynamic statusChange(
  String? model,
  String? status,
) {
  print(model);
  print(status);
  if (model == null || status == null) {
    return {"name": 'Status Not Found', "color": '#D1E3F4'};
  }
  var result = {"name": 'Status Not Found', "color": '#D1E3F4'};
  if (model == 'quotation') {
    switch (status) {
      case 'draft':
        result = {"name": "QUOTATION", "color": "#EAD183"}; // venthayacolor
        break;
      case 'sent':
        result = {"name": "QUOTATION SENT", "color": "#D4ECD4"}; // light green
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'saleorder') {
    switch (status) {
      case 'sale':
        result = {"name": "SALE ORDER", "color": "#F1AFB1"}; // pink
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'rfq') {
    switch (status) {
      case 'draft':
        result = {"name": "RFQ", "color": "#EAD183"}; // venthayacolor
        break;
      case 'sent':
        result = {"name": "RFQ SENT", "color": "#D4ECD4"}; // light green
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'leave') {
    switch (status) {
      case 'draft':
        result = {"name": "DRAFT", "color": "#EAD183"}; // venthayacolor
        break;
      case 'validate':
        result = {"name": "APPROVED", "color": "#D4ECD4"}; // light green
        break;
      case 'refuse':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'purchaseorder') {
    switch (status) {
      case 'purchase':
        result = {
          "name": "PURCHASE ORDER",
          "color": "#F1AFB1"
        }; // venthayacolor
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'accounting') {
    switch (status) {
      case 'draft':
        result = {"name": "DRAFT", "color": "#EAD183"}; // venthayacolor
        break;
      case 'posted':
        result = {"name": "POSTED", "color": "#D4ECD4"}; // light green
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  if (model == 'inventory') {
    switch (status) {
      case 'draft':
        result = {"name": "DRAFT", "color": "#EAD183"}; // pink
        break;
      case 'waiting':
        result = {
          "name": "WAITING ANOTHER OPERATION",
          "color": "#D4ECD4"
        }; // light green
        break;
      case 'confirmed':
        result = {"name": "WAITING", "color": "#DAD7D8"}; // gray
        break;
      case 'assigned':
        result = {"name": "READY", "color": "#78CDAC"}; // cyan
        break;
      case 'done':
        result = {"name": "DONE", "color": "#7ECC6f"}; // grean
        break;
      case 'cancel':
        result = {"name": "CANCELLED", "color": "#D1E3F4"}; // lightblue
        break;
      default:
    }
  }
  return result;
}

bool? equalValueCheckString(
  String? value1,
  String? value2,
) {
  if (value1 == value2) {
    return true;
  }
  return false;
}

dynamic settingsAppstateUpdate(
  String? jsonKey,
  String? jsonUpdateValue,
  String? jsonOldValue,
  String? type,
) {
  // add vaule in the json old value with key
  var value = jsonUpdateValue;
  if (type == "int") {
    value = int.parse(jsonUpdateValue!) as String?;
  }
  Map<String, dynamic> jsonMap = json.decode(jsonOldValue!);
  jsonMap[jsonKey!] = value;
  return json.encode(jsonMap);
}

String? getDownloadUrl(
  String? domainUrl,
  String? model,
  int? id,
) {
  var url = "";
  var paramenter = "";

  switch (model) {
    case 'sale':
      url = "sale_print";
      paramenter = "saleid";
      break;
    case "purchase":
      url = "purchase_print";
      paramenter = "purchaseid";
      break;
    case "invoice":
      url = "invoice_print";
      paramenter = "invoiceid";
      break;
    case 'inventory':
      url = "transfer_print";
      paramenter = "transferid";
      break;

    default:
      url = "sale_print";
      paramenter = "saleid";
      break;
  }
  var result = "https://${domainUrl}/api/${url}?${paramenter}=${id}";
  return result;
}

int? doubleToInteger(double? value) {
  if (value == null || value == 'null') {
    return 0;
  } else {
    return value.toInt();
  }
}

String? doubleToString(double? value) {
  if (value == null) {
    return null;
  } else {
    return value.toString();
  }
}

String? amtSymbolDash(
  String? symbol,
  String? amount,
) {
  if (symbol == 'null' || symbol == null) {
    symbol = "₹";
  }

  if (amount == 'null' || amount == null) {
    return symbol + " 0";
  }
  return symbol + " " + amount;
}

String? removeAllHtmlTags(String? stringhtmlText) {
  // Remove HTML tags from a String
  if (stringhtmlText == null) {
    return null;
  }
  return stringhtmlText.replaceAll(RegExp(r'<[^>]*>'), '');
}

String? dateTimeMonthLine(
  String? currentdate,
  String? type,
) {
  // get month from date
  if (currentdate == null || currentdate == "null") {
    return '-';
  }

  final DateTime date = DateFormat('yyyy-MM-dd').parse(currentdate);
  final String result = DateFormat(type).format(date);

  return result;
}

String? newDateFormat(String? date) {
  if (date == null || date == 'null' || date == '' || date == '-') {
    return '-';
  }
  DateTime dateTime = DateTime.parse(date!);
  return DateFormat('d-MMM-yyyy').format(dateTime);
}

List<dynamic>? addLineItemstoPick(
  List<dynamic>? lineitems,
  String? saleorpurchase,
) {
  if (lineitems == null || lineitems == 'null') {
    return [];
  }
  var oldlineitem = [];
  for (var i = 0; i < lineitems.length; i++) {
    var product_id;
    var quantity;
    if (saleorpurchase == 'sale') {
      product_id = lineitems[i]['product_product']['id'];
      quantity = lineitems[i]['product_uom_qty'];
    } else {
      product_id = lineitems[i]['product_id'];
      quantity = lineitems[i]['product_qty'];
    }
    var newdata = {
      "product_id": product_id,
      "product_name": lineitems[i]['product_product']['product_template']
          ['name'],
      "qty": quantity,
      "unit": lineitems[i]['uom_uom']['name'],
      "unitid": 0
    };
    oldlineitem.add(newdata);
  }
  return oldlineitem;
}

dynamic dashboardXandYaxisCalculation(List<dynamic>? node) {
  List<String> datewise = [];
  List<double> amountWist = [];

  for (int i = 0; i < node!.length; i++) {
    final Map<String, dynamic> data = node[i];

    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formatted = formatter.format(now);

    var indate = formatted;
    var inamount = 0.0;

    if (data["date"] != null && data["date"] != 'null' && data["date"] != "") {
      indate = data["date"];
    }
    final String date = data["date"];

    if (data["amount"] != null &&
        data["amount"] != 'null' &&
        data["amount"] != "") {
      inamount = data["amount"];
    }
    final double amount = inamount.toDouble();
    datewise.add(date);
    amountWist.add(amount);
  }

  if (datewise == null || amountWist == null) {
    return null;
  }

  final Map<String, double> data = {};

  for (int i = 0; i < datewise.length; i++) {
    final String date = datewise[i];
    double amount = 0;
    if (amountWist[i] != null && amountWist[i] != 'null') {
      amount = amountWist[i];
    }

    final List<String> dateParts = date.split('-');
    final String month = dateParts[1];
    final List<String> monthAbbreviations = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    final String monthname = monthAbbreviations[int.parse(month) - 1];
    if (data.containsKey(monthname)) {
      data[monthname] = data[monthname]! + amount;
    } else {
      data[monthname] = amount;
    }
  }

  final List<String> xLabels = data.keys.toList();
  final List<double> yValues = data.values.toList();
  print(xLabels);
  print(yValues);

  return {'xLabels': xLabels, 'yValues': yValues};
}

dynamic pickListScanresponse(String? response) {
  if (response == null || response == 'null') {
    return [];
  }
  var response2 = response.replaceAll("'", '"');
  var responseArray = jsonDecode(response2);
  print(responseArray['move_id']);
  return responseArray;
}

List<int>? changeArrayValueByindex(
  List<int>? array,
  int? index,
  int? changeValue,
) {
  // change array value by index
  if (array == null || index == null || changeValue == null) {
    return null;
  }
  if (index < 0 || index >= array.length) {
    return array;
  }
  array[index] = changeValue;
  return array;
}

List<dynamic>? taxDetailfromLineItems(
  List<dynamic>? lineItems,
  String? taxKey,
) {
  var taxDetail = [];
  if (lineItems == null || lineItems == "null") {
    return taxDetail;
  }
  var taxKeyname;
  switch (taxKey) {
    case 'product':
      taxKeyname = 'product_taxes_rels';
      break;
    case 'saleorder':
      taxKeyname = 'account_tax_sale_order_line_rels';
      break;
    case 'quotation':
      taxKeyname = 'account_tax_sale_order_line_rels';
      break;
    case 'purchaseorder':
      taxKeyname = 'account_tax_purchase_order_line_rels';
      break;
    case 'rfq':
      taxKeyname = 'account_tax_purchase_order_line_rels';
      break;
    case 'accounting':
      taxKeyname = 'account_move_line_account_tax_rels';
      break;
    default:
      taxKeyname = 'product_taxes_rels';
  }
  for (var i = 0; i < lineItems.length; i++) {
    var taxLine = lineItems[i][taxKeyname];
    if (taxLine != null && taxLine != 'null') {
      for (var j = 0; j < taxLine.length; j++) {
        var taxid = taxLine[j]['account_tax']['id'];
        var taxname = taxLine[j]['account_tax']['name'];
        var taxpercent = taxLine[j]['account_tax']['amount'];
        var taxamount = lineItems[i]['price_subtotal'] * taxpercent / 100;
        var taxindex =
            taxDetail.indexWhere((element) => element['taxid'] == taxid);
        if (taxindex != -1) {
          taxDetail[taxindex]['taxamount'] =
              taxDetail[taxindex]['taxamount'] + taxamount;
        } else {
          var taxdata = {
            "taxid": taxid,
            "taxname": taxname,
            "taxpercent": taxpercent,
            "taxamount": taxamount
          };
          taxDetail.add(taxdata);
        }
      }
    }
  }
  return taxDetail;
}

bool? checkDcQuantitydone(List<dynamic>? lineitems) {
  if (lineitems == null || lineitems == 'null') {
    return false;
  }
  for (var i = 0; i < lineitems.length; i++) {
    if (lineitems[i]['stock_move_lines'] == null ||
        lineitems[i]['stock_move_lines'] == 'null') {
      return false;
    }
    if (lineitems[i]['stock_move_lines'][0]['qty_done'] == null ||
        lineitems[i]['stock_move_lines'][0]['qty_done'] == 'null') {
      return false;
    }
    var qty_done = lineitems[i]['stock_move_lines'][0]['qty_done'];
    var product_uom_qty = lineitems[i]['product_uom_qty'];

    if (qty_done != product_uom_qty) {
      return false;
    }
  }
  return true;
}

List<int>? checkEmptyArrayInt(List<int>? arrayVal) {
  if (arrayVal == null || arrayVal == 'null') {
    return [];
  }
  if (arrayVal.isEmpty) {
    return [];
  }

  return arrayVal;
}

String? jsonToString(dynamic value) {
  // return as string
  if (value == null) {
    return null;
  } else if (value is String) {
    return value;
  } else if (value is num) {
    return value.toString();
  } else if (value is bool) {
    return value.toString();
  } else if (value is List) {
    return json.encode(value);
  } else if (value is Map) {
    return json.encode(value);
  } else if (value is DateTime) {
    return DateFormat('yyyy-MM-ddTHH:mm:ss').format(value);
  } else if (value is DateTimeRange) {
    final start = DateFormat('yyyy-MM-ddTHH:mm:ss').format(value.start);
    final end = DateFormat('yyyy-MM-ddTHH:mm:ss').format(value.end);
    return '$start/$end';
  } else if (value is FFPlace) {
    final latLng = '${value.latLng.latitude},${value.latLng.longitude}';
    final name = value.name;
    final address = value.address;
    final city = value.city;
    final state = value.state;
    final country = value.country;
    final zipCode = value.zipCode;
    return '$latLng/$name/$address/$city/$state/$country/$zipCode';
  } else if (value is Duration) {
    return value.inMilliseconds.toString();
  } else if (value is double) {
    return value.toString();
  } else {
    return null;
  }
}

String? taskLogFormat(String? datetime) {
  if (datetime == null || datetime == 'null') {
    return '';
  }
  final DateTime dateTime =
      DateTime.parse(datetime).add(Duration(hours: 5, minutes: 30));
  return DateFormat('dd MMM,yyyy hh:mm a').format(dateTime);
}

dynamic taxNamesDisplaySequencial(List<String>? taxnames) {
  if (taxnames == null || taxnames == 'null') {
    return {'exist': false, 'name': ''};
  }
  if (taxnames.isEmpty) {
    return {'exist': false, 'name': ''};
  }

  var taxnamesString = taxnames.join(' | ');
  return {'exist': true, 'name': taxnamesString};
}

String? displayUppercase(String? data) {
  if (data == null || data == "null" || data == "") {
    return "";
  } else {
    return data.toUpperCase();
  }
}

List<String>? customHours(String? type) {
  var hours = [
    "12:00 AM",
    "00:30 AM",
    "01:00 AM",
    "01:30 AM",
    "02:00 AM",
    "02:30 AM",
    "03:00 AM",
    "03:30 AM",
    "04:00 AM",
    "04:30 AM",
    "05:00 AM",
    "05:30 AM",
    "06:00 AM",
    "06:30 AM",
    "07:00 AM",
    "07:30 AM",
    "08:00 AM",
    "08:30 AM",
    "09:00 AM",
    "09:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
    "12:00 PM",
    "12:30 PM",
    "01:00 PM",
    "01:30 PM",
    "02:00 PM",
    "02:30 PM",
    "03:00 PM",
    "03:30 PM",
    "04:00 PM",
    "04:30 PM",
    "05:00 PM",
    "05:30 PM",
    "06:00 PM",
    "06:30 PM",
    "07:00 PM",
    "07:30 PM",
    "08:00 PM",
    "08:30 PM",
    "09:00 PM",
    "09:30 PM",
    "10:00 PM",
    "10:30 PM",
    "11:00 PM",
    "11:30 PM",
  ];

  var values = [
    "0",
    "0.5",
    "1",
    "1.5",
    "2",
    "2.5",
    "3",
    "3.5",
    "4",
    "4.5",
    "5",
    "5.5",
    "6",
    "6.5",
    "7",
    "7.5",
    "8",
    "8.5",
    "9",
    "9.5",
    "10",
    "10.5",
    "11",
    "11.5",
    "12",
    "12.5",
    "13",
    "13.5",
    "14",
    "14.5",
    "15",
    "15.5",
    "16",
    "16.5",
    "17",
    "17.5",
    "18",
    "18.5",
    "19",
    "19.5",
    "20",
    "20.5",
    "21",
    "21.5",
    "22",
    "22.5",
    "23",
    "23.5",
  ];
  if (type == "name") {
    return hours;
  } else {
    return values;
  }
}

double? findHoursbetweentwo(
  double? from,
  double? to,
) {
  if (from == null || from == 'null' || from == '') {
    return 0;
  }
  if (to == null || to == 'null' || to == '') {
    return 0;
  }

  var fromdouble = from;
  var todouble = to;
  var result = todouble - fromdouble;
  if (result < 0) {
    return 0;
  }
  return result;
}

double? jsonToDouble(dynamic value) {
  // json to double
  if (value is int) {
    return value.toDouble();
  } else if (value is double) {
    return value;
  } else if (value is String) {
    return double.tryParse(value);
  } else {
    return 0.0;
  }
}

int? jsonToInteger(dynamic value) {
  // json to integer
  if (value is int) {
    return value;
  } else if (value is String) {
    return int.tryParse(value);
  } else {
    return 0;
  }
}

String? attendanceCheckInHours() {
  final DateTime currentDateTime = DateTime.now();
  final Duration subtractedDuration = Duration(hours: 5, minutes: 30);
  final DateTime updatedDateTime = currentDateTime.subtract(subtractedDuration);

// You can format the updatedDateTime if desired
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final String formattedDateTime = formatter.format(updatedDateTime);

  return formattedDateTime;
}
