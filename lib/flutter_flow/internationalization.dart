import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ta'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? taText = '',
  }) =>
      [enText, taText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'u0wonzhy': {
      'en': 'Use the form below to access your account.',
      'ta': '',
    },
    'ytmeprr6': {
      'en': 'Enter CinNumber',
      'ta': '',
    },
    'u3a077hb': {
      'en': 'Enter your CinNumber',
      'ta': '',
    },
    'hnyhxqto': {
      'en': 'Enter Url',
      'ta': '',
    },
    'mdo79t7q': {
      'en': 'Graphql Url',
      'ta': '',
    },
    'zsja001a': {
      'en': 'Enter Url',
      'ta': '',
    },
    'pj35fp3p': {
      'en': 'Web Url',
      'ta': '',
    },
    'c7635rcl': {
      'en': 'Company Not Registered',
      'ta': '',
    },
    '090szzpn': {
      'en': 'Email Address',
      'ta': '',
    },
    'fu9h2cwk': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    'z5ge64nk': {
      'en': 'Password',
      'ta': '',
    },
    '0f9ezf0n': {
      'en': 'Enter your password here...',
      'ta': '',
    },
    'qkt8uh1g': {
      'en': 'Login',
      'ta': '',
    },
    'u05irbtd': {
      'en': 'Forgot Password?',
      'ta': '',
    },
    'gkgtqgd4': {
      'en': 'CIN is required',
      'ta': '',
    },
    '22vxdtm5': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'fzfyz0ej': {
      'en': 'Field is required',
      'ta': '',
    },
    '475qtkrx': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'q0d3mpnv': {
      'en': 'Field is required',
      'ta': '',
    },
    'gem1d0jw': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '8cdot3yy': {
      'en': 'Email is required',
      'ta': '',
    },
    'bw1ar8d7': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '3gyq4nu3': {
      'en': 'Password is required',
      'ta': '',
    },
    '197eioes': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'o5gbkipr': {
      'en': 'Home',
      'ta': 'வீடு',
    },
  },
  // Attendance
  {
    'r9ugmlwy': {
      'en': 'Attendance',
      'ta': '',
    },
    '1skbzld2': {
      'en': 'Check In',
      'ta': '',
    },
    'qyzuubc7': {
      'en': 'Check Out',
      'ta': '',
    },
    '5a3xuj9w': {
      'en': 'Working Hours',
      'ta': '',
    },
    'nnjorjtx': {
      'en': 'Attendance',
      'ta': 'வீடு',
    },
  },
  // LeaveCreate
  {
    'rt2hx20h': {
      'en': 'Leave Application',
      'ta': 'விடுமுறை விண்ணப்பம்',
    },
    'fhfl12es': {
      'en': 'Leave Type',
      'ta': '',
    },
    '8mrr7d1n': {
      'en': 'Select Leave Type',
      'ta': 'விடுப்பு வகையைத் தேர்ந்தெடுக்கவும்',
    },
    'e1ti2ac8': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    'lpzbps3q': {
      'en': 'Half Day',
      'ta': '',
    },
    'woe4s3mn': {
      'en': 'From',
      'ta': '',
    },
    'c38gk13r': {
      'en': 'To',
      'ta': '',
    },
    's738yvj2': {
      'en': 'Date',
      'ta': '',
    },
    'fr8fk22m': {
      'en': 'Day',
      'ta': '',
    },
    'fvzaxm0c': {
      'en': 'ForeNoon',
      'ta': '',
    },
    'v08aljv6': {
      'en': 'AfterNoon',
      'ta': '',
    },
    'f03fsf2p': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'hn1plm81': {
      'en': 'Date',
      'ta': '',
    },
    'qm8e6kqj': {
      'en': 'From',
      'ta': '',
    },
    '4d0eis6e': {
      'en': '12:00 AM',
      'ta': '',
    },
    '84fnzyju': {
      'en': '00:30 AM',
      'ta': '',
    },
    '1v125yrx': {
      'en': '01:00 AM',
      'ta': '',
    },
    'pqydle5y': {
      'en': '01:30 AM',
      'ta': '',
    },
    'nazv7m3o': {
      'en': '02:00 AM',
      'ta': '',
    },
    'irwhcem0': {
      'en': '02:30 AM',
      'ta': '',
    },
    'rji37dau': {
      'en': '03:00 AM',
      'ta': '',
    },
    'clg7ej29': {
      'en': '03:30 AM',
      'ta': '',
    },
    '74etlgpe': {
      'en': '04:00 AM',
      'ta': '',
    },
    '1y7e5swl': {
      'en': '04:30 AM',
      'ta': '',
    },
    'g5tgx1d3': {
      'en': '05:00 AM',
      'ta': '',
    },
    'msm6pc4k': {
      'en': '05:30 AM',
      'ta': '',
    },
    'xqi5cogh': {
      'en': '06:00 AM',
      'ta': '',
    },
    '5cjk87gz': {
      'en': '06:30 AM',
      'ta': '',
    },
    'b0piz65y': {
      'en': '07:00 AM',
      'ta': '',
    },
    'ul25q8j5': {
      'en': '07:30 AM',
      'ta': '',
    },
    '53o5co8y': {
      'en': '08:00 AM',
      'ta': '',
    },
    'j6tbzfh1': {
      'en': '08:30 AM',
      'ta': '',
    },
    '5vlxuukl': {
      'en': '09:00 AM',
      'ta': '',
    },
    '6rxpxkyn': {
      'en': '09:30 AM',
      'ta': '',
    },
    'eq9rs6iu': {
      'en': '10:00 AM',
      'ta': '',
    },
    '8br3jpcb': {
      'en': '10:30 AM',
      'ta': '',
    },
    'u5gpeyh6': {
      'en': '11:00 AM',
      'ta': '',
    },
    '7l2e3wo8': {
      'en': '11:30 AM',
      'ta': '',
    },
    'vn5jd4h1': {
      'en': '12:00 PM',
      'ta': '',
    },
    'xo59yvpl': {
      'en': '12:30 PM',
      'ta': '',
    },
    '3ssett8h': {
      'en': '01:00 PM',
      'ta': '',
    },
    '8vh9uhel': {
      'en': '01:30 PM',
      'ta': '',
    },
    'b4i3xc0l': {
      'en': '02:00 PM',
      'ta': '',
    },
    '5j8x9f72': {
      'en': '02:30 PM',
      'ta': '',
    },
    'v6dkylbk': {
      'en': '03:00 PM',
      'ta': '',
    },
    'a7fvldpj': {
      'en': '03:30 PM',
      'ta': '',
    },
    'm03hgggd': {
      'en': '04:00 PM',
      'ta': '',
    },
    'dta2rerq': {
      'en': '04:30 PM',
      'ta': '',
    },
    'bxo7bsl2': {
      'en': '05:00 PM',
      'ta': '',
    },
    'avt06djp': {
      'en': '05:30 PM',
      'ta': '',
    },
    '1lc85339': {
      'en': '06:00 PM',
      'ta': '',
    },
    '8t5ufgta': {
      'en': '06:30 PM',
      'ta': '',
    },
    'ir9fj319': {
      'en': '07:00 PM',
      'ta': '',
    },
    'caefqi9h': {
      'en': '07:30 PM',
      'ta': '',
    },
    'n5nfdi09': {
      'en': '08:00 PM',
      'ta': '',
    },
    'y6hrnk4t': {
      'en': '08:30 PM',
      'ta': '',
    },
    'xpwh7ryy': {
      'en': '09:00 PM',
      'ta': '',
    },
    'fx870yc3': {
      'en': '09:30 PM',
      'ta': '',
    },
    'w7boaiz5': {
      'en': '10:00 PM',
      'ta': '',
    },
    'cq3p7fzj': {
      'en': '10:30 PM',
      'ta': '',
    },
    'rxlfztsa': {
      'en': '11:00 PM',
      'ta': '',
    },
    'ipwjydi8': {
      'en': '11:30 PM',
      'ta': '',
    },
    '63ow2l6g': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'y3jbj05b': {
      'en': 'To',
      'ta': '',
    },
    'i6t6ndst': {
      'en': '12:00 AM',
      'ta': '',
    },
    'wu4lz12n': {
      'en': '00:30 AM',
      'ta': '',
    },
    '5wca5wq0': {
      'en': '01:00 AM',
      'ta': '',
    },
    'xxp2b2l6': {
      'en': '01:30 AM',
      'ta': '',
    },
    'zn73nbwg': {
      'en': '02:00 AM',
      'ta': '',
    },
    'm5acf431': {
      'en': '02:30 AM',
      'ta': '',
    },
    '169b4uqw': {
      'en': '03:00 AM',
      'ta': '',
    },
    'uwq24l1c': {
      'en': '03:30 AM',
      'ta': '',
    },
    'ic9gnod0': {
      'en': '04:00 AM',
      'ta': '',
    },
    '6120yosw': {
      'en': '04:30 AM',
      'ta': '',
    },
    'jjnsgob7': {
      'en': '05:00 AM',
      'ta': '',
    },
    'cosny86j': {
      'en': '05:30 AM',
      'ta': '',
    },
    'hh8uyiw0': {
      'en': '06:00 AM',
      'ta': '',
    },
    '9yuc1atz': {
      'en': '06:30 AM',
      'ta': '',
    },
    '2crulut5': {
      'en': '07:00 AM',
      'ta': '',
    },
    '4cj5726w': {
      'en': '07:30 AM',
      'ta': '',
    },
    'ypoaof2s': {
      'en': '08:00 AM',
      'ta': '',
    },
    'kv22jn88': {
      'en': '08:30 AM',
      'ta': '',
    },
    'bmx2vtes': {
      'en': '09:00 AM',
      'ta': '',
    },
    'go37qwoi': {
      'en': '09:30 AM',
      'ta': '',
    },
    '6xevznf5': {
      'en': '10:00 AM',
      'ta': '',
    },
    'v46upnl1': {
      'en': '10:30 AM',
      'ta': '',
    },
    'judspzzq': {
      'en': '11:00 AM',
      'ta': '',
    },
    'va7q4lym': {
      'en': '11:30 AM',
      'ta': '',
    },
    '7eemlg21': {
      'en': '12:00 PM',
      'ta': '',
    },
    'kpllhlig': {
      'en': '12:30 PM',
      'ta': '',
    },
    'ma7792lp': {
      'en': '01:00 PM',
      'ta': '',
    },
    'zewvwrv6': {
      'en': '01:30 PM',
      'ta': '',
    },
    '602bzkru': {
      'en': '02:00 PM',
      'ta': '',
    },
    'vlfa86iq': {
      'en': '02:30 PM',
      'ta': '',
    },
    'slmsjqbc': {
      'en': '03:00 PM',
      'ta': '',
    },
    '61drgbtf': {
      'en': '03:30 PM',
      'ta': '',
    },
    '1pe9xpia': {
      'en': '04:00 PM',
      'ta': '',
    },
    'uwf0to9h': {
      'en': '04:30 PM',
      'ta': '',
    },
    '1d7xmg4w': {
      'en': '05:00 PM',
      'ta': '',
    },
    'g5wairc6': {
      'en': '05:30 PM',
      'ta': '',
    },
    'fcxlz8xy': {
      'en': '06:00 PM',
      'ta': '',
    },
    '5vwik4mw': {
      'en': '06:30 PM',
      'ta': '',
    },
    '4i7qvpwy': {
      'en': '07:00 PM',
      'ta': '',
    },
    'nx6bypah': {
      'en': '07:30 PM',
      'ta': '',
    },
    'mau8um0h': {
      'en': '08:00 PM',
      'ta': '',
    },
    'xv6mgjus': {
      'en': '08:30 PM',
      'ta': '',
    },
    'ed01qwv9': {
      'en': '09:00 PM',
      'ta': '',
    },
    'uwckvt0o': {
      'en': '09:30 PM',
      'ta': '',
    },
    'gvd9hjju': {
      'en': '10:00 PM',
      'ta': '',
    },
    '9xponus4': {
      'en': '10:30 PM',
      'ta': '',
    },
    '9c1uzbox': {
      'en': '11:00 PM',
      'ta': '',
    },
    't7r2y70a': {
      'en': '11:30 PM',
      'ta': '',
    },
    '7baepbvk': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'yr5q6haz': {
      'en': 'Reason',
      'ta': '',
    },
    'io2qu4k8': {
      'en': 'Enter Reason Here',
      'ta': 'இங்கே காரணத்தை உள்ளிடவும்',
    },
    'js0t7si1': {
      'en': 'Apply Leave',
      'ta': 'விடுப்பு விண்ணப்பிக்கவும்',
    },
    'b9egmwly': {
      'en': 'Reason is required',
      'ta': '',
    },
    'sqogbp4t': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'b8cgsyf7': {
      'en': 'Home',
      'ta': 'வீடு',
    },
  },
  // AttendanceHistory
  {
    '5c6d3o47': {
      'en': 'Attendance History',
      'ta': 'வருகை',
    },
    'sce6zgyt': {
      'en': 'Check In',
      'ta': 'செக் இன்',
    },
    'u6o04wyd': {
      'en': 'Check Out',
      'ta': 'சரிபார்',
    },
    '1242pr8u': {
      'en': 'Working Hr\'s',
      'ta': 'வேலை மணி',
    },
    '921jz368': {
      'en': 'Home',
      'ta': 'வீடு',
    },
  },
  // LeaveList
  {
    'gwsfrrtz': {
      'en': 'Leave List',
      'ta': '',
    },
    'p0uq27fd': {
      'en': 'Paid Off',
      'ta': '',
    },
    '9741ag2x': {
      'en': 'UnPaid',
      'ta': '',
    },
    'cxitatn9': {
      'en': 'Sick',
      'ta': '',
    },
    '12jrva9g': {
      'en': 'Leave Request Info',
      'ta': '',
    },
    'lppv7964': {
      'en': 'Paid',
      'ta': '',
    },
    'w4txo6ti': {
      'en': 'UnPaid',
      'ta': '',
    },
    't9pmgr5f': {
      'en': 'Sick',
      'ta': '',
    },
    'bt15j3pp': {
      'en': ' - ',
      'ta': '',
    },
    'uq2ursgg': {
      'en': 'Leave',
      'ta': 'வீடு',
    },
  },
  // ExpensesView
  {
    'gdpy2iu8': {
      'en': 'View Expense',
      'ta': 'செலவைக் காண்க',
    },
    'ej4sk75y': {
      'en': 'Status',
      'ta': 'நிலை',
    },
    'y0vya0sv': {
      'en': 'Date',
      'ta': 'தேதி',
    },
    'zhbad5tm': {
      'en': 'Expense Category',
      'ta': 'செலவு வகை',
    },
    '987o459b': {
      'en': 'Project Name',
      'ta': 'செலவு வகை',
    },
    'hmqas3wp': {
      'en': 'Task Name',
      'ta': 'செலவு வகை',
    },
    'lyaqnt8u': {
      'en': 'Expense',
      'ta': 'செலவு',
    },
    'dlt0dupj': {
      'en': 'Employee Name',
      'ta': 'பணியாளர் பெயர்',
    },
    '13izdso2': {
      'en': 'Paid By',
      'ta': 'செலுத்தப்பட்டது',
    },
    'w7ed68ic': {
      'en': 'Account',
      'ta': 'கணக்கு',
    },
    '4rdl2hu2': {
      'en': 'Unit Price',
      'ta': 'அலகு விலை',
    },
    'ixsmg04d': {
      'en': 'Quantity',
      'ta': 'அளவு',
    },
    'dfz8g1v3': {
      'en': 'TOTAL',
      'ta': 'மொத்தம்',
    },
    'uxgdur3k': {
      'en': 'Log',
      'ta': '',
    },
    '3d9wlrz5': {
      'en': 'Files',
      'ta': '',
    },
    'xe2t6t1g': {
      'en': '__',
      'ta': '__',
    },
  },
  // Appspares
  {
    '2wrzo0hu': {
      'en': 'Add spares',
      'ta': 'உதிரிபாகங்களைச் சேர்க்கவும்',
    },
    '1i0p8i01': {
      'en': 'Product Name',
      'ta': '',
    },
    '2vzrbqc6': {
      'en': 'select',
      'ta': '',
    },
    '73xo3m0t': {
      'en': 'select',
      'ta': '',
    },
    'hywwdsnd': {
      'en': 'select',
      'ta': '',
    },
    '4d0kaibg': {
      'en': 'select',
      'ta': '',
    },
    'rrkpb1ph': {
      'en': 'Please select product',
      'ta': '',
    },
    'lx6ts8qg': {
      'en': 'Search for product',
      'ta': '',
    },
    'bsp6tf56': {
      'en': 'Quantity',
      'ta': '',
    },
    '67numal1': {
      'en': 'Field is required',
      'ta': '',
    },
    't739ifie': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'rsji4kal': {
      'en': 'Add Another',
      'ta': '',
    },
    '013fw39z': {
      'en': 'Product Name',
      'ta': '',
    },
    '7dmahrym': {
      'en': 'Qty',
      'ta': '',
    },
    '4flxolj7': {
      'en': 'Submit',
      'ta': '',
    },
    'fzjv2a1o': {
      'en': 'Home',
      'ta': 'வீடு',
    },
  },
  // ExpenceCreate
  {
    '0nt635yz': {
      'en': 'Project Name',
      'ta': 'செலவு வகை',
    },
    'jjqujirz': {
      'en': 'Option 2',
      'ta': 'விருப்பம் 2',
    },
    '006hz4wg': {
      'en': 'Select Project Name',
      'ta': 'செலவு வகையைத் தேர்ந்தெடுக்கவும்',
    },
    '5e2fmf5r': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    'lc5ytuv9': {
      'en': 'Task Name',
      'ta': '',
    },
    'b5edmcpe': {
      'en': 'Option 2',
      'ta': '',
    },
    'bi8cldj5': {
      'en': 'Select Task Name',
      'ta': '',
    },
    'x9vypovb': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'caiv5fg3': {
      'en': 'Expense Category',
      'ta': '',
    },
    'p8b6q432': {
      'en': 'Select Expence Category',
      'ta': '',
    },
    'm3i2lhug': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'ds7bo48h': {
      'en': 'Vendor Name',
      'ta': 'செலவு வகை',
    },
    'a0dojoez': {
      'en': 'Option 2',
      'ta': 'விருப்பம் 2',
    },
    'kc5b0aki': {
      'en': 'Select Vendor Name',
      'ta': 'செலவு வகையைத் தேர்ந்தெடுக்கவும்',
    },
    'dpxpuzv1': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    '1mm3nowm': {
      'en': 'Expense Name',
      'ta': 'செலவு பெயர்',
    },
    '08ljph1u': {
      'en': 'Expense Name',
      'ta': 'செலவு பெயர்',
    },
    '9tkhq0pf': {
      'en': 'Unit Price',
      'ta': 'அலகு விலை',
    },
    'qsnpziip': {
      'en': 'Enter Unit Price',
      'ta': 'யூனிட் விலையை உள்ளிடவும்',
    },
    'ns9sq91y': {
      'en': 'Quantity',
      'ta': 'அளவு',
    },
    'pjq4m63k': {
      'en': 'Enter Quantity',
      'ta': 'அளவை உள்ளிடவும்',
    },
    'z6l9zxx4': {
      'en': 'Total',
      'ta': 'மொத்தம்',
    },
    'lg8c1xea': {
      'en': 'Total',
      'ta': 'மொத்தம்',
    },
    'il1upam1': {
      'en': 'Date',
      'ta': 'தேதி',
    },
    '3ni9pg4w': {
      'en': 'Paid By',
      'ta': 'செலுத்தப்பட்டது',
    },
    'bv5p7po9': {
      'en': 'Own Account',
      'ta': 'சொந்த கணக்கு',
    },
    'igtr6r9t': {
      'en': 'Company Account',
      'ta': 'நிறுவனத்தின் கணக்கு',
    },
    '5bpyi907': {
      'en': 'Paid by',
      'ta': 'மூலம் செலுத்தப்பட்டது',
    },
    'ono3isrx': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    'pkyyate4': {
      'en': 'Accounts',
      'ta': 'கணக்குகள்',
    },
    '847xjtig': {
      'en': 'Option 1',
      'ta': 'விருப்பம் 1',
    },
    'g7t23fll': {
      'en': 'Option 2',
      'ta': 'விருப்பம் 2',
    },
    'p06t2cba': {
      'en': 'Accounts',
      'ta': 'கணக்குகள்',
    },
    'cbcebpgu': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    '31b7ukxm': {
      'en': 'Note',
      'ta': 'குறிப்பு',
    },
    '6esf626g': {
      'en': 'Note',
      'ta': 'குறிப்பு',
    },
    '9unrxfja': {
      'en': 'Gallery / Capture Picture',
      'ta': 'படம் பிடிக்கவும்',
    },
    'lcis4g7b': {
      'en': 'Upload Document',
      'ta': '',
    },
    'xrcwwk80': {
      'en': 'Save',
      'ta': 'சேமிக்கவும்',
    },
    '252y73lf': {
      'en': 'Field is required',
      'ta': 'இந்த பகுதி அவசியமானது',
    },
    '7bvb5pb8': {
      'en': 'Please choose an option from the dropdown',
      'ta': 'கீழ்தோன்றலில் இருந்து ஒரு விருப்பத்தைத் தேர்ந்தெடுக்கவும்',
    },
    '4acw0hhf': {
      'en': 'Field is required',
      'ta': 'இந்த பகுதி அவசியமானது',
    },
    '0qkgdfyq': {
      'en': 'Price must greater than zero ',
      'ta': '',
    },
    'iqlani88': {
      'en': 'Please choose an option from the dropdown',
      'ta': 'கீழ்தோன்றலில் இருந்து ஒரு விருப்பத்தைத் தேர்ந்தெடுக்கவும்',
    },
    'ojf0j72m': {
      'en': 'Field is required',
      'ta': 'இந்த பகுதி அவசியமானது',
    },
    '4sckrila': {
      'en': 'Quantity must greater than zero ',
      'ta': '',
    },
    'x7ke7q4e': {
      'en': 'Please choose an option from the dropdown',
      'ta': 'கீழ்தோன்றலில் இருந்து ஒரு விருப்பத்தைத் தேர்ந்தெடுக்கவும்',
    },
    'j8tnbex3': {
      'en': 'Field is required',
      'ta': 'இந்த பகுதி அவசியமானது',
    },
    'zor34wxr': {
      'en': 'Please choose an option from the dropdown',
      'ta': 'கீழ்தோன்றலில் இருந்து ஒரு விருப்பத்தைத் தேர்ந்தெடுக்கவும்',
    },
    'eavyz9bc': {
      'en': 'Field is required',
      'ta': 'இந்த பகுதி அவசியமானது',
    },
    '8kqu92vg': {
      'en': 'Please choose an option from the dropdown',
      'ta': 'கீழ்தோன்றலில் இருந்து ஒரு விருப்பத்தைத் தேர்ந்தெடுக்கவும்',
    },
    'hxwqtcj3': {
      'en': 'Add Expenses',
      'ta': '',
    },
  },
  // Expenses_list
  {
    'w26hfan8': {
      'en': 'Expenses',
      'ta': '',
    },
    'wdmv6kbm': {
      'en': 'Expense',
      'ta': '',
    },
  },
  // Leave_info
  {
    'ix033v1g': {
      'en': 'Leave  Info',
      'ta': '',
    },
    'bneav5op': {
      'en': 'Leave Type',
      'ta': '',
    },
    'dz2e7dzx': {
      'en': 'From',
      'ta': '',
    },
    'radnydqh': {
      'en': 'To',
      'ta': '',
    },
    'zvw727c8': {
      'en': 'Status',
      'ta': '',
    },
    '6zfqzx3u': {
      'en': 'Description',
      'ta': '',
    },
    'qdkkovpw': {
      'en': 'Approve',
      'ta': '',
    },
    '294lfeoy': {
      'en': 'Refuse',
      'ta': '',
    },
    'yw17n0ec': {
      'en': 'Home',
      'ta': '',
    },
  },
  // CreateAccount
  {
    'lt3839iu': {
      'en': 'Get Started',
      'ta': '',
    },
    'x44dvfb3': {
      'en': 'Use the form below to get started.',
      'ta': '',
    },
    'c7z4sdno': {
      'en': 'Email Address',
      'ta': '',
    },
    'wa1ytfur': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    '4gmxsvak': {
      'en': 'Password',
      'ta': '',
    },
    'yudhtuce': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    'l9uz6aoc': {
      'en': 'Confirm Password',
      'ta': '',
    },
    '6x926fmv': {
      'en': 'Enter your email here...',
      'ta': '',
    },
    '1d98p0a0': {
      'en': 'Create Account',
      'ta': '',
    },
    'j5k638f8': {
      'en': 'Already have an account?',
      'ta': '',
    },
    '6es955tq': {
      'en': 'Log In',
      'ta': '',
    },
    'pk2mv6cu': {
      'en': 'Home',
      'ta': '',
    },
  },
  // editProfile
  {
    'lwai391l': {
      'en': 'Edit Profile',
      'ta': '',
    },
    'lavvhmnj': {
      'en': 'Change Photo',
      'ta': '',
    },
    'wr0yas83': {
      'en': 'Hello World',
      'ta': '',
    },
    'fklj5jld': {
      'en': '',
      'ta': '',
    },
    '2ftor00k': {
      'en': '',
      'ta': '',
    },
    '73zk94z0': {
      'en': '',
      'ta': '',
    },
    'vruutmmm': {
      'en': 'The email associated with this account is:',
      'ta': '',
    },
    '51fdcoln': {
      'en': 'The email associated with this account is:',
      'ta': '',
    },
    '9kwba0hd': {
      'en': 'Update',
      'ta': '',
    },
    'h8bmsa96': {
      'en': 'Home',
      'ta': '',
    },
  },
  // forgetPassword
  {
    '4qsntf3w': {
      'en': 'Forgot Password',
      'ta': '',
    },
    'tpt93sgj': {
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
      'ta': '',
    },
    '0okre040': {
      'en': 'Email Address',
      'ta': '',
    },
    'eu1vq8bz': {
      'en': 'Please enter a valid email...',
      'ta': '',
    },
    'ynus7j62': {
      'en': 'Send Reset Link',
      'ta': '',
    },
    'zxkb17ww': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ProjectDashboard
  {
    'dnkke4ry': {
      'en': 'Dashboard',
      'ta': '',
    },
    '492gg612': {
      'en': 'On Hold',
      'ta': '',
    },
    'wphbxtf6': {
      'en': 'In Progress',
      'ta': '',
    },
    'brskmphm': {
      'en': 'Not Started',
      'ta': '',
    },
    'yinxwojr': {
      'en': 'Completed',
      'ta': '',
    },
    '8zlv0s3g': {
      'en': 'Project',
      'ta': '',
    },
  },
  // boq_list
  {
    'bv4ezukk': {
      'en': 'BOQ',
      'ta': '',
    },
    'tp8l6qs2': {
      'en': 'Create',
      'ta': '',
    },
    'k2bsft6l': {
      'en': 'Product Name',
      'ta': '',
    },
    'zarm38ta': {
      'en': 'Office Chair Black',
      'ta': '',
    },
    '454tc76f': {
      'en': 'Total Price',
      'ta': '',
    },
    'r60ap2bk': {
      'en': '₹ 3140.57',
      'ta': '',
    },
    '5p401z7c': {
      'en': 'Product Name',
      'ta': '',
    },
    '3rxu72ga': {
      'en': 'Office Chair Black',
      'ta': '',
    },
    '9k2xdolp': {
      'en': 'Total Price',
      'ta': '',
    },
    '8o2oqhs4': {
      'en': '₹ 3140.57',
      'ta': '',
    },
    '5yvfzqb4': {
      'en': 'Product Name',
      'ta': '',
    },
    '5im8x0nh': {
      'en': 'Office Chair Black',
      'ta': '',
    },
    'ub69attm': {
      'en': 'Total Price',
      'ta': '',
    },
    'yfk5ftu8': {
      'en': '₹ 3140.57',
      'ta': '',
    },
    'adb187zf': {
      'en': 'Product Name',
      'ta': '',
    },
    '2idfmleh': {
      'en': 'Office Chair Black',
      'ta': '',
    },
    '25u3qt54': {
      'en': 'Total Price',
      'ta': '',
    },
    '8032v924': {
      'en': '₹ 3140.57',
      'ta': '',
    },
    'ep1huxrm': {
      'en': 'Product Name',
      'ta': '',
    },
    'vvyp4t3x': {
      'en': 'Office Chair Black',
      'ta': '',
    },
    'lt80ygwy': {
      'en': 'Total Price',
      'ta': '',
    },
    '5zv9epnq': {
      'en': '₹ 3140.57',
      'ta': '',
    },
    '8jcgcmog': {
      'en': 'Home',
      'ta': '',
    },
  },
  // TaskDetails
  {
    'zylhnvpp': {
      'en': 'Project',
      'ta': '',
    },
    '3g7uksel': {
      'en': 'Date Assign',
      'ta': '',
    },
    'ztln3f8e': {
      'en': 'Customer',
      'ta': '',
    },
    'xintx0vk': {
      'en': 'Planned Hours',
      'ta': '',
    },
    '8xp3pi9c': {
      'en': 'Dead Line',
      'ta': '',
    },
    'ahizd3uv': {
      'en': 'Assigned To',
      'ta': '',
    },
    'nai0wjin': {
      'en': 'Worked Hours',
      'ta': '',
    },
    '3r5g100h': {
      'en': 'Start',
      'ta': '',
    },
    'ohn4l95k': {
      'en': 'Stop',
      'ta': '',
    },
    '41z0zc9r': {
      'en': 'Log',
      'ta': '',
    },
    'kf7fffc0': {
      'en': 'Files',
      'ta': '',
    },
    'tkx9zzi3': {
      'en': 'Gallery / Capture Picture',
      'ta': 'படம் பிடிக்கவும்',
    },
    '6h5ie4tq': {
      'en': 'Upload Document',
      'ta': '',
    },
    'lkxsktku': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Leadlist
  {
    '72u83g63': {
      'en': 'Leads',
      'ta': '',
    },
    'qh3ijeoo': {
      'en': 'CRM',
      'ta': '',
    },
  },
  // Project
  {
    'kaiyybn5': {
      'en': 'Task : ',
      'ta': '',
    },
    't0n7gc8q': {
      'en': 'Start Date  :  ',
      'ta': '',
    },
    '24pc0ws3': {
      'en': 'HealthAi',
      'ta': '',
    },
    'ii566mby': {
      'en': 'Client Acquisition for Q3',
      'ta': '',
    },
    'drmbhln8': {
      'en': 'Next Action',
      'ta': '',
    },
    'pj9f28ea': {
      'en': 'Tuesday, 10:00am',
      'ta': '',
    },
    'w1xltkoz': {
      'en': 'In Progress',
      'ta': '',
    },
    '2y3w6fx3': {
      'en': 'Projects List',
      'ta': '',
    },
    'imu4czn2': {
      'en': 'Project',
      'ta': '',
    },
  },
  // Leadedit
  {
    '7xk1qsym': {
      'en': 'Lead Name',
      'ta': '',
    },
    'mex0ouv6': {
      'en': 'Enter your name',
      'ta': '',
    },
    'vb71rtz4': {
      'en': 'Lead Source',
      'ta': '',
    },
    'medy9ae2': {
      'en': 'Option 1',
      'ta': '',
    },
    'xzgiias9': {
      'en': 'Select Lead',
      'ta': '',
    },
    'p6roooha': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'x6xyz8qv': {
      'en': 'Email',
      'ta': '',
    },
    'n8yrg7cj': {
      'en': 'Enter your Email',
      'ta': '',
    },
    'ao7j8sy0': {
      'en': 'Mobile ',
      'ta': '',
    },
    'ri4dobph': {
      'en': 'Enter your mobilenumber',
      'ta': '',
    },
    'mrs3dog9': {
      'en': 'Priority',
      'ta': 'தேதி',
    },
    'twk38mdz': {
      'en': 'Please select',
      'ta': '',
    },
    'obmvavtv': {
      'en': 'Low',
      'ta': '',
    },
    '7v4o7zuk': {
      'en': 'Medium',
      'ta': '',
    },
    'xbx32ova': {
      'en': 'High',
      'ta': '',
    },
    'ref5zlec': {
      'en': 'Very High',
      'ta': '',
    },
    '63ov5x1e': {
      'en': 'Please select',
      'ta': '',
    },
    'jk3z3j0s': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'uqmkl3do': {
      'en': 'Customer Person',
      'ta': '',
    },
    'lq953ub6': {
      'en': 'Enter customer Person name',
      'ta': '',
    },
    'v0fbtf6l': {
      'en': 'Expected Revenue  (₹)',
      'ta': '',
    },
    'bdyq6hao': {
      'en': 'Probability  (%)',
      'ta': '',
    },
    'dvq71thm': {
      'en': '',
      'ta': '',
    },
    'u7y38eh3': {
      'en': 'Address',
      'ta': '',
    },
    '6ygbhlg6': {
      'en': '',
      'ta': '',
    },
    'tqsdhqsi': {
      'en': 'City',
      'ta': '',
    },
    'ne503a01': {
      'en': 'Zipcode',
      'ta': '',
    },
    'jqfq9jxg': {
      'en': 'Note',
      'ta': '',
    },
    'fttf8exq': {
      'en': 'Text Message...',
      'ta': '',
    },
    'mqh8rb4h': {
      'en': 'Save',
      'ta': '',
    },
    'w2ofptrl': {
      'en': 'Field is required',
      'ta': '',
    },
    'lucfvge5': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'bg2eh2zh': {
      'en': 'Email is  required',
      'ta': '',
    },
    'xb91pbrh': {
      'en': 'Enter Valid Email',
      'ta': '',
    },
    '7hifyqy7': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '6e6xiizk': {
      'en': 'Mobile number required',
      'ta': '',
    },
    '1cftjazy': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'i11uz1k7': {
      'en': 'Customer person required',
      'ta': '',
    },
    'cq54bmgy': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'dq38jbmn': {
      'en': 'Expected Revenue required',
      'ta': '',
    },
    'w2ot7kzp': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '6wv0sliz': {
      'en': 'Field is required',
      'ta': '',
    },
    '8mszvy9h': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'r0a8s0dy': {
      'en': 'Field is required',
      'ta': '',
    },
    'pxcjn0v3': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'inc84c8v': {
      'en': 'Field is required',
      'ta': '',
    },
    'gzqqmkvu': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'pdvj5hwc': {
      'en': 'Field is required',
      'ta': '',
    },
    '1xd61d71': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '7otkbian': {
      'en': 'Field is required',
      'ta': '',
    },
    '1w9o0mc6': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'hhgvdp8h': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Leadview
  {
    'vrheap7z': {
      'en': 'Lead Source : ',
      'ta': '',
    },
    '4j353h90': {
      'en': 'Value  : ',
      'ta': '',
    },
    'x7q94s0k': {
      'en': 'Assign User',
      'ta': '',
    },
    '5pplgqtl': {
      'en': 'Customer Details',
      'ta': '',
    },
    '16felqe0': {
      'en': 'Name',
      'ta': '',
    },
    '5cfpi2zg': {
      'en': ':',
      'ta': '',
    },
    'c5z41ejs': {
      'en': 'Mobile',
      'ta': '',
    },
    'e9f97i5t': {
      'en': ':',
      'ta': '',
    },
    'mm96il4k': {
      'en': 'Email',
      'ta': '',
    },
    'aquor5yf': {
      'en': ':',
      'ta': '',
    },
    'rfcgw829': {
      'en': 'Address',
      'ta': '',
    },
    'i5urwhw1': {
      'en': ':',
      'ta': '',
    },
    'qduic6hy': {
      'en': 'Activity',
      'ta': '',
    },
    'pxht67p3': {
      'en': 'Logs',
      'ta': '',
    },
    'bnop6jtb': {
      'en': 'Recent Activity',
      'ta': '',
    },
    'kect8huv': {
      'en': 'Add',
      'ta': '',
    },
    'ttq2ehds': {
      'en': 'See all',
      'ta': '',
    },
    'j8sl3yzq': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ProjectsDetails
  {
    'dr38oorz': {
      'en': 'Task : ',
      'ta': '',
    },
    'l0k6f3zf': {
      'en': 'Start Date  :  ',
      'ta': '',
    },
    'v1ns09oy': {
      'en': 'Tasks',
      'ta': '',
    },
    'o42vgbog': {
      'en': 'Contract Details',
      'ta': '',
    },
    'dnxle1rp': {
      'en': '\$67,000',
      'ta': '',
    },
    'o96925lg': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    '7xluvycv': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    '22u44r9i': {
      'en': 'Teams',
      'ta': '',
    },
    '0n3zw142': {
      'en': 'user@domain.com',
      'ta': '',
    },
    'bchjott6': {
      'en': 'Home',
      'ta': '',
    },
  },
  // boq_view
  {
    '2dgi0yb8': {
      'en': 'Open : Process',
      'ta': '',
    },
    'ytptcst6': {
      'en': 'Man Sub Total',
      'ta': '',
    },
    'le142roi': {
      'en': 'Fabrication Sub Total',
      'ta': '',
    },
    '5aa8nimq': {
      'en': 'Material Sub Total',
      'ta': '',
    },
    'd3si5k0i': {
      'en': 'Tools Sub Total',
      'ta': '',
    },
    '6q3mkx1t': {
      'en': 'Eqipment Sub Total',
      'ta': '',
    },
    '5hx293me': {
      'en': 'Transport Sub Total',
      'ta': '',
    },
    't41d2hlm': {
      'en': 'Total Margin Percentage (%)',
      'ta': '',
    },
    'x6rvuysv': {
      'en': '10,000.00',
      'ta': '',
    },
    'hr5frdql': {
      'en': '10,000.00',
      'ta': '',
    },
    '89n1bdzy': {
      'en': '10,000.00',
      'ta': '',
    },
    '4ccnr1v5': {
      'en': '10,000.00',
      'ta': '',
    },
    'zydflfky': {
      'en': '10,000.00',
      'ta': '',
    },
    'gh3efopj': {
      'en': '10,000.00',
      'ta': '',
    },
    'qffnwjlc': {
      'en': '10,000.00',
      'ta': '',
    },
    '9c13e6am': {
      'en': 'Home',
      'ta': '',
    },
  },
  // My_profile
  {
    'gvbnctmn': {
      'en': 'Switch to Dark Mode',
      'ta': '',
    },
    'xg45cd8j': {
      'en': 'Switch to Light Mode',
      'ta': '',
    },
    'n6ck7hbc': {
      'en': 'Account Settings',
      'ta': '',
    },
    '1a65k4dy': {
      'en': 'Change Password',
      'ta': '',
    },
    '1006t02p': {
      'en': 'Edit Profile',
      'ta': '',
    },
    '1x0fqwag': {
      'en': 'Log Out',
      'ta': '',
    },
    'j4f2u6uf': {
      'en': 'Profile',
      'ta': '',
    },
    'sbt27j35': {
      'en': 'My Profile',
      'ta': '',
    },
  },
  // Recent_activity_list
  {
    'lav0ssau': {
      'en': 'Recent Activity',
      'ta': '',
    },
    'h27m75qm': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'epknn9kh': {
      'en': 'MC Raja',
      'ta': '',
    },
    'zj5so1db': {
      'en': 'Now',
      'ta': '',
    },
    'j77xexxd': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    '4t6nkz71': {
      'en': 'MC Raja',
      'ta': '',
    },
    'rs3smys5': {
      'en': 'Now',
      'ta': '',
    },
    'i8f3wl29': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'dv693cpe': {
      'en': 'MC Raja',
      'ta': '',
    },
    'lc9ih5c6': {
      'en': 'Now',
      'ta': '',
    },
    'zw6ik7gs': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'o77febsv': {
      'en': 'MC Raja',
      'ta': '',
    },
    'u696gtt8': {
      'en': 'Now',
      'ta': '',
    },
    'itaj0xw0': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'j0kkylae': {
      'en': 'MC Raja',
      'ta': '',
    },
    '87njde5v': {
      'en': 'Now',
      'ta': '',
    },
    'bxgmbg9m': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    't5pikd19': {
      'en': 'MC Raja',
      'ta': '',
    },
    'vk3ulddv': {
      'en': 'Now',
      'ta': '',
    },
    'hv1w2ag6': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'ggiheapc': {
      'en': 'MC Raja',
      'ta': '',
    },
    'oxjg4v70': {
      'en': 'Now',
      'ta': '',
    },
    'kf2vhojv': {
      'en': 'Lead Information modified',
      'ta': '',
    },
    'm07divk6': {
      'en': 'MC Raja',
      'ta': '',
    },
    '942qyqj0': {
      'en': 'Now',
      'ta': '',
    },
    'qmih61dz': {
      'en': 'Home',
      'ta': '',
    },
  },
  // TaskList
  {
    '7nh7rvte': {
      'en': 'Task List',
      'ta': '',
    },
    'koglouvy': {
      'en': 'Project : ',
      'ta': '',
    },
    'mlhn3lpv': {
      'en': 'Deadline :  ',
      'ta': '',
    },
    '1fhfzym1': {
      'en': 'Contract Details',
      'ta': '',
    },
    'pdz9b2ot': {
      'en': '\$67,000',
      'ta': '',
    },
    '7yf242u0': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    '5x43ekg1': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    '57gjcph0': {
      'en': 'Home',
      'ta': '',
    },
  },
  // BOQ_Descripition
  {
    'vyymc45l': {
      'en': 'Create Scope of work / Description',
      'ta': '',
    },
    '9m3hts4j': {
      'en': 'Earth Work ',
      'ta': '',
    },
    'lbpf4z64': {
      'en': 'Amount : ',
      'ta': '',
    },
    'p52tu43j': {
      'en': ' ₹ ',
      'ta': '',
    },
    'ef8gcajl': {
      'en': '5000',
      'ta': '',
    },
    'zgrnahvn': {
      'en': 'Line Items  :  ',
      'ta': '',
    },
    'jjihi5yd': {
      'en': '4',
      'ta': '',
    },
    'ky9dnbad': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured...',
      'ta': '',
    },
    'gi1lt390': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured at a height of 1 m above ground level and removal of rubbish up to a distance of 50 m outside the periphery of the area cleared.',
      'ta': '',
    },
    'qjkt8jvm': {
      'en': 'Qty : ',
      'ta': '',
    },
    'fmfgdmsw': {
      'en': '4680',
      'ta': '',
    },
    '5pieb57q': {
      'en': 'Rate : ',
      'ta': '',
    },
    'rw108ujo': {
      'en': '4680',
      'ta': '',
    },
    'n2tknct7': {
      'en': 'Unit : ',
      'ta': '',
    },
    'z5rj6ij6': {
      'en': 'sqm',
      'ta': '',
    },
    '5zvbt6yh': {
      'en': 'Amount',
      'ta': '',
    },
    '8r59om6a': {
      'en': ' (₹) ',
      'ta': '',
    },
    'y4uhcxmy': {
      'en': '1000.00',
      'ta': '',
    },
    '1vxizo1i': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured...',
      'ta': '',
    },
    '32ceg1wq': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured at a height of 1 m above ground level and removal of rubbish up to a distance of 50 m outside the periphery of the area cleared.',
      'ta': '',
    },
    'ae49ewk5': {
      'en': 'Qty : ',
      'ta': '',
    },
    'kjeo8vqq': {
      'en': '4680',
      'ta': '',
    },
    '0nt1pzl5': {
      'en': 'Rate : ',
      'ta': '',
    },
    'ot3n455j': {
      'en': '4680',
      'ta': '',
    },
    '6gkkhp9e': {
      'en': 'Unit : ',
      'ta': '',
    },
    'uopf43q5': {
      'en': 'sqm',
      'ta': '',
    },
    'gupv1ckz': {
      'en': 'Amount',
      'ta': '',
    },
    'hrdf0s52': {
      'en': ' (₹) ',
      'ta': '',
    },
    'o6zai53w': {
      'en': '1000.00',
      'ta': '',
    },
    '5ssr7ol1': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured...',
      'ta': '',
    },
    'gyruimlh': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured at a height of 1 m above ground level and removal of rubbish up to a distance of 50 m outside the periphery of the area cleared.',
      'ta': '',
    },
    'lo3enq24': {
      'en': 'Qty : ',
      'ta': '',
    },
    '7muvnz94': {
      'en': '4680',
      'ta': '',
    },
    'xcvnq9nh': {
      'en': 'Rate : ',
      'ta': '',
    },
    '5o8xtuiv': {
      'en': '4680',
      'ta': '',
    },
    'nm5i9j9m': {
      'en': 'Unit : ',
      'ta': '',
    },
    '4x1v6bcl': {
      'en': 'sqm',
      'ta': '',
    },
    'ca2hfazx': {
      'en': 'Amount',
      'ta': '',
    },
    'evnr70hs': {
      'en': ' (₹) ',
      'ta': '',
    },
    'emrbvwev': {
      'en': '1000.00',
      'ta': '',
    },
    '459x97b1': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured...',
      'ta': '',
    },
    '0813j97h': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured at a height of 1 m above ground level and removal of rubbish up to a distance of 50 m outside the periphery of the area cleared.',
      'ta': '',
    },
    '6v8709m0': {
      'en': 'Qty : ',
      'ta': '',
    },
    'mtiefsl2': {
      'en': '4680',
      'ta': '',
    },
    '9pdfgg7w': {
      'en': 'Rate : ',
      'ta': '',
    },
    'ijnv9ul8': {
      'en': '4680',
      'ta': '',
    },
    '1o2u523k': {
      'en': 'Unit : ',
      'ta': '',
    },
    'pmq8ui90': {
      'en': 'sqm',
      'ta': '',
    },
    'th2v50on': {
      'en': 'Amount',
      'ta': '',
    },
    '31p2k1z4': {
      'en': ' (₹) ',
      'ta': '',
    },
    'afk1zp20': {
      'en': '1000.00',
      'ta': '',
    },
    'jyc7pnts': {
      'en': 'Scope of BOQ',
      'ta': '',
    },
    'vb7pnlix': {
      'en': 'Home',
      'ta': '',
    },
  },
  // creatin_BOQ_Descripition
  {
    'o1iorr9w': {
      'en': 'Scope of BOQ',
      'ta': '',
    },
    '1i4tug47': {
      'en': 'Create Scope of Work/Description',
      'ta': '',
    },
    'yoa7eghi': {
      'en': 'Earth Work',
      'ta': '',
    },
    'odca5sgo': {
      'en': 'Amount : ',
      'ta': '',
    },
    'c1evq0iv': {
      'en': '5000',
      'ta': '',
    },
    '1pl98dmx': {
      'en': 'Line Items : ',
      'ta': '',
    },
    'l5yfsc62': {
      'en': ' 4',
      'ta': '',
    },
    'q7guzq2x': {
      'en': 'RCC Work',
      'ta': '',
    },
    '99d1bmbp': {
      'en': 'Enter the Scope of work',
      'ta': '',
    },
    'jh6hrsqv': {
      'en': 'Add Scope of Work',
      'ta': '',
    },
    'siui38k5': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Boqdescription
  {
    'ofi19n4k': {
      'en': 'Add Scope Items ',
      'ta': '',
    },
    '1ufnd1rd': {
      'en': 'Earth Work',
      'ta': '',
    },
    'twgc4gnh': {
      'en': 'Scope of Work / Description',
      'ta': '',
    },
    '4lci7gr5': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured at a ...',
      'ta': '',
    },
    'swoqij9m': {
      'en': 'Select Unit Type',
      'ta': '',
    },
    'eoms48go': {
      'en': 'Option 1',
      'ta': '',
    },
    'x1p14dzr': {
      'en': 'Units',
      'ta': '',
    },
    'tg8p8p9g': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '9v2xst2g': {
      'en': 'Quantity',
      'ta': '',
    },
    '8l8z3uxx': {
      'en': '4680',
      'ta': '',
    },
    'tdtma6r6': {
      'en': 'Rate ',
      'ta': '',
    },
    'o1u3piwq': {
      'en': '4680',
      'ta': '',
    },
    'phbbevbm': {
      'en': 'Amount (₹) ',
      'ta': '',
    },
    'wi9cdi69': {
      'en': '4680',
      'ta': '',
    },
    'rhzs32x4': {
      'en': 'Add Another item',
      'ta': '',
    },
    'daipjqte': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Add_Scope_work
  {
    'hbtqlqrj': {
      'en': 'Scope of BOQ',
      'ta': '',
    },
    '2wrazbr3': {
      'en': 'Create Scope of Work/Description',
      'ta': '',
    },
    'azroji68': {
      'en': 'RCC Work',
      'ta': '',
    },
    '0r7garcs': {
      'en': 'Enter the Scope of work',
      'ta': '',
    },
    '5tcysa1n': {
      'en': 'Add Scope of Work',
      'ta': '',
    },
    'zan1tum8': {
      'en': 'Save & Next',
      'ta': '',
    },
    'b0nceb4c': {
      'en': 'Home',
      'ta': '',
    },
  },
  // adding_unit_amount
  {
    'jqsgpg82': {
      'en': 'Add Scope Items ',
      'ta': '',
    },
    'bm8w3fz6': {
      'en': 'Create Scope of Work/Description',
      'ta': '',
    },
    'k4inraex': {
      'en': 'Earth Work',
      'ta': '',
    },
    '3zu9g5k4': {
      'en': 'Amount : ',
      'ta': '',
    },
    'h8r1b1ij': {
      'en': '5000',
      'ta': '',
    },
    'khds9emx': {
      'en': 'Line Items : ',
      'ta': '',
    },
    '16xxl47k': {
      'en': ' 4',
      'ta': '',
    },
    'fezc6qtm': {
      'en':
          'Clearing jungle including uprooting of rank vegetation, grass, brush wood, trees and saplings of girth up to 30 cm measured...   ',
      'ta': '',
    },
    'wq2aajl7': {
      'en': 'Qty : ',
      'ta': '',
    },
    'usnz7c23': {
      'en': '4680',
      'ta': '',
    },
    'r0422x5a': {
      'en': 'Rate : ',
      'ta': '',
    },
    'brqw9cgo': {
      'en': '4680',
      'ta': '',
    },
    '5wihrfd3': {
      'en': 'Unit : ',
      'ta': '',
    },
    's0d23qyu': {
      'en': 'sqm',
      'ta': '',
    },
    'l54jglg0': {
      'en': 'Amount',
      'ta': '',
    },
    'st9fwmss': {
      'en': ' (₹) ',
      'ta': '',
    },
    '7s28btka': {
      'en': '1000.00',
      'ta': '',
    },
    '183lzihm': {
      'en': 'Scope of Work / Description',
      'ta': '',
    },
    'lifl86ax': {
      'en': 'Note',
      'ta': '',
    },
    '000g9hvp': {
      'en': 'Select Unit Type',
      'ta': '',
    },
    'vbcynjxt': {
      'en': 'Option 1',
      'ta': '',
    },
    'p66vbnc7': {
      'en': 'Units',
      'ta': '',
    },
    '263gngel': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'bq0okp0e': {
      'en': 'Quantity',
      'ta': '',
    },
    'u6qxf3uj': {
      'en': '4680',
      'ta': '',
    },
    '1ws4yzv6': {
      'en': 'Rate ',
      'ta': '',
    },
    'y77v1j67': {
      'en': '4680',
      'ta': '',
    },
    '7v4dzb70': {
      'en': 'Amount (₹) ',
      'ta': '',
    },
    'tmj5fh8x': {
      'en': '4680',
      'ta': '',
    },
    'rt4n2txx': {
      'en': 'Add Another item',
      'ta': '',
    },
    'pwbbz4aj': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    'pweb9ejx': {
      'en': 'Home',
      'ta': '',
    },
  },
  // user_task
  {
    'h47s3jxb': {
      'en': 'Task List',
      'ta': '',
    },
    '9fev74rm': {
      'en': 'Contract Details',
      'ta': '',
    },
    '4xwgsp6h': {
      'en': '\$67,000',
      'ta': '',
    },
    'fwn5x96t': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    '3345jvqc': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    '51ihp4cy': {
      'en': 'Home',
      'ta': '',
    },
  },
  // tasklog
  {
    '9yan4204': {
      'en': 'Start Date',
      'ta': '',
    },
    'fnvejf11': {
      'en': 'End Date',
      'ta': '',
    },
    '245vjlfs': {
      'en': 'Hours',
      'ta': '',
    },
    '3thebplh': {
      'en': 'Home',
      'ta': '',
    },
  },
  // user_task_dashboard
  {
    '0qlmlecw': {
      'en': 'On Hold',
      'ta': '',
    },
    'gfs2m7ba': {
      'en': 'In Progress',
      'ta': '',
    },
    'zh2ahzrx': {
      'en': 'Not Started',
      'ta': '',
    },
    'sfh91yau': {
      'en': 'Completed',
      'ta': '',
    },
    'zqz0kjc0': {
      'en': 'Contract Activity',
      'ta': '',
    },
    'rc0ajs4q': {
      'en': 'Below is an a summary of activity.',
      'ta': '',
    },
    '9uo8j4fv': {
      'en': 'Customer Activity',
      'ta': '',
    },
    'ha6x514d': {
      'en': 'Below is an a summary of activity.',
      'ta': '',
    },
    'ciev6gpk': {
      'en': 'Recent Task',
      'ta': '',
    },
    'p2lmcsb3': {
      'en': 'See all',
      'ta': '',
    },
    'nlnsasoz': {
      'en': 'Contract Details',
      'ta': '',
    },
    'en919a35': {
      'en': '\$67,000',
      'ta': '',
    },
    '2bd2ylol': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    'ow9k94ft': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    'qg4zu8zz': {
      'en': 'Home',
      'ta': '',
    },
  },
  // CRM_team
  {
    'axojmcpg': {
      'en': 'Team Lead',
      'ta': '',
    },
    '291nhpxq': {
      'en': 'Chandra kumar',
      'ta': '',
    },
    '7hohpg2s': {
      'en': 'chandrakumar@xmedia.in',
      'ta': '',
    },
    '7yfsxl41': {
      'en': 'CRM Team',
      'ta': '',
    },
    '4v0g6y42': {
      'en': 'Home',
      'ta': '',
    },
  },
  // DashboardCRM
  {
    'm92mnbd4': {
      'en': 'Last 1 month',
      'ta': '',
    },
    'x4pp33uj': {
      'en': 'Last 3 month',
      'ta': '',
    },
    '6k1nik3q': {
      'en': 'Last 6 month',
      'ta': '',
    },
    'ch57dhzr': {
      'en': 'Last 1 year',
      'ta': '',
    },
    'hhl91l33': {
      'en': 'Custom',
      'ta': '',
    },
    'y45w4h3l': {
      'en': '1',
      'ta': '',
    },
    'aa519xet': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'hen44sv4': {
      'en': 'My Leads',
      'ta': '',
    },
    '26lhazyn': {
      'en': 'My Opportunities',
      'ta': '',
    },
    'ip0zv54z': {
      'en': 'Expected revenue',
      'ta': '',
    },
    'm8jba5ih': {
      'en': 'Revenue',
      'ta': '',
    },
    'bqc6htn2': {
      'en': 'Win Ratio',
      'ta': '',
    },
    '8ierpfke': {
      'en': 'Unassigned Leads',
      'ta': '',
    },
    'niypexby': {
      'en': 'Lead Stage',
      'ta': '',
    },
    '98os15y5': {
      'en': 'Lead Stages',
      'ta': '',
    },
    'qb9cqle8': {
      'en': 'Count',
      'ta': '',
    },
    '9cm7ohit': {
      'en': 'Sources',
      'ta': '',
    },
    'pbh9ketj': {
      'en': 'Dashboard',
      'ta': '',
    },
    '09g0gihk': {
      'en': 'CRM',
      'ta': '',
    },
  },
  // quotation_list_page
  {
    'dymsc4mu': {
      'en': 'Quotation',
      'ta': '',
    },
    '41zg6n0z': {
      'en': 'Home',
      'ta': '',
    },
  },
  // quotation_view_page
  {
    'tnjxhtmy': {
      'en': 'Activity',
      'ta': '',
    },
    'u702e0yx': {
      'en': 'Log',
      'ta': '',
    },
    'edqzq2ea': {
      'en': 'Add',
      'ta': '',
    },
    'q14bzodw': {
      'en': 'Home',
      'ta': '',
    },
  },
  // sale_order_list_page
  {
    'tyvii6q2': {
      'en': 'Sale Order',
      'ta': '',
    },
    'jp1jpy6k': {
      'en': 'Home',
      'ta': '',
    },
  },
  // quotation_edit_page
  {
    'yjsz6efs': {
      'en': 'Edit Quotations',
      'ta': '',
    },
    'xawawlk2': {
      'en': 'Customer',
      'ta': '',
    },
    'v2lawg05': {
      'en': 'Payment Terms',
      'ta': '',
    },
    'nbhxpj1e': {
      'en': 'Option 1',
      'ta': '',
    },
    'hw3dfuab': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    'dfkjzt50': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'o9p9w421': {
      'en': 'Quotation Date',
      'ta': '',
    },
    'jern3rnr': {
      'en': 'Due Date',
      'ta': '',
    },
    'o8khvjo1': {
      'en': 'Add Items',
      'ta': '',
    },
    'n57l7ooi': {
      'en': 'Note',
      'ta': '',
    },
    'onrchs9m': {
      'en': 'Save',
      'ta': '',
    },
    '21zar48d': {
      'en': 'Field is required',
      'ta': '',
    },
    'gj9al7cd': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'nhoihbql': {
      'en': 'Home',
      'ta': '',
    },
  },
  // sale_order_view_page
  {
    'b5v4qqi4': {
      'en': 'Activity',
      'ta': '',
    },
    'q21gowfd': {
      'en': 'Log',
      'ta': '',
    },
    '4ppq0r2e': {
      'en': 'Home',
      'ta': '',
    },
  },
  // leadDashboardlist
  {
    '8y8a8pt1': {
      'en': 'Value  : ',
      'ta': '',
    },
    '3xnyqn5n': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Grn_list_page
  {
    'zjn3v1eb': {
      'en': 'GRN  List',
      'ta': '',
    },
    'fc917o5y': {
      'en': 'Home',
      'ta': '',
    },
  },
  // invoice_list_page
  {
    'le8rb86v': {
      'en': 'Invoice',
      'ta': '',
    },
    'd9xze5jr': {
      'en': 'Home',
      'ta': '',
    },
  },
  // invoice_view_page
  {
    'a6trtvcd': {
      'en': 'Activity',
      'ta': '',
    },
    'sir6n17w': {
      'en': 'Log',
      'ta': '',
    },
    'bud42f3f': {
      'en': 'Add',
      'ta': '',
    },
    'cngflwsj': {
      'en': 'Home',
      'ta': '',
    },
  },
  // quotation_create_page
  {
    'ifu3demi': {
      'en': 'Quotation Create ',
      'ta': '',
    },
    '45i1584v': {
      'en': 'Customer',
      'ta': '',
    },
    'v5rob928': {
      'en': 'Payment Terms',
      'ta': '',
    },
    '8co3xbim': {
      'en': 'Option 1',
      'ta': '',
    },
    'wcwk1tr0': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    'kvuocin4': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '87lavnhk': {
      'en': 'Quotation Date',
      'ta': '',
    },
    'reiujhkp': {
      'en': 'Due Date',
      'ta': '',
    },
    'xsylz6lw': {
      'en': 'Add Items',
      'ta': '',
    },
    'dln1bujb': {
      'en': 'Note',
      'ta': '',
    },
    '8d28meel': {
      'en': '',
      'ta': '',
    },
    'g9n0qkbw': {
      'en': 'Save',
      'ta': '',
    },
    'fb4hul8x': {
      'en': 'Note Field is required',
      'ta': '',
    },
    '60jknmoo': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '3klvpbl2': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ERPDashboard
  {
    'b9hg2d0o': {
      'en': 'Dashboard',
      'ta': '',
    },
    'jtm2g9bx': {
      'en': 'Last 1 month',
      'ta': '',
    },
    'o24t00aq': {
      'en': 'Last 3 month',
      'ta': '',
    },
    'ohq7katu': {
      'en': 'Last 6 month',
      'ta': '',
    },
    '0lacpwh0': {
      'en': 'Last 1 year',
      'ta': '',
    },
    'i1jzhkoa': {
      'en': '1',
      'ta': '',
    },
    '60ot0veh': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '4vwcbmah': {
      'en': 'Total Revenue',
      'ta': '',
    },
    'vy2deid9': {
      'en': 'QUOTATION',
      'ta': '',
    },
    '8xsahss5': {
      'en': 'SALE ORDER',
      'ta': '',
    },
    'acrvvsw9': {
      'en': 'QUOTATION SEND',
      'ta': '',
    },
    'k4837axd': {
      'en': 'QUOTATION CANCEL',
      'ta': '',
    },
    'yabsrx19': {
      'en': 'TO BE INVOICED',
      'ta': '',
    },
    'e1z1b0xk': {
      'en': 'Total Profit',
      'ta': '',
    },
    '5b7hi1im': {
      'en': '₹ 89.39K',
      'ta': '',
    },
    'bg0oqnul': {
      'en': 'New Customers',
      'ta': '',
    },
    'eultw3l4': {
      'en': 'Sales',
      'ta': '',
    },
    '8nz19qf6': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_create_page
  {
    'tmalncrj': {
      'en': ' Create contact',
      'ta': '',
    },
    'fg7pi0r8': {
      'en': 'Contact Person Name',
      'ta': '',
    },
    'mvnwi21e': {
      'en': '',
      'ta': '',
    },
    'm2urqr9e': {
      'en': 'Contact Person Name',
      'ta': '',
    },
    'th0jmpj8': {
      'en': 'Customer',
      'ta': '',
    },
    'p28fi0um': {
      'en': 'Company',
      'ta': '',
    },
    '5inyr9o1': {
      'en': 'Person',
      'ta': '',
    },
    'efyv32ui': {
      'en': 'Customer Types',
      'ta': '',
    },
    'jyok916s': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'nw1pwikq': {
      'en': 'GST Number',
      'ta': '',
    },
    'pctlbv0n': {
      'en': '',
      'ta': '',
    },
    'bi3wpl5c': {
      'en': 'GST Number',
      'ta': '',
    },
    'd9lofwgm': {
      'en': 'Contact Types',
      'ta': '',
    },
    's5ta3r3e': {
      'en': 'Customer',
      'ta': '',
    },
    '2i92kr85': {
      'en': 'Vendor',
      'ta': '',
    },
    'al0w6eez': {
      'en': 'Mobile Number',
      'ta': '',
    },
    'fjpn6g3p': {
      'en': '',
      'ta': '',
    },
    'us8ldund': {
      'en': 'Mobile Number',
      'ta': '',
    },
    'zijrj11u': {
      'en': 'Email',
      'ta': '',
    },
    'e8aq6rqt': {
      'en': '',
      'ta': '',
    },
    '5lhm4ysx': {
      'en': 'Email',
      'ta': '',
    },
    '40qgi6m5': {
      'en': 'Website',
      'ta': '',
    },
    'jn34nb79': {
      'en': '',
      'ta': '',
    },
    'gvv02oxt': {
      'en': 'Website',
      'ta': '',
    },
    '795rg69n': {
      'en': 'Address',
      'ta': '',
    },
    'a1fbfvx9': {
      'en': '',
      'ta': '',
    },
    'f2kwecy8': {
      'en': 'Address',
      'ta': '',
    },
    '24u99jqh': {
      'en': 'Pincode',
      'ta': '',
    },
    '6xqzd6z1': {
      'en': '',
      'ta': '',
    },
    'xot5m6ri': {
      'en': 'Pincode',
      'ta': '',
    },
    '1i3g14ir': {
      'en': 'Country',
      'ta': '',
    },
    'f2npq5s7': {
      'en': 'State',
      'ta': '',
    },
    '14rkd973': {
      'en': 'Upload',
      'ta': '',
    },
    'ntw8ugsl': {
      'en': 'Save',
      'ta': '',
    },
    'akak5w8f': {
      'en': 'Company field is required',
      'ta': '',
    },
    '31e3zw1l': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '3j5kb9gm': {
      'en': 'GST number field is required',
      'ta': '',
    },
    '2nnbttxc': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '9a31xr0b': {
      'en': 'Mobile  field is required',
      'ta': '',
    },
    '2x978yv3': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'imktekzs': {
      'en': 'Email Field is required',
      'ta': '',
    },
    '99cborj5': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'r6fxfxa5': {
      'en': 'Website Field is required',
      'ta': '',
    },
    'kz1cfin4': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'r97ckzdu': {
      'en': 'Person Field is required',
      'ta': '',
    },
    '5vub7lxv': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'wa77sw4k': {
      'en': 'Address field is required',
      'ta': '',
    },
    'emygcsdi': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '8q5nahk1': {
      'en': 'Pincode field is required',
      'ta': '',
    },
    'ek0qg4im': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'eagfxk13': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_edit_page
  {
    'nr94w6ti': {
      'en': 'Contact Edit ',
      'ta': '',
    },
    'i0tjvtoa': {
      'en': 'Contact Type',
      'ta': '',
    },
    'fq3efphb': {
      'en': 'Customer',
      'ta': '',
    },
    '6lusmu6p': {
      'en': 'Vendor',
      'ta': '',
    },
    'gywwb5ok': {
      'en': 'Phone Number',
      'ta': '',
    },
    'ktsqwfb1': {
      'en': 'Phone Number',
      'ta': '',
    },
    'zt9058cj': {
      'en': 'Email',
      'ta': '',
    },
    'skfozn23': {
      'en': 'Email',
      'ta': '',
    },
    'qe62fqti': {
      'en': 'Payment date',
      'ta': '',
    },
    '1kqb5o1x': {
      'en': 'Website',
      'ta': '',
    },
    'orbg23w0': {
      'en': 'Website',
      'ta': '',
    },
    'yl3wdhxr': {
      'en': 'Contact Details',
      'ta': '',
    },
    '5sruy9pi': {
      'en': 'Contact Person Name',
      'ta': '',
    },
    'ff2twaac': {
      'en': 'Contact Person Name',
      'ta': '',
    },
    '5inmy261': {
      'en': 'Address',
      'ta': '',
    },
    '1ymfttsy': {
      'en': 'Address',
      'ta': '',
    },
    'j1db3tgf': {
      'en': 'Upload',
      'ta': '',
    },
    'cnh1rty0': {
      'en': 'If you want profile update?',
      'ta': '',
    },
    '4sbt4ztp': {
      'en': 'Save',
      'ta': '',
    },
    'v85wpx84': {
      'en': 'Field is required',
      'ta': '',
    },
    'doqk6ium': {
      'en': 'Invalid Phone Number',
      'ta': '',
    },
    '5xrfazuu': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'vu1sa40f': {
      'en': 'Field is required',
      'ta': '',
    },
    '3vau29hh': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'zv6kmdys': {
      'en': 'Field is required',
      'ta': '',
    },
    'amruisla': {
      'en': 'Invalid Website url',
      'ta': '',
    },
    '5yu144wk': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'fm5aow7o': {
      'en': 'Field is required',
      'ta': '',
    },
    'au17l47l': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    't0dog3o8': {
      'en': 'Field is required',
      'ta': '',
    },
    'gdxzh6dm': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '4cxd2998': {
      'en': 'Home',
      'ta': '',
    },
  },
  // spalashscreen
  {
    'n6j3zhbf': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_page_list
  {
    'jrtqfx8u': {
      'en': 'Contact List ',
      'ta': '',
    },
    'gbdcqqd9': {
      'en': 'call',
      'ta': '',
    },
    'wrifrh70': {
      'en': 'Home',
      'ta': '',
    },
  },
  // RFQ_edit
  {
    '5q5a2n1z': {
      'en': 'Select Supplier',
      'ta': '',
    },
    'whcmjlk1': {
      'en': 'Payment Terms',
      'ta': '',
    },
    'ttomy263': {
      'en': 'Option 1',
      'ta': '',
    },
    'htrtxxq5': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    'ma4xxyhp': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '4hbsrmw9': {
      'en': 'RFQ Date',
      'ta': '',
    },
    '4v38ef5e': {
      'en': 'Due Date',
      'ta': '',
    },
    'oxqst4bn': {
      'en': 'Add Items',
      'ta': '',
    },
    'gtyhzzud': {
      'en': 'Notes',
      'ta': '',
    },
    '4ichqjji': {
      'en': 'Notes',
      'ta': '',
    },
    'lly5gziu': {
      'en': 'Save',
      'ta': '',
    },
    'm3afln8j': {
      'en': 'Field is required',
      'ta': '',
    },
    'q0p1aivh': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'yjgb5l20': {
      'en': 'RFQ Edit',
      'ta': '',
    },
    'wrcuwbm2': {
      'en': 'Home',
      'ta': '',
    },
  },
  // purchase_rfq_lists
  {
    '9q7qrvs6': {
      'en': 'RFQ\'S  List',
      'ta': '',
    },
    'zovs62f7': {
      'en': 'Home',
      'ta': '',
    },
  },
  // purchase_order_lists
  {
    'we6zdzfp': {
      'en': 'Purchase Order',
      'ta': '',
    },
    't4hu52wy': {
      'en': 'Home',
      'ta': '',
    },
  },
  // invoice_edit_page
  {
    'ftdgyxsq': {
      'en': ' Customer',
      'ta': '',
    },
    'wc974bfo': {
      'en': 'Payment Terms',
      'ta': '',
    },
    '9r7hlhwd': {
      'en': 'Option 1',
      'ta': '',
    },
    'ppgn16qc': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    't1pd0av2': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'wqzi63sr': {
      'en': 'Invoice Date',
      'ta': '',
    },
    '1id0esqe': {
      'en': 'Due Date',
      'ta': '',
    },
    's7bn43e2': {
      'en': 'Add Items',
      'ta': '',
    },
    'okzvx27m': {
      'en': 'Notes',
      'ta': '',
    },
    't22h5kbr': {
      'en': '',
      'ta': '',
    },
    '0sndumu6': {
      'en': 'Notes',
      'ta': '',
    },
    'epidc29q': {
      'en': 'Save',
      'ta': '',
    },
    'xjc5osaw': {
      'en': 'Field is required',
      'ta': '',
    },
    'c3wn2nfu': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '0n25ee6i': {
      'en': 'Invoice Edit',
      'ta': '',
    },
    '4r8ffcw2': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Vendorbill_list_page
  {
    'o3jk4idh': {
      'en': 'Vendor Bills',
      'ta': '',
    },
    '4s9y82sy': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Payment_list_page
  {
    '4k57maa6': {
      'en': 'Payments',
      'ta': '',
    },
    '4tyigkzp': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ExpenseUpdate
  {
    'qro1qm9f': {
      'en': 'Expense Update',
      'ta': '',
    },
    'ad1laody': {
      'en': 'Expense Category',
      'ta': '',
    },
    'id2p55py': {
      'en': 'Select Expence Category',
      'ta': '',
    },
    'a06zxaoj': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'n9ow9y78': {
      'en': 'Expense Name',
      'ta': 'செலவு பெயர்',
    },
    'zmq7f7mw': {
      'en': 'Expense Name',
      'ta': 'செலவு பெயர்',
    },
    'ky37vd5i': {
      'en': 'Unit Price',
      'ta': 'அலகு விலை',
    },
    'x05ma4xy': {
      'en': 'Enter Unit Price',
      'ta': 'யூனிட் விலையை உள்ளிடவும்',
    },
    's4uv4lzd': {
      'en': 'Quantity',
      'ta': 'அளவு',
    },
    '93mcpv3h': {
      'en': 'Enter Quantity',
      'ta': 'அளவை உள்ளிடவும்',
    },
    'kpity4if': {
      'en': 'Total',
      'ta': 'மொத்தம்',
    },
    'rx7wfabj': {
      'en': 'Total',
      'ta': 'மொத்தம்',
    },
    'e6o9ktu0': {
      'en': 'Date',
      'ta': 'தேதி',
    },
    '4tr2pm3g': {
      'en': 'Paid By',
      'ta': 'செலுத்தப்பட்டது',
    },
    'hpptibeg': {
      'en': 'Own Account',
      'ta': 'சொந்த கணக்கு',
    },
    'go4b5wey': {
      'en': 'Company Account',
      'ta': 'நிறுவனத்தின் கணக்கு',
    },
    'n4q2qupu': {
      'en': 'Paid by',
      'ta': 'மூலம் செலுத்தப்பட்டது',
    },
    'tt0g6pj4': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    'yi9go4u5': {
      'en': 'Accounts',
      'ta': 'கணக்குகள்',
    },
    'zya13dr3': {
      'en': 'Option 1',
      'ta': 'விருப்பம் 1',
    },
    'q6xij8ad': {
      'en': 'Option 2',
      'ta': 'விருப்பம் 2',
    },
    'ot8izrhs': {
      'en': 'Accounts',
      'ta': 'கணக்குகள்',
    },
    'yaz4cijm': {
      'en': 'Search for an item...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    '49arrqc7': {
      'en': 'Note',
      'ta': 'குறிப்பு',
    },
    'fsw9yfbd': {
      'en': 'Note',
      'ta': 'குறிப்பு',
    },
    'qekb874q': {
      'en': 'Gallery / Capture Picture',
      'ta': 'படம் பிடிக்கவும்',
    },
    'vhblk306': {
      'en': 'File Attachment',
      'ta': 'கோப்பு இணைப்பு',
    },
    'nift9rlz': {
      'en': 'Save',
      'ta': 'சேமிக்கவும்',
    },
    'ol9arex1': {
      'en': 'Field is required',
      'ta': '',
    },
    '10fv273w': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'jdp6v97h': {
      'en': 'Field is required',
      'ta': '',
    },
    'ngph09pi': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'f1reem04': {
      'en': 'Field is required',
      'ta': '',
    },
    'p3sbxqa1': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'yq75sazu': {
      'en': 'Field is required',
      'ta': '',
    },
    'lf5lj07e': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '73h6jap8': {
      'en': 'Field is required',
      'ta': '',
    },
    'unzijvo8': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '40bkuobg': {
      'en': 'Home',
      'ta': '',
    },
  },
  // delivery_challen_list
  {
    'qryzwwcs': {
      'en': 'Delivery Challan List',
      'ta': '',
    },
    'xks3r32h': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_list_page
  {
    'cdmlxmgb': {
      'en': 'Inventory ',
      'ta': '',
    },
    '9f56vvny': {
      'en': 'Home',
      'ta': '',
    },
  },
  // vendor_bill_edit
  {
    'e74c02fy': {
      'en': 'Select Supplier',
      'ta': '',
    },
    '9pnj1cbl': {
      'en': 'Payment Terms',
      'ta': '',
    },
    'unqm1pj5': {
      'en': 'Option 1',
      'ta': '',
    },
    'bpb204qg': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    '48l2ue3k': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'xgojuger': {
      'en': 'Vendor Bill Date',
      'ta': '',
    },
    'mhnq21jm': {
      'en': 'Due Date',
      'ta': '',
    },
    'w0j7oj4d': {
      'en': 'Add Items',
      'ta': '',
    },
    '3xi1mszi': {
      'en': 'Notes',
      'ta': '',
    },
    'q3xtrwkc': {
      'en': 'Notes',
      'ta': '',
    },
    '9acemt7v': {
      'en': 'Save',
      'ta': '',
    },
    '9e4itlox': {
      'en': 'Field is required',
      'ta': '',
    },
    'd9kwoqhe': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'u05fhz5i': {
      'en': 'Bill edit',
      'ta': '',
    },
    'jwj2suz0': {
      'en': 'Home',
      'ta': '',
    },
  },
  // purchase_rfq_view
  {
    '9sd7rw9b': {
      'en': 'Activity',
      'ta': '',
    },
    'gywhu7gg': {
      'en': 'Log',
      'ta': '',
    },
    '3w9qhgqi': {
      'en': 'Add',
      'ta': '',
    },
    'yo0g2fs4': {
      'en': 'Home',
      'ta': '',
    },
  },
  // purchase_order_view
  {
    '9wxqyemz': {
      'en': 'Activity',
      'ta': '',
    },
    'j3jpya1x': {
      'en': 'Log',
      'ta': '',
    },
    '6nnkvtp9': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Grn_view_Page
  {
    'b54urc91': {
      'en': 'GRN Number',
      'ta': '',
    },
    '0ddkifo1': {
      'en': ':',
      'ta': '',
    },
    'fjrpqsl2': {
      'en': 'Partner',
      'ta': '',
    },
    'ialseymo': {
      'en': ':',
      'ta': '',
    },
    'd9caolom': {
      'en': 'Date',
      'ta': '',
    },
    '8qwkchpa': {
      'en': ':',
      'ta': '',
    },
    '59iy40am': {
      'en': 'Operation Type',
      'ta': '',
    },
    'dc4sjm3b': {
      'en': ':',
      'ta': '',
    },
    'ohxdfv8f': {
      'en': 'Initial Demand',
      'ta': '',
    },
    'n0ct53md': {
      'en': ':',
      'ta': '',
    },
    'kuvylj5n': {
      'en': 'QTY',
      'ta': '',
    },
    'vcifh2nx': {
      'en': ':',
      'ta': '',
    },
    '1j804wtc': {
      'en': 'Home',
      'ta': '',
    },
  },
  // vendor_bill_view
  {
    'bz94iqzl': {
      'en': 'Activity',
      'ta': '',
    },
    'ajtshqk0': {
      'en': 'Logs',
      'ta': '',
    },
    'g6b0mg8m': {
      'en': 'Add',
      'ta': '',
    },
    'xad0ilra': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_sale_lists_table
  {
    'ksayf1kl': {
      'en': 'Home',
      'ta': '',
    },
  },
  // payment_view_page
  {
    'aojcxfgy': {
      'en': 'Payment No  :  ',
      'ta': '',
    },
    'p44ok476': {
      'en': 'ACCOUNT TYPE',
      'ta': '',
    },
    '7wc30bfm': {
      'en': 'PAYMENT METHOD',
      'ta': '',
    },
    '7fh0y68n': {
      'en': 'TOTAL',
      'ta': '',
    },
    'j0lj0q3n': {
      'en': 'Activity',
      'ta': '',
    },
    '48mza4ex': {
      'en': 'Logs',
      'ta': '',
    },
    '5htxuuo3': {
      'en': 'Add',
      'ta': '',
    },
    'pikm90z1': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Account_invoice_create_page
  {
    'r0v3iume': {
      'en': 'Create Invoice',
      'ta': '',
    },
    'jrpfj42l': {
      'en': 'Customer',
      'ta': '',
    },
    'kpy7tcd3': {
      'en': 'Payment Terms',
      'ta': '',
    },
    '8lp36wsv': {
      'en': 'Option 1',
      'ta': '',
    },
    'aa7k9c52': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    'dboehkc2': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '9yk1zlxp': {
      'en': 'Invoice Date',
      'ta': '',
    },
    'htn5npvg': {
      'en': 'Due Date',
      'ta': '',
    },
    'o1xl6snb': {
      'en': 'Add Items',
      'ta': '',
    },
    'cqz1g4ab': {
      'en': 'Note',
      'ta': '',
    },
    'ja0h71my': {
      'en': '',
      'ta': '',
    },
    'tu5ri043': {
      'en': '',
      'ta': '',
    },
    '62rvlj2h': {
      'en': 'Save',
      'ta': '',
    },
    'wmsoftz3': {
      'en': 'Note Field is required',
      'ta': '',
    },
    'gsj2c4d8': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'jkhqa4iu': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_invoices_lists_table
  {
    '9obk42y4': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_purchase_order_list
  {
    'ldjf3kmm': {
      'en': 'Home',
      'ta': '',
    },
  },
  // contact_Payment_lists_table
  {
    'l6ujn8k7': {
      'en': 'Home',
      'ta': '',
    },
  },
  // delivery_challan_view
  {
    'pq97llxz': {
      'en': 'DC Number',
      'ta': '',
    },
    'qkbroel5': {
      'en': ':',
      'ta': '',
    },
    'hurz8hpp': {
      'en': 'Partner',
      'ta': '',
    },
    '7ojiqcay': {
      'en': ':',
      'ta': '',
    },
    'p9qgrd7q': {
      'en': 'Date',
      'ta': '',
    },
    'kxo08ls7': {
      'en': ':',
      'ta': '',
    },
    'vmfbu0dl': {
      'en': 'Operation Type',
      'ta': '',
    },
    'fjqmysbk': {
      'en': ':',
      'ta': '',
    },
    'j4indxpl': {
      'en': 'Initial Demand',
      'ta': '',
    },
    'gsujc6i8': {
      'en': ':',
      'ta': '',
    },
    '44are1ie': {
      'en': 'QTY',
      'ta': '',
    },
    'dn7qe663': {
      'en': ':',
      'ta': '',
    },
    '7wg4zzip': {
      'en': 'Home',
      'ta': '',
    },
  },
  // service_list_page
  {
    '7wh95oc0': {
      'en': 'Service List',
      'ta': '',
    },
    'qf5zrxg0': {
      'en': 'High',
      'ta': '',
    },
    '4aqke00m': {
      'en': ' 22 May 2023',
      'ta': '',
    },
    'gs4qfoxs': {
      'en': ' new lead ',
      'ta': '',
    },
    '8qqa85p6': {
      'en': '543212324 ',
      'ta': '',
    },
    'yzhxd9dt': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Accoun_Vendor_create_page
  {
    'jlnfpyf2': {
      'en': ' Create Vendor Bill',
      'ta': '',
    },
    'hgbjth3j': {
      'en': 'Supplier',
      'ta': '',
    },
    'mo0oirfd': {
      'en': 'Payment Terms',
      'ta': '',
    },
    'tesg1sah': {
      'en': 'Option 1',
      'ta': '',
    },
    'o4rqdc8h': {
      'en': 'Payment  Terms',
      'ta': '',
    },
    '5ibwdb0j': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '68j9byq3': {
      'en': 'Vendor Bill Date',
      'ta': '',
    },
    'tn5hwuh1': {
      'en': 'Due Date',
      'ta': '',
    },
    'y18fkmzo': {
      'en': 'Add Items',
      'ta': '',
    },
    'mumysdt6': {
      'en': 'Note',
      'ta': '',
    },
    'up7uu5a3': {
      'en': '',
      'ta': '',
    },
    'stachcqc': {
      'en': '',
      'ta': '',
    },
    'rex3nh5g': {
      'en': 'Save',
      'ta': '',
    },
    '9so62b58': {
      'en': 'Home',
      'ta': '',
    },
  },
  // setting
  {
    'vx6dd7nz': {
      'en': 'Settings',
      'ta': '',
    },
    '102jnf3x': {
      'en': 'Change Branch',
      'ta': '',
    },
    '2nl05xcb': {
      'en': 'Option 1',
      'ta': '',
    },
    'ukz3z3zn': {
      'en': 'Please select branch',
      'ta': '',
    },
    'spmna3o8': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'adcct5ys': {
      'en': 'Initial Month Period',
      'ta': '',
    },
    '8p5m4lo7': {
      'en': '1 Month',
      'ta': '',
    },
    'gekf3ntk': {
      'en': '3 Month',
      'ta': '',
    },
    'f2uotdh2': {
      'en': '6 Month',
      'ta': '',
    },
    'xjuwmmz5': {
      'en': '12 Month',
      'ta': '',
    },
    'umv408pi': {
      'en': 'Please select month peroid',
      'ta': '',
    },
    'qtmhhk50': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '4p88wkdb': {
      'en': 'Inventory stock indicator',
      'ta': '',
    },
    'o2174rks': {
      'en': 'Low',
      'ta': '',
    },
    '62oznqyj': {
      'en': '20',
      'ta': '',
    },
    'blhixxsc': {
      'en': 'Medium',
      'ta': '',
    },
    '22ts0mqv': {
      'en': '20',
      'ta': '',
    },
    '84l0ebjv': {
      'en': 'Default Limit',
      'ta': '',
    },
    '9y6milj2': {
      'en': '20',
      'ta': '',
    },
    'czuti73o': {
      'en': 'Default Filter',
      'ta': '',
    },
    'bznkxgmt': {
      'en': 'Inventory',
      'ta': '',
    },
    'xnx6ekvb': {
      'en': 'Sale',
      'ta': '',
    },
    '90y477u0': {
      'en': 'Purchase',
      'ta': '',
    },
    'b8b94dl6': {
      'en': 'Sale & Purchase',
      'ta': '',
    },
    '36r3upmx': {
      'en': 'Please select month peroid',
      'ta': '',
    },
    'cuhcio2f': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'jgt9of50': {
      'en': 'GRN',
      'ta': '',
    },
    '3ydm8kr2': {
      'en': 'Draft',
      'ta': '',
    },
    'kitbf8mz': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    'wv9d8gus': {
      'en': 'Waiting',
      'ta': '',
    },
    '3g0tz6vw': {
      'en': 'Ready',
      'ta': '',
    },
    'x82gtgx4': {
      'en': 'Done',
      'ta': '',
    },
    'qmu42gl2': {
      'en': 'Cancelled',
      'ta': '',
    },
    'tszmvv43': {
      'en': 'Please select month peroid',
      'ta': '',
    },
    '6gqvpz0v': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'jzmkrzgk': {
      'en': 'Delivery Challan',
      'ta': '',
    },
    'ond4q9ep': {
      'en': 'Draft',
      'ta': '',
    },
    'k6unr9r4': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    'wxfbohtd': {
      'en': 'Waiting',
      'ta': '',
    },
    '2flaqdhu': {
      'en': 'Ready',
      'ta': '',
    },
    'a27u7vzn': {
      'en': 'Done',
      'ta': '',
    },
    'ivaqtz8x': {
      'en': 'Cancelled',
      'ta': '',
    },
    '59vpfp3u': {
      'en': 'Please select month peroid',
      'ta': '',
    },
    '07do47e7': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'duzb5hsa': {
      'en': 'Task',
      'ta': '',
    },
    'vlp47sgx': {
      'en': 'Draft',
      'ta': '',
    },
    'y1iw8axc': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    'x0clpcsb': {
      'en': 'Waiting',
      'ta': '',
    },
    '957fpthm': {
      'en': 'Ready',
      'ta': '',
    },
    '5cxj9sgg': {
      'en': 'Done',
      'ta': '',
    },
    '6vz7fslb': {
      'en': 'Cancelled',
      'ta': '',
    },
    'w4mch7v9': {
      'en': 'Please select month peroid',
      'ta': '',
    },
    '0ustanjk': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '9euog410': {
      'en': 'Quotation',
      'ta': '',
    },
    '87fi60ii': {
      'en': 'Quotation',
      'ta': '',
    },
    'j6xin8yo': {
      'en': 'Quotation Send',
      'ta': '',
    },
    '228x6vqs': {
      'en': 'Cancel',
      'ta': '',
    },
    'mqtyrimh': {
      'en': '',
      'ta': '',
    },
    'oz31rkcp': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'hobh73wj': {
      'en': 'Sale',
      'ta': '',
    },
    'qa9fgwaz': {
      'en': 'Sale Order ',
      'ta': '',
    },
    'bexwbn1o': {
      'en': 'Cancelled',
      'ta': '',
    },
    'ctpf3xc9': {
      'en': '',
      'ta': '',
    },
    '4edk2209': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '30l0vy8k': {
      'en': 'Purchase',
      'ta': '',
    },
    'tjbtffll': {
      'en': 'Purchase Order',
      'ta': '',
    },
    '8tilc596': {
      'en': 'Cancelled',
      'ta': '',
    },
    'uonck68r': {
      'en': '',
      'ta': '',
    },
    'bnsr8hke': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'vvvqk884': {
      'en': 'RFQ',
      'ta': '',
    },
    '0518oy2p': {
      'en': 'RFQ',
      'ta': '',
    },
    'f4pck1n4': {
      'en': 'RFQ Sent',
      'ta': '',
    },
    'o2u9ztly': {
      'en': 'Cancelled',
      'ta': '',
    },
    'rxb6voie': {
      'en': '',
      'ta': '',
    },
    '74bogf8i': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'o2cwu1d0': {
      'en': 'Invoice',
      'ta': '',
    },
    'wibndnmz': {
      'en': 'Draft',
      'ta': '',
    },
    'mn6ola2v': {
      'en': 'Open ',
      'ta': '',
    },
    '8b4pkzh5': {
      'en': 'Cancel',
      'ta': '',
    },
    '5x4zx89j': {
      'en': '',
      'ta': '',
    },
    'f03wmpka': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'b1rfopik': {
      'en': 'Vendor Bill',
      'ta': '',
    },
    'wr2bsm4u': {
      'en': 'Draft',
      'ta': '',
    },
    'yfzsa9nn': {
      'en': 'Open ',
      'ta': '',
    },
    'ajexq7r9': {
      'en': 'Cancel',
      'ta': '',
    },
    'epdfvtbl': {
      'en': '',
      'ta': '',
    },
    'gv075ihw': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'dzypxeig': {
      'en': 'Payment',
      'ta': '',
    },
    'z8z0xyuz': {
      'en': 'Draft',
      'ta': '',
    },
    'ic90ux9x': {
      'en': 'Paid',
      'ta': '',
    },
    't85m7egd': {
      'en': '',
      'ta': '',
    },
    '5en5dil0': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'e3s6mokp': {
      'en': 'Contact',
      'ta': '',
    },
    'v32qd8el': {
      'en': 'All',
      'ta': '',
    },
    'pvhe44je': {
      'en': 'Customer',
      'ta': '',
    },
    'dl9r0qfl': {
      'en': 'Supplier',
      'ta': '',
    },
    'kpnb4mko': {
      'en': 'Customer & Supplier',
      'ta': '',
    },
    'm03amf1j': {
      'en': '',
      'ta': '',
    },
    'qlnva6qo': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'vlvasa2x': {
      'en': 'Expenses',
      'ta': '',
    },
    '5ctlsblv': {
      'en': 'Draft',
      'ta': '',
    },
    'q8l5ft30': {
      'en': 'Waiting',
      'ta': '',
    },
    '9qvys21w': {
      'en': 'Ready',
      'ta': '',
    },
    'sxwxwm4o': {
      'en': 'Done',
      'ta': '',
    },
    '5n7e5uc3': {
      'en': 'Cancelled',
      'ta': '',
    },
    'ox6x5l47': {
      'en': '',
      'ta': '',
    },
    'fq3fakyr': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'mt8t3oi8': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Account_Payment_Create
  {
    '6glykp62': {
      'en': 'Payment Type',
      'ta': '',
    },
    '8idl652p': {
      'en': 'Send Money',
      'ta': '',
    },
    'ngkt20xr': {
      'en': 'Receive Money',
      'ta': '',
    },
    '9bpjic2b': {
      'en': 'Payments Type',
      'ta': '',
    },
    'b4xaf79i': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'jk2sfswc': {
      'en': 'Partner Type',
      'ta': '',
    },
    'dux7oqkp': {
      'en': 'Customer',
      'ta': '',
    },
    'idy8sbam': {
      'en': 'Payment Date',
      'ta': '',
    },
    '5235zxpk': {
      'en': 'Amount',
      'ta': '',
    },
    'lnatz379': {
      'en': '',
      'ta': '',
    },
    'uicpfuoe': {
      'en': 'Amount ',
      'ta': '',
    },
    'wpexw6n4': {
      'en': 'Payment Mode',
      'ta': '',
    },
    'm8bsivwv': {
      'en': 'Bank',
      'ta': '',
    },
    'av4vz7we': {
      'en': 'Cash',
      'ta': '',
    },
    '9avq9mhf': {
      'en': 'Payment  Mode',
      'ta': '',
    },
    'lb5kucdp': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'kn8r2ncm': {
      'en': 'Note',
      'ta': '',
    },
    'iswssw6w': {
      'en': '',
      'ta': '',
    },
    'hgnotbfv': {
      'en': 'save',
      'ta': '',
    },
    '4z3tycu4': {
      'en': 'amount field is required',
      'ta': '',
    },
    'o0hdpeug': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '9y8lz1xu': {
      'en': 'Note field is required',
      'ta': '',
    },
    'nymcrr16': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'i5cfvxzy': {
      'en': 'Create Payment',
      'ta': '',
    },
    '3ba4lank': {
      'en': 'Home',
      'ta': '',
    },
  },
  // CategoriesWithProduct
  {
    '7t5iwl9u': {
      'en': 'Hello World',
      'ta': '',
    },
    '3ov9gzzv': {
      'en': 'Hello World',
      'ta': '',
    },
    'q7qapwpe': {
      'en': 'Hello World',
      'ta': '',
    },
    'sja4at96': {
      'en': 'Hello World',
      'ta': '',
    },
    'trozqvd2': {
      'en': 'Hello World',
      'ta': '',
    },
    'qgw92c9d': {
      'en': 'Hello World',
      'ta': '',
    },
    'fnebgdcl': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    'xmtw19lc': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    '20fqpac6': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    '03t7ta0j': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    'zt597khm': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    '57pncsn5': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    'qnh5yu3d': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    '8m8kfyvr': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    'r9rcrrkm': {
      'en': 'Rechargeable \nBattery',
      'ta': '',
    },
    '3vt9bm12': {
      'en': 'Category',
      'ta': '',
    },
    'vzz29cj0': {
      'en': 'Home',
      'ta': '',
    },
  },
  // dashboardTasklist
  {
    '8qo2vv7t': {
      'en': 'Task List',
      'ta': '',
    },
    'vjdmlpn6': {
      'en': 'Deadline :  ',
      'ta': '',
    },
    'yoln4ax2': {
      'en': 'Contract Details',
      'ta': '',
    },
    'w1r3o9vx': {
      'en': '\$67,000',
      'ta': '',
    },
    'b4ynt5jp': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    'vfj71hqd': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    'an9zrzl9': {
      'en': 'Home',
      'ta': '',
    },
  },
  // LeadDashboardOpportunity
  {
    'fs4kddgg': {
      'en': 'My Opportunity',
      'ta': '',
    },
    '0swyt7xb': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Contact_view_page_new
  {
    '630h2y2o': {
      'en': 'Customer',
      'ta': '',
    },
    'igtuy9f8': {
      'en': '|',
      'ta': '',
    },
    '5233kxw8': {
      'en': 'Supplier',
      'ta': '',
    },
    '6y33oth5': {
      'en': 'Company',
      'ta': '',
    },
    'xg8y2xt8': {
      'en': 'Address',
      'ta': '',
    },
    '03zgc2c1': {
      'en': 'Phone Number',
      'ta': '',
    },
    'ojdymneg': {
      'en': 'Email',
      'ta': '',
    },
    '7pz09zh7': {
      'en': 'Website',
      'ta': '',
    },
    '2b4hmph9': {
      'en': 'Sales Orders',
      'ta': '',
    },
    'iibuj8fk': {
      'en': 'Invoices',
      'ta': '',
    },
    'cbl4cpeb': {
      'en': 'Purchase Order',
      'ta': '',
    },
    'neet0odv': {
      'en': 'Payment',
      'ta': '',
    },
    'tuin09dr': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Inventory_View
  {
    'c1806pt5': {
      'en': 'Purchase',
      'ta': '',
    },
    '3npl9ol6': {
      'en': 'Sale',
      'ta': '',
    },
    'h2d7b6xo': {
      'en': 'Category',
      'ta': '',
    },
    'jl589tbx': {
      'en': 'Price',
      'ta': '',
    },
    '51owmw6q': {
      'en': 'Unit of Measures',
      'ta': '',
    },
    'q50af03m': {
      'en': 'Quantity On Hand',
      'ta': '',
    },
    'bfpbdwtw': {
      'en': 'Forecasted Quantity',
      'ta': '',
    },
    '0j5mu74e': {
      'en': 'Purchased',
      'ta': '',
    },
    'ofz0nqxf': {
      'en': 'Sold',
      'ta': '',
    },
    't5mcj0yc': {
      'en': 'Home',
      'ta': '',
    },
  },
  // DeliveryChellan_create_page
  {
    'gvhixnct': {
      'en': 'Partner',
      'ta': '',
    },
    'xd6l4u8f': {
      'en': 'Purchase Requisations',
      'ta': '',
    },
    '3ijjd7pt': {
      'en': 'Source Location',
      'ta': '',
    },
    'ayci7bx7': {
      'en': 'Customer',
      'ta': '',
    },
    'm2f6czpn': {
      'en': 'Source Location',
      'ta': '',
    },
    '83fcydee': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'aw89qf8l': {
      'en': 'Destination Location',
      'ta': '',
    },
    'l5dma7zu': {
      'en': 'Customer',
      'ta': '',
    },
    'a6au11nw': {
      'en': 'Destination Location',
      'ta': '',
    },
    'm0sfd70n': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '9vffoiet': {
      'en': 'Shedule Date',
      'ta': '',
    },
    '9hhjvxhe': {
      'en': 'Add Items',
      'ta': '',
    },
    'p6kvf0eq': {
      'en': 'Save',
      'ta': '',
    },
    'ihgtllb0': {
      'en': 'Delivery Challan Create',
      'ta': '',
    },
    'q6b0mlcz': {
      'en': 'Home',
      'ta': '',
    },
  },
  // LeadOpportunityList
  {
    'scf6lcmv': {
      'en': 'Opportunity',
      'ta': '',
    },
    'liommi1w': {
      'en': 'Home',
      'ta': '',
    },
  },
  // CreateLead
  {
    'i7r3sati': {
      'en': 'Lead Source',
      'ta': '',
    },
    '99zd4bm6': {
      'en': 'Option 1',
      'ta': '',
    },
    'lmotwtz3': {
      'en': 'Select Sources',
      'ta': '',
    },
    'yqofufbh': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'hwsduf1s': {
      'en': 'Lead Name',
      'ta': '',
    },
    'auh4vqzs': {
      'en': 'Enter Lead Name',
      'ta': '',
    },
    'vnh0p2oe': {
      'en': 'Email',
      'ta': '',
    },
    'rjbetvss': {
      'en': 'Enter Customer Email',
      'ta': '',
    },
    'i3ydsw2r': {
      'en': 'Mobile ',
      'ta': '',
    },
    'nh32tth1': {
      'en': 'Enter Customer Mobile Number',
      'ta': '',
    },
    'nxryony0': {
      'en': 'Priority',
      'ta': '',
    },
    '17gaf0ou': {
      'en': 'Low',
      'ta': '',
    },
    'fibultu9': {
      'en': 'Medium',
      'ta': '',
    },
    'kqflkzxu': {
      'en': 'High',
      'ta': '',
    },
    '5a2dq7l3': {
      'en': 'Very High',
      'ta': '',
    },
    'de218a2n': {
      'en': 'Please select',
      'ta': '',
    },
    'nbmsx2vi': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '5xxkuhwp': {
      'en': 'Customer Person',
      'ta': '',
    },
    'e3uaqi4j': {
      'en': 'Enter Customer Person',
      'ta': '',
    },
    '62iz1lvj': {
      'en': 'Expected Revenue  (₹)',
      'ta': '',
    },
    'rm1c03aq': {
      'en': '',
      'ta': '',
    },
    '831ta4kr': {
      'en': 'Enter Revenue',
      'ta': '',
    },
    '1umxo6ci': {
      'en': 'Probability (%)',
      'ta': '',
    },
    '53cd8a7m': {
      'en': '',
      'ta': '',
    },
    'uefzkc9p': {
      'en': 'Enter Probablity',
      'ta': '',
    },
    'lgzdszbh': {
      'en': 'Address',
      'ta': '',
    },
    'fyln315h': {
      'en': '',
      'ta': '',
    },
    'nh76s1dk': {
      'en': 'Enter Customer Address',
      'ta': '',
    },
    'e0wkimar': {
      'en': 'City',
      'ta': '',
    },
    'u3bagggm': {
      'en': 'Zipcode',
      'ta': '',
    },
    'avgdfi4s': {
      'en': 'Note',
      'ta': '',
    },
    'jn9do72o': {
      'en': '',
      'ta': '',
    },
    'uzb2exwo': {
      'en': 'Save',
      'ta': '',
    },
    'tjvm0j7d': {
      'en': 'Lead Name required',
      'ta': '',
    },
    '64v37y7a': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '2x9g281x': {
      'en': 'Email required',
      'ta': '',
    },
    '16hb4kj6': {
      'en': 'Enter Valid Email',
      'ta': '',
    },
    'b63m2lrs': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'sk81o7yb': {
      'en': 'Mobile Number required',
      'ta': '',
    },
    'g77bqtqt': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'naykj1rc': {
      'en': 'Customer Person required',
      'ta': '',
    },
    'sqkkxrps': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'ilbmcedc': {
      'en': 'Expected Revenue required',
      'ta': '',
    },
    'at65uako': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'tj68tgoo': {
      'en': 'Probablity  is required',
      'ta': '',
    },
    'zk3mjg6w': {
      'en': 'More three character not allowed ',
      'ta': '',
    },
    '049bojtg': {
      'en': 'Percentage must between 1 to 100',
      'ta': '',
    },
    'rxv6hnmm': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'r30ulexr': {
      'en': 'Field is required',
      'ta': '',
    },
    'oondp5ep': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'mo2d8flq': {
      'en': 'Field is required',
      'ta': '',
    },
    'h8xtovit': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '5on50koj': {
      'en': 'Field is required',
      'ta': '',
    },
    'uysf2w63': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'bb32mx5k': {
      'en': 'Field is required',
      'ta': '',
    },
    'xdh0qrae': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '3uyaz70m': {
      'en': 'Create Lead',
      'ta': '',
    },
    '1mv7dh1n': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Purchase_Rfq_create_new
  {
    'nmd1ugkz': {
      'en': 'Supplier',
      'ta': '',
    },
    '7vlcb1gd': {
      'en': 'Payment Terms',
      'ta': '',
    },
    '44ro9aj3': {
      'en': 'Option 1',
      'ta': '',
    },
    'qxc8djy4': {
      'en': 'Select Payment  Terms',
      'ta': '',
    },
    '2ilk5l2o': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'xupwduev': {
      'en': 'RFQ Date',
      'ta': '',
    },
    'vq95qv7g': {
      'en': 'Due Date',
      'ta': '',
    },
    'fcle19dr': {
      'en': 'Add Items',
      'ta': '',
    },
    'm4fwwbat': {
      'en': 'Note',
      'ta': '',
    },
    'd4d3ibxe': {
      'en': '',
      'ta': '',
    },
    '1nyqilzu': {
      'en': 'Save',
      'ta': '',
    },
    'adhfh9b5': {
      'en': 'Field is required',
      'ta': '',
    },
    'eytz4e37': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '0cqe4m11': {
      'en': 'Create RFQ',
      'ta': '',
    },
    'dghhysl1': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Welcome
  {
    '4zqjsk9g': {
      'en': 'Hello!',
      'ta': '',
    },
    'y47mybzu': {
      'en': 'Welcome to Scopex Mobile App',
      'ta': '',
    },
    'pbq3f6s7': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Product_details_new
  {
    'zw5mnqya': {
      'en': 'Specification',
      'ta': '',
    },
    'kiuzzkbk': {
      'en': 'Description',
      'ta': '',
    },
    'xs6xj118': {
      'en': ' -  ',
      'ta': '',
    },
    '9hp8gz26': {
      'en': 'Documents ',
      'ta': '',
    },
    '390qnenx': {
      'en': '0pportunity',
      'ta': '',
    },
    'wovt0rcq': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_quantity_hand
  {
    'rtn94we4': {
      'en': ' Quantity on Hand ',
      'ta': '',
    },
    'k6n9xqi3': {
      'en': 'Qty          : ',
      'ta': '',
    },
    'm0xrk0vd': {
      'en': 'Res Qty : ',
      'ta': '',
    },
    'z4mj16ad': {
      'en': 'Home',
      'ta': '',
    },
  },
  // MaterialEquipmentList
  {
    'gll08eoz': {
      'en': 'Date : ',
      'ta': '',
    },
    'qn3f33ik': {
      'en': 'Equipment Request',
      'ta': '',
    },
    'z908b6cu': {
      'en': 'Home',
      'ta': '',
    },
  },
  // EquipmentCreate
  {
    'ah6nxjvg': {
      'en': 'Project Name : ',
      'ta': '',
    },
    '64e6sowg': {
      'en': 'Project',
      'ta': '',
    },
    'fr9elx7z': {
      'en': 'Product',
      'ta': '',
    },
    'h3z2rha4': {
      'en': 'Unit : ',
      'ta': '',
    },
    'fitjzd3h': {
      'en': 'Quantity',
      'ta': '',
    },
    'm2c3a5aj': {
      'en': 'Add',
      'ta': '',
    },
    'jco2rpxi': {
      'en': 'Field is required',
      'ta': '',
    },
    'agn4ogyx': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '1acvj1nl': {
      'en': 'Equipment Items',
      'ta': '',
    },
    'poafaeay': {
      'en': 'Product Name',
      'ta': '',
    },
    'rpvim90l': {
      'en': 'Quantity',
      'ta': '',
    },
    'kpey6fp3': {
      'en': 'Unit',
      'ta': '',
    },
    'run6n4ug': {
      'en': 'Save',
      'ta': '',
    },
    'hp5f2nlv': {
      'en': 'Request new equipment',
      'ta': '',
    },
    '2ixeclrf': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_forecast_quantity
  {
    'mapp7xbg': {
      'en': 'Forecasted Quantity',
      'ta': '',
    },
    '6qj60ntg': {
      'en': 'Qty : ',
      'ta': '',
    },
    'xv97hc48': {
      'en': ' 22 May 2023',
      'ta': '',
    },
    'ohrzz1ck': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_purchase_page
  {
    '0udw5oga': {
      'en': 'Purchase',
      'ta': '',
    },
    'dp5st60j': {
      'en': 'Qty : ',
      'ta': '',
    },
    'jlru0c8b': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_sold_page
  {
    'c3s92p8h': {
      'en': 'Sold',
      'ta': '',
    },
    'yzhec1g9': {
      'en': 'Qty : ',
      'ta': '',
    },
    'cz1en6bn': {
      'en': 'Home',
      'ta': '',
    },
  },
  // inventory_create
  {
    '90jxa1ww': {
      'en': 'Inventory Create',
      'ta': '',
    },
    '6r5nmxpq': {
      'en': 'Product Name',
      'ta': '',
    },
    'xpbdymcq': {
      'en': '',
      'ta': '',
    },
    'ukzia95o': {
      'en': 'Product Name',
      'ta': '',
    },
    '1kjxetak': {
      'en': 'Type',
      'ta': '',
    },
    'm9dxylhm': {
      'en': 'Process',
      'ta': '',
    },
    'a6yayzj5': {
      'en': 'Service',
      'ta': '',
    },
    '3djsfd3v': {
      'en': 'product',
      'ta': '',
    },
    '9bbwnkma': {
      'en': 'Customer Types',
      'ta': '',
    },
    '0dxce59r': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'uklqoxlg': {
      'en': 'Category',
      'ta': '',
    },
    'xzn77p97': {
      'en': 'Category Types',
      'ta': '',
    },
    'g6eoocp4': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'k2m5tmbj': {
      'en': 'Unit of Measures',
      'ta': '',
    },
    '6lxzy7fw': {
      'en': 'Unit of measures',
      'ta': '',
    },
    '8nftzl1b': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'kl86damd': {
      'en': 'HSN Code',
      'ta': '',
    },
    'ej59nqux': {
      'en': '',
      'ta': '',
    },
    'ks76oyg9': {
      'en': 'HSN Code',
      'ta': '',
    },
    'te22jdux': {
      'en': 'Can be Sold',
      'ta': '',
    },
    'zggb5o6s': {
      'en': 'Can Be Purchase',
      'ta': '',
    },
    'mocikwz3': {
      'en': 'Sold Price',
      'ta': '',
    },
    'sxsun1mc': {
      'en': '',
      'ta': '',
    },
    'f1ycffba': {
      'en': 'Sold Price',
      'ta': '',
    },
    'tsp7tppv': {
      'en': 'Upload',
      'ta': '',
    },
    'j9uieb5f': {
      'en': 'Save',
      'ta': '',
    },
    'vn5pmc9m': {
      'en': 'Product Name is required',
      'ta': '',
    },
    'imc7naoh': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'f6thgx2m': {
      'en': 'Field is required',
      'ta': '',
    },
    'ovlucpj6': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '67300ukb': {
      'en': 'Field is required',
      'ta': '',
    },
    'j1a0rq86': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '4w38fuvm': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Equipment_view
  {
    '5cei3ev0': {
      'en': 'Qty :  ',
      'ta': '',
    },
    'nwvi9abg': {
      'en': 'Units : ',
      'ta': '',
    },
    'z89cu0mw': {
      'en': 'Home',
      'ta': '',
    },
  },
  // MyActivityCalendar
  {
    '98d9km3b': {
      'en': 'Events',
      'ta': '',
    },
    'w549wfqo': {
      'en': 'My Activity',
      'ta': '',
    },
    't3qixr23': {
      'en': 'Home',
      'ta': '',
    },
  },
  // GRN_create_page
  {
    'zdoa7lp7': {
      'en': 'Partner',
      'ta': '',
    },
    'vnke5syj': {
      'en': 'Purchase requisations',
      'ta': '',
    },
    'btc7xkyw': {
      'en': 'Source Location',
      'ta': '',
    },
    '5untbtgp': {
      'en': 'Customer',
      'ta': '',
    },
    '3sllints': {
      'en': 'Source Location',
      'ta': '',
    },
    'g4y6z7ih': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'ee73upuq': {
      'en': 'Destination Location',
      'ta': '',
    },
    '754vec85': {
      'en': 'Customer',
      'ta': '',
    },
    '0n8q3pjq': {
      'en': 'Destination Location',
      'ta': '',
    },
    'mdqlfru2': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'af51m77v': {
      'en': 'Shedule Date',
      'ta': '',
    },
    'w2gx1lv2': {
      'en': 'Add Items',
      'ta': '',
    },
    'ludzxv6g': {
      'en': 'GRN Items',
      'ta': '',
    },
    'uty32id4': {
      'en': 'Save',
      'ta': '',
    },
    'sadpoxzl': {
      'en': 'Create GRN',
      'ta': '',
    },
    'kakx410i': {
      'en': 'Home',
      'ta': '',
    },
  },
  // WorkOrderList
  {
    'lzn7ldk7': {
      'en': 'Duration Expected :  ',
      'ta': '',
    },
    'u1mc44zj': {
      'en': 'HealthAi',
      'ta': '',
    },
    'xlin1338': {
      'en': 'Client Acquisition for Q3',
      'ta': '',
    },
    'rxfmebov': {
      'en': 'Next Action',
      'ta': '',
    },
    'ftq862lf': {
      'en': 'Tuesday, 10:00am',
      'ta': '',
    },
    'l9y8iv19': {
      'en': 'In Progress',
      'ta': '',
    },
    'az95vrii': {
      'en': 'WorkOrder List',
      'ta': '',
    },
    'z8ng542t': {
      'en': 'Project',
      'ta': '',
    },
  },
  // Pick_create_page
  {
    '6yrizb3e': {
      'en': 'Purchase requisations',
      'ta': '',
    },
    'pzwm8pdd': {
      'en': 'Customer',
      'ta': '',
    },
    'gliwwmbl': {
      'en': 'Purchase',
      'ta': '',
    },
    '2paptjmv': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'mkv0e2zx': {
      'en': 'Purchase order',
      'ta': '',
    },
    '8q70dopm': {
      'en': 'Sale Order',
      'ta': '',
    },
    'ty879mc4': {
      'en': 'Source Location',
      'ta': '',
    },
    'vvkx9ggx': {
      'en': 'Customer',
      'ta': '',
    },
    '0pywmmxi': {
      'en': 'Source Location',
      'ta': '',
    },
    '4ni5zmiw': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'lb1lnxbv': {
      'en': 'Destination Location',
      'ta': '',
    },
    'gi28rqvj': {
      'en': 'Customer',
      'ta': '',
    },
    'kzlxc3dr': {
      'en': 'Destination Location',
      'ta': '',
    },
    '56j1ed2p': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '5nh1z3p6': {
      'en': 'Shedule Date',
      'ta': '',
    },
    'g2d9ed4u': {
      'en': 'Add Items',
      'ta': '',
    },
    'smbdu8bn': {
      'en': 'GRN Items',
      'ta': '',
    },
    'ft5lfbl1': {
      'en': 'Save',
      'ta': '',
    },
    'fgj02f29': {
      'en': 'Create Picking',
      'ta': '',
    },
    '3c8ad195': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Pick_list_page
  {
    'nt8yizbx': {
      'en': 'Picking',
      'ta': '',
    },
    '4t9aan0i': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Pick_view_Page
  {
    'rhjd9wyi': {
      'en': 'GRN Number',
      'ta': '',
    },
    'k3mp5y5b': {
      'en': ':',
      'ta': '',
    },
    'vttntdgn': {
      'en': 'Partner',
      'ta': '',
    },
    'l48njc1q': {
      'en': ':',
      'ta': '',
    },
    '6qz00cax': {
      'en': 'Date',
      'ta': '',
    },
    'gaxvbwxs': {
      'en': ':',
      'ta': '',
    },
    't5tzrdgy': {
      'en': 'Operation Type',
      'ta': '',
    },
    'c4tcopin': {
      'en': ':',
      'ta': '',
    },
    '7ioluxmi': {
      'en': 'Initial Demand',
      'ta': '',
    },
    'fc6aavg2': {
      'en': ':',
      'ta': '',
    },
    '9l8y2iqs': {
      'en': 'QTY',
      'ta': '',
    },
    '7aqzuhwr': {
      'en': ':',
      'ta': '',
    },
    'ljeolhk2': {
      'en': 'Home',
      'ta': '',
    },
  },
  // WorkOrderDetails
  {
    'gyygo93j': {
      'en': 'Manufacturing ',
      'ta': '',
    },
    'cbxsqywj': {
      'en': 'Work Center',
      'ta': '',
    },
    '9dw7wguo': {
      'en': 'Date Assign',
      'ta': '',
    },
    'ex9hdpqu': {
      'en': 'Planned Hours',
      'ta': '',
    },
    'zmsplo8b': {
      'en': 'Cunsumption',
      'ta': '',
    },
    'ului8xed': {
      'en': 'Dead Line',
      'ta': '',
    },
    'qinwnq74': {
      'en': 'Worked Hours',
      'ta': '',
    },
    'cka2ds8w': {
      'en': 'Start',
      'ta': '',
    },
    'g7fw6x7j': {
      'en': 'Stop',
      'ta': '',
    },
    '4ld5nlm4': {
      'en': 'Home',
      'ta': '',
    },
  },
  // LeaveRequestList
  {
    '5p230w29': {
      'en': 'Leave Requests',
      'ta': '',
    },
    '5yf5q4fp': {
      'en': 'Days : ',
      'ta': '',
    },
    'xajzurp9': {
      'en': 'Leave',
      'ta': 'வீடு',
    },
  },
  // CEO_Dashboard
  {
    'lqtiqjjp': {
      'en': 'Last 1 month',
      'ta': '',
    },
    'mfupbwgm': {
      'en': 'Last 3 month',
      'ta': '',
    },
    'on5r7xmo': {
      'en': 'Last 6 month',
      'ta': '',
    },
    's9hh1i6t': {
      'en': 'Last 1 year',
      'ta': '',
    },
    'd8ptsymt': {
      'en': 'Custom',
      'ta': '',
    },
    'sptj5dbz': {
      'en': '1',
      'ta': '',
    },
    'vpcvnzn0': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'zbgsyr00': {
      'en': 'Opportunity',
      'ta': '',
    },
    'mh2oetg3': {
      'en': 'Quotations',
      'ta': '',
    },
    'n5i42ani': {
      'en': 'Sale Orders',
      'ta': '',
    },
    'qe3dbokj': {
      'en': 'Invoices',
      'ta': '',
    },
    'hq16iqum': {
      'en': 'Purchase Order',
      'ta': '',
    },
    '6a6sh21u': {
      'en': 'Payment Receipt',
      'ta': '',
    },
    '7jrgikt1': {
      'en': 'Vendor Bills',
      'ta': '',
    },
    'k8kwl1f1': {
      'en': 'Expenses',
      'ta': '',
    },
    '10hi73kl': {
      'en': 'CEO Dashboard',
      'ta': '',
    },
    'x4kjbt7r': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ManufacturingOrder
  {
    'k789o5su': {
      'en': 'WorkOrder : ',
      'ta': '',
    },
    'vmzq3cz6': {
      'en': 'Start Date  :  ',
      'ta': '',
    },
    'nd9k1roz': {
      'en': 'HealthAi',
      'ta': '',
    },
    'k8tc95bh': {
      'en': 'Client Acquisition for Q3',
      'ta': '',
    },
    '9iqm4wmb': {
      'en': 'Next Action',
      'ta': '',
    },
    'm3ghuvc8': {
      'en': 'Tuesday, 10:00am',
      'ta': '',
    },
    'p2vrl2zh': {
      'en': 'In Progress',
      'ta': '',
    },
    'zv3dvtsu': {
      'en': 'Manufacturing List',
      'ta': '',
    },
    'l95f4i77': {
      'en': 'Project',
      'ta': '',
    },
  },
  // ManufacturingDetails
  {
    'kz1vpa0e': {
      'en': 'Task : ',
      'ta': '',
    },
    'wj7ozhk5': {
      'en': 'Start Date  :  ',
      'ta': '',
    },
    'kh58iujq': {
      'en': 'WorkOrder',
      'ta': '',
    },
    '5v6f088f': {
      'en': 'Contract Details',
      'ta': '',
    },
    '6987arde': {
      'en': '\$67,000',
      'ta': '',
    },
    '7g4jxllb': {
      'en':
          'Additional Details around this contract and who is working on it in this card!',
      'ta': '',
    },
    'xumc4wel': {
      'en': 'Mark as Complete',
      'ta': '',
    },
    'oehctrh6': {
      'en': 'Products',
      'ta': '',
    },
    '76w3oows': {
      'en': 'user@domain.com',
      'ta': '',
    },
    'u9focm13': {
      'en': 'Home',
      'ta': '',
    },
  },
  // PurchaseDashboardList
  {
    'fchasb6p': {
      'en': 'Amount : ',
      'ta': '',
    },
    '2kv4fbi4': {
      'en': 'Count : ',
      'ta': '',
    },
    '37rr6spj': {
      'en': 'Purchase List',
      'ta': '',
    },
    '1x2eas42': {
      'en': 'Purchase',
      'ta': '',
    },
    'qqi5pgke': {
      'en': 'Home',
      'ta': '',
    },
  },
  // GRNPick_view_Page
  {
    'sniyeyvr': {
      'en': 'GRN Number',
      'ta': '',
    },
    'y56obx45': {
      'en': ':',
      'ta': '',
    },
    'nawsirlz': {
      'en': 'QTY',
      'ta': '',
    },
    'nea199cj': {
      'en': ':',
      'ta': '',
    },
    'rvjhvg0k': {
      'en': 'Home',
      'ta': '',
    },
  },
  // OpportunityDashboardList
  {
    '12x6c4ck': {
      'en': 'Opportunity',
      'ta': '',
    },
    'nvatpbzp': {
      'en': 'Amount : ',
      'ta': '',
    },
    'gtbux1v8': {
      'en': 'Count : ',
      'ta': '',
    },
    'hl95o18w': {
      'en': 'Opportunity List',
      'ta': '',
    },
    '6a5vhy86': {
      'en': 'Home',
      'ta': '',
    },
  },
  // QuotationDashboard
  {
    'po9kljjr': {
      'en': 'Amount : ',
      'ta': '',
    },
    'h8phh7yo': {
      'en': 'Count : ',
      'ta': '',
    },
    'aewrvj96': {
      'en': 'Quotation List',
      'ta': '',
    },
    'itq2qm95': {
      'en': 'Quotation',
      'ta': '',
    },
    '3soti2ew': {
      'en': 'Home',
      'ta': '',
    },
  },
  // SalelistDashboard
  {
    'xqpocrw5': {
      'en': 'Amount : ',
      'ta': '',
    },
    'sbxo7wqz': {
      'en': 'Count : ',
      'ta': '',
    },
    '9ah0ox4w': {
      'en': 'Sale List',
      'ta': '',
    },
    't8x40zn5': {
      'en': 'Sale',
      'ta': '',
    },
    'o8fgaxdd': {
      'en': 'Home',
      'ta': '',
    },
  },
  // InvoiceDashboard
  {
    'fe5lvj0n': {
      'en': 'Amount : ',
      'ta': '',
    },
    '3sub3p54': {
      'en': 'Count : ',
      'ta': '',
    },
    '3jz9548h': {
      'en': 'Invoice List',
      'ta': '',
    },
    'phqq0owa': {
      'en': 'Invoice',
      'ta': '',
    },
    '0dgqstxp': {
      'en': 'Home',
      'ta': '',
    },
  },
  // PaymentDashboard
  {
    '45k56m0k': {
      'en': 'Amount : ',
      'ta': '',
    },
    'lqi37mb0': {
      'en': 'Count : ',
      'ta': '',
    },
    's9grfdjc': {
      'en': 'Payment List',
      'ta': '',
    },
    'lacios7d': {
      'en': 'Payment',
      'ta': '',
    },
    'i7xpujcq': {
      'en': 'Home',
      'ta': '',
    },
  },
  // ExpenseDashboard
  {
    '6ulo9j6v': {
      'en': 'Amount : ',
      'ta': '',
    },
    'q4k39aqx': {
      'en': 'Count : ',
      'ta': '',
    },
    'p8qmikha': {
      'en': 'Expense List',
      'ta': '',
    },
    '50njfn0p': {
      'en': 'Expense',
      'ta': '',
    },
    'c6j51ck0': {
      'en': 'Home',
      'ta': '',
    },
  },
  // DCPick_view_Page
  {
    '502gy1bt': {
      'en': 'DC Number',
      'ta': '',
    },
    'vzmod5s5': {
      'en': ':',
      'ta': '',
    },
    'a4mjnij9': {
      'en': 'QTY',
      'ta': '',
    },
    'qc1q5vxx': {
      'en': ':',
      'ta': '',
    },
    'xwu5sc5s': {
      'en': 'Home',
      'ta': '',
    },
  },
  // VendorDashboard
  {
    'sorn5nhz': {
      'en': 'Amount : ',
      'ta': '',
    },
    'ilkm4li2': {
      'en': 'Count : ',
      'ta': '',
    },
    'cbit0w23': {
      'en': 'Vendor Bill List',
      'ta': '',
    },
    'kucczr1s': {
      'en': 'Vendor Bill',
      'ta': '',
    },
    'th5m7ng1': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Sale_order_delivery_chellan_list
  {
    '6wefxrzt': {
      'en': 'Delivery Challan List',
      'ta': '',
    },
    'jn9ewhp7': {
      'en': 'Home',
      'ta': '',
    },
  },
  // Purchase_order_Grn_list
  {
    '07bfhcdq': {
      'en': 'GRN List',
      'ta': '',
    },
    '02e65r2d': {
      'en': 'Home',
      'ta': '',
    },
  },
  // UnassileadDashboardlist
  {
    'y1ektdyj': {
      'en': 'Value  : ',
      'ta': '',
    },
    '5tdt7xb1': {
      'en': 'Home',
      'ta': '',
    },
  },
  // RequestPartAdd
  {
    '0inqgtzz': {
      'en': 'Request Equipment',
      'ta': '',
    },
    'e4xv55hl': {
      'en': 'Product Name : ',
      'ta': '',
    },
    'pr3o09lv': {
      'en': 'Product',
      'ta': '',
    },
    '4d3ad79i': {
      'en': 'Product',
      'ta': '',
    },
    'ieksj9jw': {
      'en': 'Quantity',
      'ta': '',
    },
    '23ix8u1k': {
      'en': 'Add',
      'ta': '',
    },
    '4n0a4nk2': {
      'en': 'Field is required',
      'ta': '',
    },
    'ppsch3zr': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '49y35ztl': {
      'en': 'Product Name',
      'ta': '',
    },
    'ubifjggp': {
      'en': 'Amazon Fire HD',
      'ta': '',
    },
    'kmc5ugcq': {
      'en': 'Qty',
      'ta': '',
    },
    'bp3zn74l': {
      'en': '1',
      'ta': '',
    },
  },
  // CheckListMenuOptions
  {
    'p8mzfjro': {
      'en': 'View',
      'ta': '',
    },
    'eyktxcxi': {
      'en': 'Edit',
      'ta': '',
    },
  },
  // sideBarProject
  {
    'q5opv9be': {
      'en': 'CRM',
      'ta': '',
    },
    'pg6vt4n6': {
      'en': 'Dashboard',
      'ta': '',
    },
    '1xofnzel': {
      'en': 'Lead',
      'ta': '',
    },
    'resz37gv': {
      'en': 'My Pipleline',
      'ta': '',
    },
    '0o7ajnv5': {
      'en': 'ALL contact',
      'ta': '',
    },
    '0bjl3cio': {
      'en': 'Inventory ',
      'ta': '',
    },
    'g6mlk3ti': {
      'en': 'Inventory',
      'ta': '',
    },
    'e2qvtjqb': {
      'en': 'GRN',
      'ta': '',
    },
    'qbftm75j': {
      'en': 'Delivery chellan',
      'ta': '',
    },
    '2xe2kud2': {
      'en': 'Product Cataloge',
      'ta': '',
    },
    'e7x9cutx': {
      'en': 'Sales ',
      'ta': '',
    },
    'm94stlkf': {
      'en': 'Quotations',
      'ta': '',
    },
    'bv2m010z': {
      'en': 'Sale Orders',
      'ta': '',
    },
    '1bqdbq14': {
      'en': 'Dashboard',
      'ta': '',
    },
    '04rntupn': {
      'en': 'Purchase',
      'ta': '',
    },
    'c0z3pacg': {
      'en': 'RFQ’s',
      'ta': '',
    },
    'vf9xy38q': {
      'en': 'Purchase Orders',
      'ta': '',
    },
    'm29twbn7': {
      'en': 'Accounting',
      'ta': '',
    },
    'j1xg59m9': {
      'en': 'Invoices',
      'ta': '',
    },
    'd7jds03o': {
      'en': 'Vendor Bills',
      'ta': '',
    },
    'u2izzbpp': {
      'en': 'Payments',
      'ta': '',
    },
    'dfv5pn6p': {
      'en': 'Project',
      'ta': '',
    },
    '567y9wxy': {
      'en': 'Dashboard',
      'ta': '',
    },
    'gbhlmly2': {
      'en': 'Projects',
      'ta': '',
    },
    'wg9i4fl8': {
      'en': 'Tasks',
      'ta': '',
    },
    '9ihji8v5': {
      'en': 'Hr',
      'ta': '',
    },
    '7646zrlz': {
      'en': 'Employee ',
      'ta': '',
    },
    'tdbqaamr': {
      'en': 'Attendance',
      'ta': '',
    },
    'ajxvsaoq': {
      'en': 'Expenses',
      'ta': '',
    },
    'edwp6ofb': {
      'en': 'Leave',
      'ta': '',
    },
    'jk36j7b4': {
      'en': 'Manufacturing',
      'ta': '',
    },
    'cl8xgi1d': {
      'en': 'Manufacturing Orders',
      'ta': '',
    },
    'pbimh6gp': {
      'en': 'Work orders',
      'ta': '',
    },
    'd2h9u6ht': {
      'en': 'Settings',
      'ta': '',
    },
    'fb4a1djz': {
      'en': 'Setting',
      'ta': '',
    },
    '19o4p2u9': {
      'en': 'Profile',
      'ta': '',
    },
    'hm1clt7m': {
      'en': 'Logout',
      'ta': '',
    },
  },
  // Noactivity
  {
    'ssp1z15d': {
      'en': 'Recent Activity',
      'ta': '',
    },
    'mceqzs36': {
      'en': 'No Activity Found',
      'ta': '',
    },
  },
  // changelead
  {
    'p0pcjbje': {
      'en': 'Change Opportunity Status',
      'ta': '',
    },
    '9y9tuucv': {
      'en': 'New',
      'ta': '',
    },
    'nz1trfel': {
      'en': 'Qualified',
      'ta': '',
    },
    's9v2sfp5': {
      'en': 'Proposition',
      'ta': '',
    },
    't5dfyh6g': {
      'en': 'Won',
      'ta': '',
    },
    'yai05fs3': {
      'en': 'Please select',
      'ta': '',
    },
    'ju75ft2u': {
      'en': 'Search for an item...',
      'ta': '',
    },
    's9lwynir': {
      'en': 'Change',
      'ta': '',
    },
  },
  // filter
  {
    'fip2ff74': {
      'en': 'Not Started',
      'ta': '',
    },
    'cdqnrfpc': {
      'en': 'In Progress',
      'ta': '',
    },
    'ssoi548f': {
      'en': 'Completed',
      'ta': '',
    },
  },
  // expensefilter
  {
    '9xl2h9sv': {
      'en': 'Filter',
      'ta': '',
    },
    '6vaux5a1': {
      'en': 'To Submit',
      'ta': '',
    },
    'bcm7k1ah': {
      'en': 'Submitted',
      'ta': '',
    },
    '0cyd5brm': {
      'en': 'Approved',
      'ta': '',
    },
    'tunq7th1': {
      'en': 'Paid',
      'ta': '',
    },
    '2jer4vik': {
      'en': 'Refused',
      'ta': '',
    },
  },
  // filterproject
  {
    '741pdqbz': {
      'en': 'Approved',
      'ta': '',
    },
    'v1qr7g9w': {
      'en': 'Refused',
      'ta': '',
    },
    'auc69101': {
      'en': 'Done',
      'ta': '',
    },
    'fml7hiiu': {
      'en': 'Reported',
      'ta': '',
    },
  },
  // searchLead
  {
    'dpvno92p': {
      'en': 'Search...',
      'ta': '',
    },
    'acn6p3e0': {
      'en': 'Value  : ',
      'ta': '',
    },
  },
  // SearchProject
  {
    'fe5rukkn': {
      'en': '',
      'ta': '',
    },
    '9w4a9vel': {
      'en': 'Search...',
      'ta': '',
    },
    'x5si26hc': {
      'en': 'Task :  ',
      'ta': '',
    },
    'o2g3fjwy': {
      'en': 'Due Date  :  ',
      'ta': '',
    },
  },
  // SearchExpenses
  {
    'qre2az7i': {
      'en': 'Search...',
      'ta': '',
    },
    'bb3q02f8': {
      'en': 'Paid',
      'ta': '',
    },
  },
  // tasksearch
  {
    '8emx6s4d': {
      'en': 'Search...',
      'ta': '',
    },
    'bpk4yr17': {
      'en': 'Project : ',
      'ta': '',
    },
    'nf63csjr': {
      'en': 'Deadline : ',
      'ta': '',
    },
  },
  // TaskStatusChange
  {
    'x7xop2nt': {
      'en': 'Change Status',
      'ta': '',
    },
    '1bwt1tkq': {
      'en': 'Option 1',
      'ta': '',
    },
    'g8t9133r': {
      'en': 'Please select',
      'ta': '',
    },
    'j2of1j6q': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'aid6zm1u': {
      'en': 'Change',
      'ta': '',
    },
  },
  // mobile_menu_container
  {
    '3lidac25': {
      'en': '2',
      'ta': '',
    },
    'btvujuy1': {
      'en': 'Home',
      'ta': '',
    },
    'ac9gii44': {
      'en': ' Contacts',
      'ta': '',
    },
    'df48l5q4': {
      'en': ' Chat ',
      'ta': '',
    },
    'jx5s8rm5': {
      'en': ' Calendar',
      'ta': '',
    },
    'jkpp8qmr': {
      'en': ' Apps',
      'ta': '',
    },
    'po5gfpax': {
      'en': ' Inventory ',
      'ta': '',
    },
    'cvpshvhl': {
      'en': ' Inventory ',
      'ta': '',
    },
    'dswan1ua': {
      'en': ' GRN ',
      'ta': '',
    },
    '4ri80frb': {
      'en': ' Delivery Challan ',
      'ta': '',
    },
    'r278ikpb': {
      'en': ' Sales',
      'ta': '',
    },
    'exeashk4': {
      'en': ' Quotations ',
      'ta': '',
    },
    'f8e6g6dw': {
      'en': ' Sale Orders ',
      'ta': '',
    },
    'g17xouon': {
      'en': ' Purchase ',
      'ta': '',
    },
    '37076ukm': {
      'en': ' RFQ`s',
      'ta': '',
    },
    'rnr90z4v': {
      'en': ' Purchase Orders ',
      'ta': '',
    },
    'hn29ccvi': {
      'en': ' Accounting',
      'ta': '',
    },
    '30ujy767': {
      'en': ' Invoices',
      'ta': '',
    },
    'ezp2ilqd': {
      'en': ' Vendor Bills ',
      'ta': '',
    },
    '3nv0vzp4': {
      'en': ' Payments',
      'ta': '',
    },
    '1hqibgfq': {
      'en': ' Expenses',
      'ta': '',
    },
    'op1vhb82': {
      'en': ' CRM',
      'ta': '',
    },
    'tjcvon5t': {
      'en': ' Lead ',
      'ta': '',
    },
    '77k2etfc': {
      'en': ' Task',
      'ta': '',
    },
    '49cpquq0': {
      'en': ' Services',
      'ta': '',
    },
    'fhffylxp': {
      'en': ' Service',
      'ta': '',
    },
    '4v9ze3jq': {
      'en': ' Manufacturing ',
      'ta': '',
    },
    '78vbxkx2': {
      'en': ' Manufature Order ',
      'ta': '',
    },
    '0c8qgqbc': {
      'en': ' Work Order ',
      'ta': '',
    },
    'p8a0ol86': {
      'en': 'Work Center',
      'ta': '',
    },
    'mgs38lj3': {
      'en': ' Settings ',
      'ta': '',
    },
    'oenhvuvs': {
      'en': 'Logout',
      'ta': '',
    },
  },
  // TaxSelectComponent
  {
    'u24pssa6': {
      'en': 'Search for Taxes..',
      'ta': '',
    },
  },
  // Quotation_Edit_Edit_item
  {
    'fd8wllj8': {
      'en': 'Edit Item',
      'ta': '',
    },
    'r0e8qa5j': {
      'en': 'This item is alredy existed in list',
      'ta': '',
    },
    '1qlifepp': {
      'en': 'Product Name',
      'ta': '',
    },
    '0izhf7v1': {
      'en': '',
      'ta': '',
    },
    'vu08mk4h': {
      'en': 'Product',
      'ta': '',
    },
    'xclz3xl2': {
      'en': 'Description',
      'ta': '',
    },
    'pvjxto2d': {
      'en': '',
      'ta': '',
    },
    'qg0uf924': {
      'en': 'Description',
      'ta': '',
    },
    'eda3hefu': {
      'en': 'Quantity',
      'ta': '',
    },
    'cuebqpe0': {
      'en': '',
      'ta': '',
    },
    '4r397vag': {
      'en': 'Quantity',
      'ta': '',
    },
    'nyk9l8ew': {
      'en': 'Units',
      'ta': '',
    },
    '5spvd4wl': {
      'en': '',
      'ta': '',
    },
    '8l261bzs': {
      'en': 'Units',
      'ta': '',
    },
    'z4jrgl1b': {
      'en': 'Tax',
      'ta': '',
    },
    'vhtiqg1t': {
      'en': 'Amount',
      'ta': '',
    },
    'w5lumc3z': {
      'en': '',
      'ta': '',
    },
    'syx0n24j': {
      'en': 'Amount',
      'ta': '',
    },
    'hkglgbuo': {
      'en': 'Sub Total',
      'ta': '',
    },
    't7u1zao4': {
      'en': '',
      'ta': '',
    },
    '4rtydslj': {
      'en': 'Sub Total',
      'ta': '',
    },
    'h16q7n2o': {
      'en': 'Total',
      'ta': '',
    },
    'gq29yh0k': {
      'en': 'Save',
      'ta': '',
    },
    'lx9xn3fa': {
      'en': 'Save & New',
      'ta': '',
    },
    '7v6fdas1': {
      'en': 'Field is required',
      'ta': '',
    },
    'yhv5mlel': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '45erkivj': {
      'en': 'Field is required',
      'ta': '',
    },
    'k6bg4fl4': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'bihwzpg9': {
      'en': 'Field is required',
      'ta': '',
    },
    'c4r868w8': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'kd3ourf7': {
      'en': 'Field is required',
      'ta': '',
    },
    'xnw59f5v': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '9ieu0c64': {
      'en': 'Field is required',
      'ta': '',
    },
    'qpdy6kd0': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'uzr74yxd': {
      'en': 'Field is required',
      'ta': '',
    },
    'efgz00fv': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Quotation_Edit_Add_item
  {
    'anvqehht': {
      'en': 'Add Items',
      'ta': '',
    },
    'k3wm4nik': {
      'en': 'Product Name',
      'ta': '',
    },
    'wxfxkom3': {
      'en': '',
      'ta': '',
    },
    'e5trarzr': {
      'en': 'Product',
      'ta': '',
    },
    't7rf87ia': {
      'en': 'Description',
      'ta': '',
    },
    'hlh77g1q': {
      'en': '',
      'ta': '',
    },
    'w8sljnc4': {
      'en': 'Description',
      'ta': '',
    },
    'q0idtsk4': {
      'en': 'Quantity',
      'ta': '',
    },
    '5ukm5fz3': {
      'en': '',
      'ta': '',
    },
    'fpzc8vif': {
      'en': 'Quantity',
      'ta': '',
    },
    'roiltjwz': {
      'en': 'Units',
      'ta': '',
    },
    '5nu4ukzv': {
      'en': '',
      'ta': '',
    },
    'dierrylh': {
      'en': 'Units',
      'ta': '',
    },
    '0elgsx2z': {
      'en': 'Tax',
      'ta': '',
    },
    'a2ezj06y': {
      'en': 'Amount',
      'ta': '',
    },
    'i4ekchdr': {
      'en': '',
      'ta': '',
    },
    'msynv4iq': {
      'en': 'Amount',
      'ta': '',
    },
    'j1g1xeqk': {
      'en': 'Sub Total',
      'ta': '',
    },
    '9prnbdja': {
      'en': '',
      'ta': '',
    },
    'adys6wva': {
      'en': 'Sub Total',
      'ta': '',
    },
    '6d6wxz8a': {
      'en': 'Total',
      'ta': '',
    },
    'jljp5cxn': {
      'en': 'Save',
      'ta': '',
    },
    'egb3emxw': {
      'en': 'Save & New',
      'ta': '',
    },
    'h6cokbjs': {
      'en': 'Field is required',
      'ta': '',
    },
    'rg17enak': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'blfi2rcl': {
      'en': 'Field is required',
      'ta': '',
    },
    'ps820rof': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '2vql3s2i': {
      'en': 'Field is required',
      'ta': '',
    },
    'gamvk71t': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'p5b6zisg': {
      'en': 'Field is required',
      'ta': '',
    },
    'ish1gtuw': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'vjioe2r9': {
      'en': 'Field is required',
      'ta': '',
    },
    'rb1586bl': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'zj1i2txf': {
      'en': 'Field is required',
      'ta': '',
    },
    'h8cyeffs': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Common_Create_Product_Search
  {
    'hz71gebp': {
      'en': '',
      'ta': '',
    },
    'nr42jun3': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // TaxComponent
  {
    'oyys6zwe': {
      'en': 'Add Tax',
      'ta': '',
    },
  },
  // RFQ_Edit_Edit_item
  {
    'qhk5d9pv': {
      'en': 'Edit Items',
      'ta': '',
    },
    'vw3nginx': {
      'en': 'Product',
      'ta': '',
    },
    'bakpw5do': {
      'en': '',
      'ta': '',
    },
    '4uopemnp': {
      'en': 'Product',
      'ta': '',
    },
    '9hdp6b9i': {
      'en': 'Description',
      'ta': '',
    },
    'hzwswl6r': {
      'en': '',
      'ta': '',
    },
    '7evgyml7': {
      'en': 'Enter The Description',
      'ta': '',
    },
    'y2c61vcb': {
      'en': 'Quantity',
      'ta': '',
    },
    '7k56y9n1': {
      'en': '',
      'ta': '',
    },
    'ynyr39n5': {
      'en': 'Quantity',
      'ta': '',
    },
    'he0jjrje': {
      'en': 'Units',
      'ta': '',
    },
    '1vvb8dnr': {
      'en': '',
      'ta': '',
    },
    'hi4g91yr': {
      'en': 'Units',
      'ta': '',
    },
    'l0r11uqe': {
      'en': 'Amount',
      'ta': '',
    },
    'qsuvje98': {
      'en': '',
      'ta': '',
    },
    'j8gicc45': {
      'en': 'Amount',
      'ta': '',
    },
    '87r54e9u': {
      'en': 'Sub Total',
      'ta': '',
    },
    '1v1agst7': {
      'en': '',
      'ta': '',
    },
    'qvpczymm': {
      'en': 'Sub Total',
      'ta': '',
    },
    '95pdm7km': {
      'en': 'Total',
      'ta': '',
    },
    'cg78pdk0': {
      'en': 'Save',
      'ta': '',
    },
    'bc2ae45b': {
      'en': 'Save & New',
      'ta': '',
    },
    'pjpb101u': {
      'en': 'Field is required',
      'ta': '',
    },
    'g3ympumm': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'hrjep8y5': {
      'en': 'Field is required',
      'ta': '',
    },
    'ehkcxgz6': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'ip4f1znt': {
      'en': 'Field is required',
      'ta': '',
    },
    '6c5y9cxm': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'b8dyd0bf': {
      'en': 'Field is required',
      'ta': '',
    },
    '0qxhi8ll': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'qhtywas9': {
      'en': 'Field is required',
      'ta': '',
    },
    'uotybb66': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'kji9uoqt': {
      'en': 'Field is required',
      'ta': '',
    },
    'k1ezgkc9': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // RFQ_Edit_Add_item
  {
    'mt7vu6h8': {
      'en': 'Add Items',
      'ta': '',
    },
    'ktqgihtu': {
      'en': 'Product Name',
      'ta': '',
    },
    '6rkq3l1p': {
      'en': '',
      'ta': '',
    },
    'm4zpv3wp': {
      'en': 'Product',
      'ta': '',
    },
    'icwi8g3d': {
      'en': 'Description',
      'ta': '',
    },
    'k6igr619': {
      'en': '',
      'ta': '',
    },
    'eukmpijv': {
      'en': ' Description',
      'ta': '',
    },
    'i30xb5uw': {
      'en': 'Quantity',
      'ta': '',
    },
    'ezijvgj3': {
      'en': '',
      'ta': '',
    },
    'zea8hag4': {
      'en': 'Quantity',
      'ta': '',
    },
    'jrybz8p0': {
      'en': 'Units',
      'ta': '',
    },
    '2dh9p38u': {
      'en': '',
      'ta': '',
    },
    '0c7q0alq': {
      'en': 'Units',
      'ta': '',
    },
    'mswflvql': {
      'en': 'Tax',
      'ta': '',
    },
    'qbz5i169': {
      'en': 'Amount',
      'ta': '',
    },
    'idflzvx1': {
      'en': '',
      'ta': '',
    },
    'c471c5lt': {
      'en': 'Amount',
      'ta': '',
    },
    'ieqt3nuy': {
      'en': 'Sub Total',
      'ta': '',
    },
    'gkvnupm9': {
      'en': '',
      'ta': '',
    },
    'sqjt5sio': {
      'en': 'Sub Total',
      'ta': '',
    },
    'd1h6k3fo': {
      'en': 'Total',
      'ta': '',
    },
    'igmghgn8': {
      'en': 'Save',
      'ta': '',
    },
    'kz50m9s4': {
      'en': 'Save & New',
      'ta': '',
    },
    'lvchtpjx': {
      'en': 'Field is required',
      'ta': '',
    },
    '5urbjy9i': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'er6znmk6': {
      'en': 'Field is required',
      'ta': '',
    },
    'fbjiwedw': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '52vg0xyu': {
      'en': 'Field is required',
      'ta': '',
    },
    'zwubcwz7': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'xdianjey': {
      'en': 'Field is required',
      'ta': '',
    },
    'qd6n1pjl': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'rvqpeu1g': {
      'en': 'Field is required',
      'ta': '',
    },
    'rgb5i2g7': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'gu6wgbkb': {
      'en': 'Field is required',
      'ta': '',
    },
    'ta5jvsj2': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Invoice_Edit_Edit_item
  {
    'svfzw8a1': {
      'en': 'Edit Items',
      'ta': '',
    },
    'vcq2awak': {
      'en': 'This item is alredy existed in list',
      'ta': '',
    },
    '3cu4192t': {
      'en': 'Product',
      'ta': '',
    },
    'fcpzsbv3': {
      'en': '',
      'ta': '',
    },
    'vruliu9f': {
      'en': 'Product',
      'ta': '',
    },
    'kvrvfl6f': {
      'en': 'Description',
      'ta': '',
    },
    'qxqasmoh': {
      'en': '',
      'ta': '',
    },
    'k5d6cnnu': {
      'en': 'Description',
      'ta': '',
    },
    'den57j9g': {
      'en': 'Quantity',
      'ta': '',
    },
    'uawem9k1': {
      'en': '',
      'ta': '',
    },
    '4a8vwlzn': {
      'en': 'Quantity',
      'ta': '',
    },
    'fhhnnyb6': {
      'en': 'Units',
      'ta': '',
    },
    'fvwcgbtd': {
      'en': '',
      'ta': '',
    },
    '3k02500u': {
      'en': 'Units',
      'ta': '',
    },
    'cfbg6q1p': {
      'en': 'Tax',
      'ta': '',
    },
    'lvub6pza': {
      'en': 'Amount',
      'ta': '',
    },
    'o8q7xv1o': {
      'en': '',
      'ta': '',
    },
    'y5oa4xtd': {
      'en': 'Amount',
      'ta': '',
    },
    '3x4n5zdf': {
      'en': 'Sub Total',
      'ta': '',
    },
    'n8ekecn8': {
      'en': '',
      'ta': '',
    },
    '7365a04u': {
      'en': 'Sub Total',
      'ta': '',
    },
    'w071g6qx': {
      'en': 'Total',
      'ta': '',
    },
    'een07oi0': {
      'en': 'Save',
      'ta': '',
    },
    '2nz1phjf': {
      'en': 'Save & New',
      'ta': '',
    },
    'xa3dwe1s': {
      'en': 'Field is required',
      'ta': '',
    },
    '639xcwp8': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'r6rh0job': {
      'en': 'Field is required',
      'ta': '',
    },
    'llcebqle': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '23d623yb': {
      'en': 'Quantity is required',
      'ta': '',
    },
    'rzvj1p1x': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '4jbrgc7n': {
      'en': 'Field is required',
      'ta': '',
    },
    'c94dkdkn': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'ebuxn5gi': {
      'en': 'Amount is required',
      'ta': '',
    },
    'wf15iyrw': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'ytfqhh81': {
      'en': 'Field is required',
      'ta': '',
    },
    'zw9m4w4k': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Invoice_Edit_Add_item
  {
    '9lktd4o6': {
      'en': 'Add Items',
      'ta': '',
    },
    'a4rxfuqq': {
      'en': 'Product Name',
      'ta': '',
    },
    'sm8srxq7': {
      'en': '',
      'ta': '',
    },
    'ari2izsu': {
      'en': 'Product Name',
      'ta': '',
    },
    '8iajw80m': {
      'en': 'Description',
      'ta': '',
    },
    '753p31ap': {
      'en': '',
      'ta': '',
    },
    'zi2snvjn': {
      'en': 'Description',
      'ta': '',
    },
    'vhe1ltxf': {
      'en': 'Quantity',
      'ta': '',
    },
    '271tj8kj': {
      'en': '',
      'ta': '',
    },
    '8zktapsr': {
      'en': 'Quantity',
      'ta': '',
    },
    '2sr786p9': {
      'en': 'Units',
      'ta': '',
    },
    'yheh71sy': {
      'en': '',
      'ta': '',
    },
    'sg2aj0t5': {
      'en': 'Units',
      'ta': '',
    },
    'y4ihq6n3': {
      'en': 'Tax',
      'ta': '',
    },
    'upwtc25v': {
      'en': 'Amount',
      'ta': '',
    },
    '3b7wkbof': {
      'en': '',
      'ta': '',
    },
    'm747y3nd': {
      'en': 'Amount',
      'ta': '',
    },
    'xr0pvu0l': {
      'en': 'Sub Total',
      'ta': '',
    },
    '2m6hir2e': {
      'en': '',
      'ta': '',
    },
    'e4lpprk3': {
      'en': 'Sub Total',
      'ta': '',
    },
    'hry8m05d': {
      'en': 'Total',
      'ta': '',
    },
    'lyv1uyo0': {
      'en': 'Save',
      'ta': '',
    },
    'ckppwu13': {
      'en': 'Save & New',
      'ta': '',
    },
    '9tosm52c': {
      'en': 'Field is required',
      'ta': '',
    },
    '8r9ciq1y': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'bjmf756u': {
      'en': 'Field is required',
      'ta': '',
    },
    'ouijkxtn': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'hle6pu1t': {
      'en': 'Field is required',
      'ta': '',
    },
    'qpzyghzl': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'b0zgohv9': {
      'en': 'Field is required',
      'ta': '',
    },
    'm9j02cud': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'yw6g4i1e': {
      'en': 'Field is required',
      'ta': '',
    },
    'ztrkv6fc': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'pp366ghj': {
      'en': 'Field is required',
      'ta': '',
    },
    'bnhedz2d': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // VendorBill_Edit_Add_item
  {
    'fy8dyhze': {
      'en': 'Add Items',
      'ta': '',
    },
    '6lbrbt8t': {
      'en': 'Product',
      'ta': '',
    },
    '708zzcnm': {
      'en': '',
      'ta': '',
    },
    'r72htl21': {
      'en': 'Enter The Product Name',
      'ta': '',
    },
    'rq4nuig6': {
      'en': 'Description',
      'ta': '',
    },
    'q3jtvnnm': {
      'en': '',
      'ta': '',
    },
    'w4wkum8s': {
      'en': 'Description',
      'ta': '',
    },
    'q5gr3ubj': {
      'en': 'Quantity',
      'ta': '',
    },
    'qqm37y6q': {
      'en': '',
      'ta': '',
    },
    'qkf1mn0y': {
      'en': 'Units',
      'ta': '',
    },
    'arzu1185': {
      'en': '',
      'ta': '',
    },
    'w90saodc': {
      'en': 'Quantity',
      'ta': '',
    },
    'pya8cca0': {
      'en': 'Amount',
      'ta': '',
    },
    '7x7hg6do': {
      'en': '',
      'ta': '',
    },
    'am8q6h7k': {
      'en': 'Sub Total',
      'ta': '',
    },
    'ienfs5gj': {
      'en': '',
      'ta': '',
    },
    'iecpdge2': {
      'en': 'Total',
      'ta': '',
    },
    '1sj0llzb': {
      'en': 'Save',
      'ta': '',
    },
    'ksxdy691': {
      'en': 'Save & New',
      'ta': '',
    },
    'tjhlb77a': {
      'en': 'Field is required',
      'ta': '',
    },
    'd7gdhgqi': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'qpbc1a76': {
      'en': 'Field is required',
      'ta': '',
    },
    '00iexcdp': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'hkgzg6gw': {
      'en': 'Quantity  is required',
      'ta': '',
    },
    'pclfy31y': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'dmhyfku3': {
      'en': 'Field is required',
      'ta': '',
    },
    '2qri3csf': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '25v5qza6': {
      'en': 'Amount is required',
      'ta': '',
    },
    'b0t9lab2': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'fdql35k9': {
      'en': 'Subtotal is required',
      'ta': '',
    },
    'slwwazoa': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // VendorBill_Edit_Edit_item
  {
    '5kkhn7eu': {
      'en': 'Edit Items',
      'ta': '',
    },
    'pythom96': {
      'en': 'This item is alredy existed in list',
      'ta': '',
    },
    '2ou6orzx': {
      'en': 'Product',
      'ta': '',
    },
    'g6up9k9j': {
      'en': '',
      'ta': '',
    },
    'theq8edg': {
      'en': 'Description',
      'ta': '',
    },
    'm137ct38': {
      'en': '',
      'ta': '',
    },
    'pnsnhh0i': {
      'en': 'Quantity',
      'ta': '',
    },
    'lfs0ulrp': {
      'en': '',
      'ta': '',
    },
    '5z87g2ud': {
      'en': 'Units',
      'ta': '',
    },
    'ueiox9qi': {
      'en': '',
      'ta': '',
    },
    '7j5s8ggw': {
      'en': 'Tax',
      'ta': '',
    },
    'wdgfjkh3': {
      'en': 'Amount',
      'ta': '',
    },
    '1v1djj9y': {
      'en': '',
      'ta': '',
    },
    'b7l05fms': {
      'en': 'Sub Total',
      'ta': '',
    },
    'u21lx5k3': {
      'en': '',
      'ta': '',
    },
    'kccdcyhd': {
      'en': 'Total',
      'ta': '',
    },
    'du6t91xo': {
      'en': 'Save',
      'ta': '',
    },
    '8da2welq': {
      'en': 'Save & New',
      'ta': '',
    },
    '6oay027l': {
      'en': 'Field is required',
      'ta': '',
    },
    '5wb81apb': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'gn3m3wsp': {
      'en': 'Field is required',
      'ta': '',
    },
    'gko6q9ia': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '9l9xbc52': {
      'en': 'Field is required',
      'ta': '',
    },
    'kop4n4ge': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'pmq2qxkg': {
      'en': 'Field is required',
      'ta': '',
    },
    '1v7t1us9': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'e16v0zmt': {
      'en': 'Field is required',
      'ta': '',
    },
    'zjoughvo': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '7v3ofiz1': {
      'en': 'Field is required',
      'ta': '',
    },
    '65ovieft': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // sale_order_search
  {
    'gi02wuk0': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // purchase_order_search
  {
    '36shraoh': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // payment_search
  {
    'njaobh13': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // grn_list_search
  {
    'frzcww1o': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // quotation_search
  {
    'n8ha61qe': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // vendor_bill_search
  {
    'fcznrzho': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // delivery_challen_search
  {
    'jkb4o1gg': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // invoice_list_search
  {
    'jvc5g6s7': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // Rfq_search_component
  {
    '1me6scy2': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // CustomerSearchComponent
  {
    'm8uyt4h0': {
      'en': 'Search for customer',
      'ta': '',
    },
    'qe0khq1o': {
      'en': 'Add New Customer',
      'ta': '',
    },
  },
  // filter_quotations
  {
    '3e55ghn6': {
      'en': 'From Date',
      'ta': '',
    },
    'mmx4ny3s': {
      'en': 'To Date',
      'ta': '',
    },
    'e70qqngm': {
      'en': 'Status',
      'ta': '',
    },
    '4elja2to': {
      'en': 'Quotation',
      'ta': '',
    },
    'al45w0qf': {
      'en': 'Quotation Send',
      'ta': '',
    },
    'nt13e2te': {
      'en': 'Cancel',
      'ta': '',
    },
    'taqs42ne': {
      'en': 'Quotation select...',
      'ta': '',
    },
    '4v69bkm3': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'dbqnqsm1': {
      'en': 'Label here...',
      'ta': '',
    },
    'niuu2e9e': {
      'en': 'Label here...',
      'ta': '',
    },
    '8xzxye6a': {
      'en': 'Apply',
      'ta': '',
    },
    'hb4goyjm': {
      'en': 'Field is required',
      'ta': '',
    },
    'xi42tl2q': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // GRN_filter_component
  {
    'cbtu7aac': {
      'en': 'Filter',
      'ta': '',
    },
    'zvmb3pme': {
      'en': 'Draft',
      'ta': '',
    },
    'vuhlz5vr': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    'cdx53pn7': {
      'en': 'Waiting',
      'ta': '',
    },
    '3vs9kume': {
      'en': 'Ready',
      'ta': '',
    },
    'z6gq06si': {
      'en': 'Done',
      'ta': '',
    },
    'tnz2xp3b': {
      'en': 'Cancelled',
      'ta': '',
    },
  },
  // Deliverychallan_filter_component
  {
    'pzi63q4p': {
      'en': 'Filter',
      'ta': '',
    },
    'vwk0qj8v': {
      'en': 'Draft',
      'ta': '',
    },
    'yz1g5ob0': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    'h2lt41vl': {
      'en': 'Waiting',
      'ta': '',
    },
    'iuhc9nqo': {
      'en': 'Ready',
      'ta': '',
    },
    'bjyzubb0': {
      'en': 'Done',
      'ta': '',
    },
    '6zq751cg': {
      'en': 'Cancelled',
      'ta': '',
    },
  },
  // Accounting_invoice_fliter
  {
    '7jusjsqf': {
      'en': 'Filter',
      'ta': '',
    },
    'g72cfsdx': {
      'en': 'Start Date',
      'ta': '',
    },
    'he5fjnjn': {
      'en': 'End  Date',
      'ta': '',
    },
    'imxwtluc': {
      'en': 'Status',
      'ta': '',
    },
    '2o69ivmn': {
      'en': 'Draft',
      'ta': '',
    },
    '2zbi8cap': {
      'en': 'Posted',
      'ta': '',
    },
    'glocfa1h': {
      'en': 'Cancel',
      'ta': '',
    },
    'gq4zkj77': {
      'en': 'Accounting invoice  Select...',
      'ta': '',
    },
    '66fyoxi8': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'n26utlwx': {
      'en': 'Apply',
      'ta': '',
    },
    'bxx3d8rk': {
      'en': 'Field is required',
      'ta': '',
    },
    'jfvu783a': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Accounting_vendorbill_fliter
  {
    'lazttxvt': {
      'en': 'Fillter',
      'ta': '',
    },
    '153gqzze': {
      'en': 'Start Date',
      'ta': '',
    },
    'yop886ul': {
      'en': 'End Date',
      'ta': '',
    },
    '1dk8f7mz': {
      'en': 'Status',
      'ta': '',
    },
    'hwbget2z': {
      'en': 'Draft',
      'ta': '',
    },
    '9f4q2b47': {
      'en': 'Posted',
      'ta': '',
    },
    'bva8voum': {
      'en': 'Cancel',
      'ta': '',
    },
    'r60v1c44': {
      'en': 'Accounting invoice  Select...',
      'ta': '',
    },
    '6pykagu5': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '9xvi81pb': {
      'en': 'Apply',
      'ta': '',
    },
    'sd484fp5': {
      'en': 'Field is required',
      'ta': '',
    },
    'qbkdniv5': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Accounting_payment_fliter
  {
    '1499jwvf': {
      'en': 'Fillter',
      'ta': '',
    },
    't9wo47h2': {
      'en': 'Customer',
      'ta': '',
    },
    '84qdzjgj': {
      'en': 'Supplier',
      'ta': '',
    },
    'qarurm6b': {
      'en': 'Field is required',
      'ta': '',
    },
    'ifyc4k7i': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Service_filter_component
  {
    'nhe5p8bo': {
      'en': 'Fillter',
      'ta': '',
    },
    'oapt8loc': {
      'en': 'Not Started ',
      'ta': '',
    },
    'p1nr8ihk': {
      'en': 'On-Process',
      'ta': '',
    },
    'lxs1q2i9': {
      'en': 'Completed ',
      'ta': '',
    },
    'qgcje9w4': {
      'en': 'Service  select...',
      'ta': '',
    },
    't9bfzil7': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'bwpunlhf': {
      'en': 'Apply',
      'ta': '',
    },
    'cdr9ypqz': {
      'en': 'Field is required',
      'ta': '',
    },
    'xif8k1bq': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Leadfabcomponent
  {
    'f98m56bs': {
      'en': 'Send SMS',
      'ta': '',
    },
    'jx9p3nfj': {
      'en': 'Send Mail',
      'ta': '',
    },
    'fdnm0diw': {
      'en': 'Call Phone',
      'ta': '',
    },
    'zczxqzve': {
      'en': 'Convert To Stages',
      'ta': '',
    },
    'ia5xi05t': {
      'en': 'Edit',
      'ta': '',
    },
  },
  // ContactSelectSearchComponent
  {
    'r7ias5m9': {
      'en': '',
      'ta': '',
    },
    '8vrt7dnu': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // ContactListSearch
  {
    'icb0wxwh': {
      'en': 'Search...',
      'ta': '',
    },
    'bnv0c1us': {
      'en': 'call',
      'ta': '',
    },
  },
  // CountrySearch
  {
    'hac9b2mj': {
      'en': 'Search for Country',
      'ta': '',
    },
  },
  // StateSearch
  {
    '844agmxa': {
      'en': '',
      'ta': '',
    },
    '5g0tlqha': {
      'en': 'Search state',
      'ta': '',
    },
  },
  // Inventory_list_filter
  {
    'jqc10srj': {
      'en': 'Filter',
      'ta': '',
    },
    'xi114hdx': {
      'en': 'Sale',
      'ta': '',
    },
    'e9jprm3f': {
      'en': 'Purchase',
      'ta': '',
    },
    '5zwrbn28': {
      'en': 'Sale & Purchase',
      'ta': '',
    },
  },
  // Inventory_Search
  {
    'vy273lx5': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // Common_Edit_Product_Search
  {
    '1idmdswi': {
      'en': '',
      'ta': '',
    },
    'zkxvjb3h': {
      'en': 'Search',
      'ta': '',
    },
  },
  // SupplierSearchComponent
  {
    'zcnaz7k6': {
      'en': '',
      'ta': '',
    },
    '472kkxd1': {
      'en': 'Search for supplier',
      'ta': '',
    },
  },
  // NotificationList
  {
    'f2pkuzuc': {
      'en': 'Notifications',
      'ta': '',
    },
  },
  // sideBar_new
  {
    '49y5gc0q': {
      'en': 'Home',
      'ta': '',
    },
    '93o3z8sm': {
      'en': 'CRM',
      'ta': '',
    },
    'p41um8bw': {
      'en': 'Project',
      'ta': '',
    },
    'uf2z05lc': {
      'en': 'Sales',
      'ta': '',
    },
    'bkq6ezsc': {
      'en': 'Purchase',
      'ta': '',
    },
    '00xa3vyf': {
      'en': 'Inventory',
      'ta': '',
    },
    'hw3rtizj': {
      'en': 'Accounting',
      'ta': '',
    },
    'vc4h80hp': {
      'en': 'Hr',
      'ta': '',
    },
    '3sx694eh': {
      'en': 'Manufacturing',
      'ta': '',
    },
    'ohm44xs9': {
      'en': 'CRM',
      'ta': '',
    },
    'p9htubok': {
      'en': 'Dashboard',
      'ta': '',
    },
    'ss2le06h': {
      'en': 'Lead',
      'ta': '',
    },
    '2b5vjzcz': {
      'en': 'Opportunity',
      'ta': '',
    },
    'wvczez7w': {
      'en': 'All Contacts',
      'ta': '',
    },
    '2e4nk1om': {
      'en': 'Product Catalog',
      'ta': '',
    },
    'pc0fxlx7': {
      'en': 'My Activity',
      'ta': '',
    },
    '6ommehlt': {
      'en': 'INVENTORY',
      'ta': '',
    },
    'p5dg3mfi': {
      'en': 'Inventory',
      'ta': '',
    },
    'h0lem8m5': {
      'en': 'GRN',
      'ta': '',
    },
    'wwzpfqcx': {
      'en': 'Delivery chellan',
      'ta': '',
    },
    'n0tn6thp': {
      'en': 'Picking',
      'ta': '',
    },
    '8f4w305t': {
      'en': 'SALES',
      'ta': '',
    },
    '04tmt7cm': {
      'en': 'Dashboard',
      'ta': '',
    },
    '8lw4dct3': {
      'en': 'Quotations',
      'ta': '',
    },
    'e22yftih': {
      'en': 'Sale Orders',
      'ta': '',
    },
    'oz4z4eww': {
      'en': 'PURCHASE',
      'ta': '',
    },
    'ayk956q7': {
      'en': 'RFQ’s',
      'ta': '',
    },
    'dalaimhg': {
      'en': 'Purchase Orders',
      'ta': '',
    },
    'ps3gfbx2': {
      'en': 'PROJECT',
      'ta': '',
    },
    '7lw7p5k1': {
      'en': 'Dashboard',
      'ta': '',
    },
    'o9a3hpio': {
      'en': 'Projects',
      'ta': '',
    },
    'qn97we24': {
      'en': 'Tasks',
      'ta': '',
    },
    'f8xowaku': {
      'en': 'Equipment',
      'ta': '',
    },
    'lkb03ai1': {
      'en': 'HR',
      'ta': '',
    },
    's8505ex9': {
      'en': 'Attendance',
      'ta': '',
    },
    'nw4y8r82': {
      'en': 'Leave',
      'ta': '',
    },
    'c5dc1q7k': {
      'en': 'Leave Request',
      'ta': '',
    },
    '4adbeh0z': {
      'en': 'Expenses',
      'ta': '',
    },
    '9nbnwrv1': {
      'en': 'MANUFACTURING',
      'ta': '',
    },
    '41orr5q3': {
      'en': 'Manufacturing Orders',
      'ta': '',
    },
    '0n9nju2x': {
      'en': 'Work orders',
      'ta': '',
    },
    'brr8047i': {
      'en': 'ACCOUNTING',
      'ta': '',
    },
    'nbj8tgvn': {
      'en': 'Invoices',
      'ta': '',
    },
    '21u2n7d3': {
      'en': 'Vendor Bills',
      'ta': '',
    },
    'odbo2wdz': {
      'en': 'Payments',
      'ta': '',
    },
  },
  // PDFView
  {
    'ri0q5sjc': {
      'en': 'Share',
      'ta': '',
    },
  },
  // CatalougeAnnexure
  {
    'ef3q9sf6': {
      'en': 'Document\'s',
      'ta': '',
    },
  },
  // BookmarkedProduct
  {
    'xpki5fi4': {
      'en': 'Book Mark Products',
      'ta': '',
    },
  },
  // Common_Create_Add_item
  {
    'ssljt1jb': {
      'en': 'Add Item',
      'ta': '',
    },
    '7tkjxwzd': {
      'en': 'Product Name',
      'ta': '',
    },
    'b6c39ant': {
      'en': '',
      'ta': '',
    },
    'jexv0ijn': {
      'en': 'Description',
      'ta': '',
    },
    'dtvxvxsj': {
      'en': '',
      'ta': '',
    },
    'be35526j': {
      'en': 'Description',
      'ta': '',
    },
    'uecjh4k6': {
      'en': 'Quantity',
      'ta': '',
    },
    '513uzefz': {
      'en': '',
      'ta': '',
    },
    'rl4h0atp': {
      'en': 'Quantity',
      'ta': '',
    },
    '9fk5dk12': {
      'en': 'Units',
      'ta': '',
    },
    'rqa51fep': {
      'en': '',
      'ta': '',
    },
    '2y1oavh5': {
      'en': 'Units',
      'ta': '',
    },
    'w2z7l51b': {
      'en': 'Tax',
      'ta': '',
    },
    'gzsqjuqe': {
      'en': 'Amount',
      'ta': '',
    },
    'xs5q9cpp': {
      'en': '',
      'ta': '',
    },
    'hnaq842p': {
      'en': 'Amount',
      'ta': '',
    },
    'r14blt98': {
      'en': 'Sub Total',
      'ta': '',
    },
    'ufbf5irv': {
      'en': '',
      'ta': '',
    },
    'mkdz0g21': {
      'en': 'Sub Total',
      'ta': '',
    },
    '473gwxb8': {
      'en': 'Total',
      'ta': '',
    },
    'q2fwftzf': {
      'en': 'Save',
      'ta': '',
    },
    'usxpqli1': {
      'en': 'Save & New',
      'ta': '',
    },
    'qgwr42i9': {
      'en': 'Product is required',
      'ta': '',
    },
    'n2vmzbfr': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'xa1pwo8a': {
      'en': 'Description is required',
      'ta': '',
    },
    'gfv4s0no': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '3p3vp3ab': {
      'en': 'Quantity is required',
      'ta': '',
    },
    '44ow25er': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'rc1zt3el': {
      'en': 'Field is required',
      'ta': '',
    },
    'jcs0yhl6': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'a5h1i6cv': {
      'en': 'Amount is required',
      'ta': '',
    },
    '3bco9cyy': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '684yt1o1': {
      'en': 'Subtotal is required',
      'ta': '',
    },
    '3srpsdfv': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Inventory_Create_Add_item
  {
    'hzqg138p': {
      'en': 'Add Items',
      'ta': '',
    },
    'zzsr2mqb': {
      'en': 'Product Name',
      'ta': '',
    },
    'l35e426l': {
      'en': '',
      'ta': '',
    },
    'ma87p5xk': {
      'en': 'Quantity',
      'ta': '',
    },
    '97f3pbc1': {
      'en': '',
      'ta': '',
    },
    's50n8ogq': {
      'en': 'Quantity',
      'ta': '',
    },
    'borrrajq': {
      'en': 'Units',
      'ta': '',
    },
    '0z89vmtx': {
      'en': '',
      'ta': '',
    },
    'dkm9yk3r': {
      'en': 'Units',
      'ta': '',
    },
    '639tkckb': {
      'en': 'Save',
      'ta': '',
    },
    'avk0nd17': {
      'en': 'Save & New',
      'ta': '',
    },
    'iw6w8rdl': {
      'en': 'Field is required',
      'ta': '',
    },
    'pcwwmyg9': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '5bbztq1q': {
      'en': 'Quantity required',
      'ta': '',
    },
    'pilvj0a1': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'bvrjnolt': {
      'en': 'Field is required',
      'ta': '',
    },
    '9rhjp46i': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // moreForEdit
  {
    'v32wcmit': {
      'en': 'Edit',
      'ta': '',
    },
    'a2jz77in': {
      'en': 'Delete',
      'ta': '',
    },
  },
  // Common_Fab_Component
  {
    'k42mye8b': {
      'en': 'Send Mail',
      'ta': '',
    },
    'lzjpw6xw': {
      'en': 'Edit',
      'ta': '',
    },
    'pto8dm69': {
      'en': 'Delete',
      'ta': '',
    },
    'xf40p850': {
      'en': 'Convert To Sale',
      'ta': '',
    },
    '79937owc': {
      'en': 'Reset to Draft',
      'ta': '',
    },
    'mfquyu7h': {
      'en': 'Cancel',
      'ta': '',
    },
    'isyok5vc': {
      'en': 'Download',
      'ta': '',
    },
    'i55jmdjx': {
      'en': 'View PDF',
      'ta': '',
    },
    '00vsqfu7': {
      'en': 'Convert To Invoice',
      'ta': '',
    },
    '22puvhbj': {
      'en': 'Delivery challan',
      'ta': '',
    },
    '4hnbomtw': {
      'en': 'Download',
      'ta': '',
    },
    'cdlewia0': {
      'en': 'View PDF',
      'ta': '',
    },
    'p5qgbj8w': {
      'en': 'Send Mail',
      'ta': '',
    },
    'eb02z2tr': {
      'en': 'Edit',
      'ta': '',
    },
    '4ln2fqkr': {
      'en': 'Delete',
      'ta': '',
    },
    'okmb9g7k': {
      'en': 'Convert To Purchase',
      'ta': '',
    },
    'j79wzazo': {
      'en': 'Reset to Draft',
      'ta': '',
    },
    'jywawosg': {
      'en': 'Cancel',
      'ta': '',
    },
    'jq60zqq5': {
      'en': 'Download',
      'ta': '',
    },
    'rnz8k13h': {
      'en': 'View PDF',
      'ta': '',
    },
    '08p94gl1': {
      'en': 'Convert To Vendor Bill',
      'ta': '',
    },
    'g8g2t2nz': {
      'en': 'GRN',
      'ta': '',
    },
    'mlhqekqr': {
      'en': 'Download',
      'ta': '',
    },
    'rftmf2m6': {
      'en': 'View PDF',
      'ta': '',
    },
    '0iei1mxf': {
      'en': 'Done',
      'ta': '',
    },
    'x7xkh7zb': {
      'en': 'View PDF',
      'ta': '',
    },
    'jq2escfk': {
      'en': 'Download',
      'ta': '',
    },
    '2ymzo9lz': {
      'en': 'Done',
      'ta': '',
    },
    'hblcjrpe': {
      'en': 'Download',
      'ta': '',
    },
    '8l2h1zgp': {
      'en': 'View PDF',
      'ta': '',
    },
    '5l9wx3p1': {
      'en': 'Send Email',
      'ta': '',
    },
    '0ccdcgev': {
      'en': 'Edit',
      'ta': '',
    },
    '0mb350b0': {
      'en': 'Delete',
      'ta': '',
    },
    'kvqh86j4': {
      'en': 'Confirm',
      'ta': '',
    },
    'ks509mk0': {
      'en': 'Reset to Draft',
      'ta': '',
    },
    '7ox8aivl': {
      'en': 'Cancel',
      'ta': '',
    },
    '2wvjl9pk': {
      'en': 'Convert To Payment',
      'ta': '',
    },
    '0rd1ow49': {
      'en': 'Download',
      'ta': '',
    },
    'g9qhkh0y': {
      'en': 'View PDF',
      'ta': '',
    },
    'e3qu03fs': {
      'en': 'Edit',
      'ta': '',
    },
    'sf3baub2': {
      'en': 'Delete',
      'ta': '',
    },
    '564tihks': {
      'en': 'Convert To Bill',
      'ta': '',
    },
    'caf785bg': {
      'en': 'View PDF',
      'ta': '',
    },
    'rm1xvu8t': {
      'en': 'Download',
      'ta': '',
    },
    '39hf0vw4': {
      'en': 'Reset to Draft',
      'ta': '',
    },
    '16ifxppc': {
      'en': 'Cancel',
      'ta': '',
    },
    'a91r2o7a': {
      'en': 'Convert To Payment',
      'ta': '',
    },
    'pha35f9v': {
      'en': 'Download',
      'ta': '',
    },
    'nb9ctgzc': {
      'en': 'View PDF',
      'ta': '',
    },
    'cy64grf6': {
      'en': 'Download',
      'ta': '',
    },
    'zlvjxsy2': {
      'en': 'View PDF',
      'ta': '',
    },
    'ioqmbk8a': {
      'en': 'Create',
      'ta': '',
    },
    'x85gpa0y': {
      'en': 'Scan',
      'ta': '',
    },
    '8582hs93': {
      'en': 'Cancel',
      'ta': '',
    },
    'ystclcze': {
      'en': 'Assign User',
      'ta': '',
    },
    'j7879pf8': {
      'en': 'Send SMS',
      'ta': '',
    },
    'qircfyyp': {
      'en': 'Send Mail',
      'ta': '',
    },
    'p6jit7as': {
      'en': 'Call Phone',
      'ta': '',
    },
    't18v3k53': {
      'en': 'Convert To Opportunity',
      'ta': '',
    },
    'kh8pspvr': {
      'en': 'Edit',
      'ta': '',
    },
    '8t1igvqf': {
      'en': 'Send SMS',
      'ta': '',
    },
    'n73nc9is': {
      'en': 'Send Mail',
      'ta': '',
    },
    'vjyllx4f': {
      'en': 'Call Phone',
      'ta': '',
    },
    'lfw94c3s': {
      'en': 'Convert To Contact',
      'ta': '',
    },
    '1e5ax5fo': {
      'en': 'Change Stage',
      'ta': '',
    },
    'zqie40q9': {
      'en': 'Edit',
      'ta': '',
    },
  },
  // ProductSearch
  {
    't2e3ay2u': {
      'en': '',
      'ta': '',
    },
    'tgb8pbzq': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // CreateProductItems
  {
    '617fr6hq': {
      'en': 'Qty : ',
      'ta': '',
    },
    'zh1qb13m': {
      'en': '  ',
      'ta': '',
    },
    'ug4zc4xp': {
      'en': 'Rate  :  ',
      'ta': '',
    },
    '915pef1e': {
      'en': 'Sub Total  : ',
      'ta': '',
    },
    'z2v8n3b2': {
      'en': 'Taxes : ',
      'ta': '',
    },
    'ozhgsq6i': {
      'en': 'Net Amount',
      'ta': '',
    },
  },
  // ProjectSearch
  {
    'iybz7cmi': {
      'en': '',
      'ta': '',
    },
    'jgrpebph': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // filter_Sale_order
  {
    'a9h18yf5': {
      'en': 'From Date',
      'ta': '',
    },
    'x3xztjaf': {
      'en': 'To Date',
      'ta': '',
    },
    'quxjfoil': {
      'en': 'Status',
      'ta': '',
    },
    'daj04mwp': {
      'en': 'Sale Order',
      'ta': '',
    },
    'rh9y6sfw': {
      'en': 'Cancelled',
      'ta': '',
    },
    'jpkg7wva': {
      'en': 'Quotation select...',
      'ta': '',
    },
    'q8xwuhc9': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'l4p77w16': {
      'en': 'Label here...',
      'ta': '',
    },
    '1caijopd': {
      'en': 'Label here...',
      'ta': '',
    },
    '0bhj1smj': {
      'en': 'Apply',
      'ta': '',
    },
    '7rg8vhqj': {
      'en': 'Field is required',
      'ta': '',
    },
    '9eveeqez': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // purchase_order_filter
  {
    '0yglotwv': {
      'en': 'From Date',
      'ta': '',
    },
    '37w481d6': {
      'en': 'To Date',
      'ta': '',
    },
    'tyn6u2gu': {
      'en': 'Status',
      'ta': '',
    },
    '88xg8nzh': {
      'en': 'PURCHASE ORDER',
      'ta': '',
    },
    's2jklkt1': {
      'en': 'CANCELLED',
      'ta': '',
    },
    'y6k083et': {
      'en': 'Quotation select...',
      'ta': '',
    },
    'y11dqdpz': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'pbnhzlow': {
      'en': 'Label here...',
      'ta': '',
    },
    'vxqier5b': {
      'en': 'Label here...',
      'ta': '',
    },
    'cp0j8dgk': {
      'en': 'Apply',
      'ta': '',
    },
    '68978jf7': {
      'en': 'Field is required',
      'ta': '',
    },
    'ew9pgtcq': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // filter_Rfq
  {
    'rq0j0mt5': {
      'en': 'From Date',
      'ta': '',
    },
    '3grauiwt': {
      'en': 'To Date',
      'ta': '',
    },
    '9lnct2jp': {
      'en': 'Status',
      'ta': '',
    },
    's67lgoi7': {
      'en': 'RFQ',
      'ta': '',
    },
    'bg7r4lgl': {
      'en': 'RFQ SENT',
      'ta': '',
    },
    '5patpp14': {
      'en': 'CANCELLED',
      'ta': '',
    },
    'h64q9jkz': {
      'en': 'RFQ select...',
      'ta': '',
    },
    'f35spf3c': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '191bk4kg': {
      'en': 'Label here...',
      'ta': '',
    },
    'rfwmcydx': {
      'en': 'Label here...',
      'ta': '',
    },
    'vee66n5d': {
      'en': 'Apply',
      'ta': '',
    },
    'kh55rbll': {
      'en': 'Field is required',
      'ta': '',
    },
    '7jahdwf2': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // ViewProductItemSales
  {
    '0c9aovgc': {
      'en': 'Qty : ',
      'ta': '',
    },
    'uz1yqs9l': {
      'en': '  ',
      'ta': '',
    },
    'snfcpp0i': {
      'en': 'Rate : ',
      'ta': '',
    },
  },
  // contact_filter
  {
    'u3gdgdfd': {
      'en': 'Filter',
      'ta': '',
    },
    'yxnhmfp0': {
      'en': 'All',
      'ta': '',
    },
    't7rj2in2': {
      'en': 'Customer',
      'ta': '',
    },
    'zorjlydz': {
      'en': 'Supplier',
      'ta': '',
    },
    'v7iydsa8': {
      'en': 'Customer & Supplier',
      'ta': '',
    },
  },
  // ViewProductItemPurchase
  {
    'tji3kmqx': {
      'en': 'Qty : ',
      'ta': '',
    },
    'xcw85qmo': {
      'en': '  ',
      'ta': '',
    },
    'wmdf5mxm': {
      'en': 'Rate : ',
      'ta': '',
    },
  },
  // ViewProductItemAccounting
  {
    'y5vo88z7': {
      'en': 'Qty : ',
      'ta': '',
    },
    'wujcoqly': {
      'en': '  ',
      'ta': '',
    },
    'kf59i8hi': {
      'en': 'Rate : ',
      'ta': '',
    },
  },
  // AddToOpportunity
  {
    '07z2fdhj': {
      'en': 'Add To Opportunity',
      'ta': '',
    },
    'qa3jicgq': {
      'en': 'Lead Name',
      'ta': '',
    },
    'gdxigsre': {
      'en': 'Customer Name',
      'ta': '',
    },
    'liftjuqb': {
      'en': 'Enter Customer Name',
      'ta': '',
    },
    '7ub1ecq1': {
      'en': 'Lead From',
      'ta': '',
    },
    'rljfw00v': {
      'en': 'Option 1',
      'ta': '',
    },
    '77tf7s6m': {
      'en': 'Please select lead source',
      'ta': '',
    },
    'fzxng6zs': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'wisjj33i': {
      'en': 'Phone Number',
      'ta': '',
    },
    'opwfvtir': {
      'en': 'Enter Phone Number',
      'ta': '',
    },
    'v4jgdenj': {
      'en': 'Email',
      'ta': '',
    },
    'fuymfm20': {
      'en': 'Enter Email',
      'ta': '',
    },
    'o55m64rl': {
      'en': 'Address',
      'ta': '',
    },
    'twi7clfq': {
      'en': 'Enter Adress',
      'ta': '',
    },
    'ckxpwktx': {
      'en': 'Enquiry Details',
      'ta': '',
    },
    '6kihx6pi': {
      'en': 'Enter Enquiry Details',
      'ta': '',
    },
    'f820awkl': {
      'en': 'Add',
      'ta': '',
    },
  },
  // OpportunitySearch
  {
    'yay4nwh8': {
      'en': 'Search...',
      'ta': '',
    },
    'c8k38azb': {
      'en': 'Value  : ',
      'ta': '',
    },
  },
  // ScheduleActivityEdit
  {
    'k9w66ip1': {
      'en': 'Schedule Activity Edit',
      'ta': '',
    },
    'fwx7sm3t': {
      'en': 'Activity Type',
      'ta': '',
    },
    'i91it40p': {
      'en': 'Option 1',
      'ta': '',
    },
    'wo7b852v': {
      'en': 'Select Type',
      'ta': '',
    },
    'lc3bgmyc': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'irf56mm7': {
      'en': 'Due Date',
      'ta': '',
    },
    'fbo404u4': {
      'en': 'Summary',
      'ta': '',
    },
    'knrbzqhv': {
      'en': 'write a summary',
      'ta': '',
    },
    '8e52u2us': {
      'en': 'Discard',
      'ta': '',
    },
    'v0xd2v7p': {
      'en': 'Schedule',
      'ta': '',
    },
    'djfwc8v6': {
      'en': 'Field is required',
      'ta': '',
    },
    'ettt315q': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // myActivityAction
  {
    '787z8oom': {
      'en': 'Edit',
      'ta': '',
    },
    '7d8k0xyi': {
      'en': 'Mark Done',
      'ta': '',
    },
    'b7271bg4': {
      'en': 'Cancel',
      'ta': '',
    },
  },
  // ScheduleMyActivity
  {
    'fg7oaqnr': {
      'en': 'Schedule My Activity',
      'ta': '',
    },
    'p01gpqbh': {
      'en': 'Model',
      'ta': '',
    },
    'ip0dfc7w': {
      'en': 'lead',
      'ta': '',
    },
    'xkl21bsb': {
      'en': 'Sale Order',
      'ta': '',
    },
    '8kaa7bfr': {
      'en': 'Purchase Order',
      'ta': '',
    },
    '3bt8asxz': {
      'en': 'Invoice',
      'ta': '',
    },
    'hghmmm1n': {
      'en': 'Vendor Bill',
      'ta': '',
    },
    'smq1nep8': {
      'en': 'Select Model',
      'ta': '',
    },
    '95jtbr3u': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'jpgxr4rp': {
      'en': 'Lead',
      'ta': '',
    },
    '0reee7wv': {
      'en': 'Option 1',
      'ta': '',
    },
    '8y6ml2un': {
      'en': 'Select Lead',
      'ta': '',
    },
    'c9i3fk00': {
      'en': 'Search for an lead...',
      'ta': '',
    },
    'erct1yhc': {
      'en': 'Sale Order',
      'ta': '',
    },
    'ltbu05b4': {
      'en': 'Option 1',
      'ta': '',
    },
    'c9dkbaow': {
      'en': 'Select Sale',
      'ta': '',
    },
    's71gytjx': {
      'en': 'Search for an sale...',
      'ta': '',
    },
    'meb98n96': {
      'en': 'Purchase Order',
      'ta': '',
    },
    '2g70jqku': {
      'en': 'Option 1',
      'ta': '',
    },
    '7b2rg2rd': {
      'en': 'Select Purchase Order',
      'ta': '',
    },
    '72l51enr': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'at1w1bbw': {
      'en': 'Invoice',
      'ta': '',
    },
    'y6motc3d': {
      'en': 'Option 1',
      'ta': '',
    },
    'da0onow9': {
      'en': 'Select Invoice',
      'ta': '',
    },
    've9bqd7o': {
      'en': 'Search for an invoice...',
      'ta': '',
    },
    'ewp9taeg': {
      'en': 'Vendor Bill',
      'ta': '',
    },
    '3t1ca4sx': {
      'en': 'Option 1',
      'ta': '',
    },
    'i9qglyr5': {
      'en': 'Select VendorBill',
      'ta': '',
    },
    'wcxjcrud': {
      'en': 'Search for an vendorbill...',
      'ta': '',
    },
    'tj7ptphg': {
      'en': 'Activity Type',
      'ta': '',
    },
    'qwao6sye': {
      'en': 'Option 1',
      'ta': '',
    },
    'rzw93zqj': {
      'en': 'Select Type',
      'ta': '',
    },
    'gsnjubwk': {
      'en': 'Search for an item...',
      'ta': '',
    },
    '7aad4rde': {
      'en': 'Assigned To',
      'ta': '',
    },
    '4cmu88my': {
      'en': 'Option 1',
      'ta': '',
    },
    'jrdvndy5': {
      'en': 'Select Type',
      'ta': '',
    },
    'qfdsu1p1': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'wqjgh9v0': {
      'en': 'Due Date',
      'ta': '',
    },
    '2jg3u9tw': {
      'en': 'Summary',
      'ta': '',
    },
    'fydmpvbo': {
      'en': 'write a summary',
      'ta': '',
    },
    'zunwrxce': {
      'en': 'Discard',
      'ta': '',
    },
    'fmh8rpck': {
      'en': 'Schedule',
      'ta': '',
    },
    '8al4sg6s': {
      'en': 'Field is required',
      'ta': '',
    },
    'i1u2z4ee': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // Pick_filter_component
  {
    'tp3b4i06': {
      'en': 'Filter',
      'ta': '',
    },
    'wviqqg8f': {
      'en': 'Draft',
      'ta': '',
    },
    'xanqpw5x': {
      'en': 'Waiting Another operation',
      'ta': '',
    },
    '2q31pr1u': {
      'en': 'Waiting',
      'ta': '',
    },
    'kp6x9a5d': {
      'en': 'Ready',
      'ta': '',
    },
    'bsahqagf': {
      'en': 'Done',
      'ta': '',
    },
    'nfnkod25': {
      'en': 'Cancelled',
      'ta': '',
    },
  },
  // Pick_list_search
  {
    'zqwm3ukq': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // Pick_view_edit_page
  {
    'p6bxt8ln': {
      'en': 'GRN Challan Quantity',
      'ta': '',
    },
    '2ozj7sd8': {
      'en': 'Quantity',
      'ta': '',
    },
    'wwdf6qfd': {
      'en': 'Enter valid Qty',
      'ta': '',
    },
    'l1rfbvnf': {
      'en': 'Save',
      'ta': '',
    },
    'crnpnpce': {
      'en': 'Field is required',
      'ta': '',
    },
    'gbe8dl8g': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // RefuseLeave
  {
    'dnx4fjr1': {
      'en': 'Reason',
      'ta': '',
    },
    '13x9e9xk': {
      'en': 'Reason for refuse',
      'ta': '',
    },
    'nr6uy50s': {
      'en': 'Submit',
      'ta': '',
    },
    '2ul1775l': {
      'en': 'Field is required',
      'ta': '',
    },
    '9xwsyrm8': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // LeaveRequestFilter
  {
    '5ca1i96p': {
      'en': 'From Date',
      'ta': '',
    },
    '5ie927u1': {
      'en': 'To Date',
      'ta': '',
    },
    '35x353nj': {
      'en': 'Status',
      'ta': '',
    },
    'vwqbx29n': {
      'en': 'Request',
      'ta': '',
    },
    'lolr5f7m': {
      'en': 'Approved',
      'ta': '',
    },
    '5u4150dc': {
      'en': 'Refused',
      'ta': '',
    },
    'cecnj87l': {
      'en': 'Quotation select...',
      'ta': '',
    },
    'gj94ntse': {
      'en': 'Search for an item...',
      'ta': '',
    },
    'sd2o9oiu': {
      'en': 'Label here...',
      'ta': '',
    },
    '7d5uywze': {
      'en': 'Label here...',
      'ta': '',
    },
    'hirkoj7v': {
      'en': 'Apply',
      'ta': '',
    },
    'wevrwpog': {
      'en': 'Field is required',
      'ta': '',
    },
    'i0ppzam3': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // invoiceConversion
  {
    'l1e39f7u': {
      'en': 'Invoice Payment',
      'ta': '',
    },
    'qw3ogra1': {
      'en': 'Enter the bill amount ',
      'ta': '',
    },
    '6ym2l81f': {
      'en': '',
      'ta': '',
    },
    'atbtdnwe': {
      'en': 'Submit',
      'ta': '',
    },
    '2gagv5hh': {
      'en': 'Invoice amount is required',
      'ta': '',
    },
    'm0pymy28': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // PurchaseOrderListSearch
  {
    'o2ipsd4r': {
      'en': '',
      'ta': '',
    },
    '99vrb8qk': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // SaleOrderListSearch
  {
    '6lwseatg': {
      'en': '',
      'ta': '',
    },
    'hsbnqqna': {
      'en': 'Search...',
      'ta': '',
    },
  },
  // AddNotes
  {
    'my1yn29r': {
      'en': 'Notes',
      'ta': '',
    },
    'kvvf5idg': {
      'en': 'File',
      'ta': '',
    },
    'o8zhgczu': {
      'en': 'Gallery',
      'ta': '',
    },
    '32wdxeqw': {
      'en': 'Camera',
      'ta': '',
    },
    'lrvdkaig': {
      'en': 'Audio',
      'ta': '',
    },
    '0ijgpp0e': {
      'en': 'Start',
      'ta': '',
    },
    'hq9mlyuv': {
      'en': 'Stop',
      'ta': '',
    },
    '8c0afuqv': {
      'en': 'Recording',
      'ta': '',
    },
    'p4lnnvqi': {
      'en': 'Add New Note',
      'ta': '',
    },
  },
  // commonViewPage
  {
    '1h58f8bs': {
      'en': 'SUBTOTAL',
      'ta': '',
    },
    'x4l1ft20': {
      'en': 'TAX',
      'ta': '',
    },
    'k8kli7iw': {
      'en': 'TOTAL',
      'ta': '',
    },
  },
  // GrnQtyTextBox
  {
    'kt7pnbu7': {
      'en': '',
      'ta': '',
    },
    'd8aggs2r': {
      'en': 'Cancel',
      'ta': '',
    },
  },
  // ActivitySwipe
  {
    'lgay1yda': {
      'en': 'Skip',
      'ta': '',
    },
  },
  // GrnDCOnlyQtyTextBox
  {
    'wgyph2xf': {
      'en': '',
      'ta': '',
    },
  },
  // UserSearch
  {
    '794rkw46': {
      'en': '',
      'ta': '',
    },
    'amhrsqf7': {
      'en': 'Search',
      'ta': '',
    },
  },
  // LeadAssignUser
  {
    'xz7s0bob': {
      'en': 'Assign Lead',
      'ta': '',
    },
    'r8qds29c': {
      'en': 'Submit',
      'ta': '',
    },
  },
  // TeamAssignUser
  {
    '5c5st8e7': {
      'en': 'Assign Team',
      'ta': '',
    },
    'avxukghx': {
      'en': 'Submit',
      'ta': '',
    },
  },
  // NonProjectUserSearch
  {
    'lbsssliu': {
      'en': 'Search for customer',
      'ta': '',
    },
  },
  // Common_Create_Edit_item
  {
    'i4vby58i': {
      'en': 'Edit Item',
      'ta': '',
    },
    'xrgfm0nm': {
      'en': 'Product Name',
      'ta': '',
    },
    'gu1dsfrr': {
      'en': '',
      'ta': '',
    },
    'u4it96ou': {
      'en': 'Description',
      'ta': '',
    },
    'tomskd47': {
      'en': '',
      'ta': '',
    },
    '3qnwxh1g': {
      'en': 'Description',
      'ta': '',
    },
    'vuiu1ny3': {
      'en': 'Quantity',
      'ta': '',
    },
    'f9g0l93w': {
      'en': '',
      'ta': '',
    },
    'sdlo6m6x': {
      'en': 'Quantity',
      'ta': '',
    },
    '4pj6pp6f': {
      'en': 'Units',
      'ta': '',
    },
    'a1u4bkfs': {
      'en': '',
      'ta': '',
    },
    'dhqtqj17': {
      'en': 'Units',
      'ta': '',
    },
    'c88xnmul': {
      'en': 'Tax',
      'ta': '',
    },
    '0af92i93': {
      'en': 'Amount',
      'ta': '',
    },
    '94z0aijj': {
      'en': '',
      'ta': '',
    },
    'ml0ybnh4': {
      'en': 'Amount',
      'ta': '',
    },
    '66do1hym': {
      'en': 'Sub Total',
      'ta': '',
    },
    'qj8t5ypr': {
      'en': '',
      'ta': '',
    },
    'rxnpefge': {
      'en': 'Sub Total',
      'ta': '',
    },
    '0bvh9qw7': {
      'en': 'Total',
      'ta': '',
    },
    'gc2fi2it': {
      'en': 'Save',
      'ta': '',
    },
    'rswrr7gj': {
      'en': 'Product is required',
      'ta': '',
    },
    'xauwq59h': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'douxmyc7': {
      'en': 'Description is required',
      'ta': '',
    },
    '9hacaci4': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    '4v5did4e': {
      'en': 'Quantity is required',
      'ta': '',
    },
    'wjdg6seg': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'x66zjvay': {
      'en': 'Field is required',
      'ta': '',
    },
    '5bam2cfl': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'zrk7q6qy': {
      'en': 'Amount is required',
      'ta': '',
    },
    'nkuibvkk': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
    'mesvaaqt': {
      'en': 'Subtotal is required',
      'ta': '',
    },
    'g1efzkeq': {
      'en': 'Please choose an option from the dropdown',
      'ta': '',
    },
  },
  // EditViewProductLineItems
  {
    'b6wuaohx': {
      'en': 'Qty : ',
      'ta': '',
    },
    'gtj0hnen': {
      'en': '  ',
      'ta': '',
    },
    'xlftntnh': {
      'en': 'Rate : ',
      'ta': '',
    },
    'qr4rx7b3': {
      'en': 'Sub Total : ',
      'ta': '',
    },
    'i3uy30cf': {
      'en': 'Taxes : ',
      'ta': '',
    },
    'hk22ue76': {
      'en': 'Net Amount',
      'ta': '',
    },
  },
  // CheckcheckOut
  {
    '0dv125w6': {
      'en': 'IN',
      'ta': '',
    },
    '7r66z04m': {
      'en': 'OUT',
      'ta': '',
    },
    'ps5pistg': {
      'en': 'Not Started',
      'ta': '',
    },
  },
  // Checkin_popup
  {
    'zgvq8tx6': {
      'en':
          'Rise and Shine! You\'re now checked in and ready to conquer the day!',
      'ta': '',
    },
    'l2xub3rx': {
      'en': 'OK',
      'ta': '',
    },
    'eb3zddw9': {
      'en': 'Wave goodbye to today\'s tasks! Checked out and tuning out.',
      'ta': '',
    },
    '18n7baiq': {
      'en': 'OK',
      'ta': '',
    },
  },
  // Miscellaneous
  {
    '7z2igiey': {
      'en': '',
      'ta': '',
    },
    'hu28l0lk': {
      'en': '',
      'ta': '',
    },
    'ge4gv4o9': {
      'en': '',
      'ta': '',
    },
    'dd8iq5n4': {
      'en': '',
      'ta': '',
    },
    'qoo5rh2t': {
      'en':
          'In order to recieve notification, this app requires access to notifications',
      'ta': '',
    },
    'tz78tase': {
      'en': 'In order to download, this app requires access to download',
      'ta': '',
    },
    '4ipdee8j': {
      'en': 'In order to download, this app requires access to download',
      'ta': '',
    },
    'ziwztv8d': {
      'en': '',
      'ta': '',
    },
    'mpzjc9k0': {
      'en': '',
      'ta': '',
    },
    'jwhq3e8g': {
      'en': '',
      'ta': '',
    },
    'bh6wtpoo': {
      'en': '',
      'ta': '',
    },
    'zekodthh': {
      'en': '',
      'ta': '',
    },
    'xacatc2c': {
      'en': '',
      'ta': '',
    },
    'o5o6mj78': {
      'en': '',
      'ta': '',
    },
    'nw08rcg1': {
      'en': '',
      'ta': '',
    },
    'fm0cceae': {
      'en': '',
      'ta': '',
    },
    'fd8hhso9': {
      'en': '',
      'ta': '',
    },
    'x9hk3gue': {
      'en': '',
      'ta': '',
    },
    'ua8xytmk': {
      'en': '',
      'ta': '',
    },
    'n8psr2y1': {
      'en': '',
      'ta': '',
    },
    'i31u4ht1': {
      'en': '',
      'ta': '',
    },
    'z8xk5cw4': {
      'en': '',
      'ta': '',
    },
    'xeqebgq7': {
      'en': '',
      'ta': '',
    },
    'rlw95ixv': {
      'en': '',
      'ta': '',
    },
    'iezu8kkd': {
      'en': '',
      'ta': '',
    },
    'y9fba5l7': {
      'en': '',
      'ta': '',
    },
    'anihd9ad': {
      'en': '',
      'ta': '',
    },
    'toah3qzh': {
      'en': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
