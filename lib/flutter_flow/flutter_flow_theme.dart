// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primaryBtnText;
  late Color lineColor;
  late Color hashColor;
  late Color customColor1;
  late Color customColor2;
  late Color rgb;
  late Color zambezi;
  late Color nero;
  late Color hSLcolor;
  late Color veryPaleYellow;
  late Color blackcolor;
  late Color firstboxcolor;
  late Color secondboxcolor;
  late Color threeboxcolor;
  late Color bLUEWhite;
  late Color primarybgwhite;
  late Color whiteSmoke;
  late Color e8F6F7To1E1E1E;
  late Color whiteTo1E1E1E;
  late Color secondbgTo1F1F1F;
  late Color f0F2F6To1E1E1E;
  late Color f5F2FCTo1e1e1e;
  late Color orange;
  late Color loginBtnColor1;
  late Color appBarColor;
  late Color appBarTextColor;
  late Color white;
  late Color caradTextColor;
  late Color cardHeading;
  late Color btnColor1;
  late Color lightdark;
  late Color textDarkLightColor;
  late Color btnColor2;
  late Color tdetailText;
  late Color taskDetailsTextcolor;
  late Color black;
  late Color orangeColor1;
  late Color recentActivityClr;
  late Color dateAndTimeBgClr;
  late Color blueBtnColor;
  late Color inputtextColor;
  late Color inputFieldColor;
  late Color floatingButtonColor;
  late Color productBgColor;
  late Color headingColor1;
  late Color newCardTextColr;
  late Color menuIconBgColor;
  late Color menuLeftBgColor;
  late Color activeSideBar;
  late Color inactiveSidebar;
  late Color statusStage;
  late Color listPlusButton;
  late Color menuBarButton;
  late Color addItemsButton;
  late Color saveButton;
  late Color saveAndNewButton;
  late Color notificationStatus;
  late Color previousButton;
  late Color submitButton;
  late Color nextButton;
  late Color sendButton;
  late Color updateButton;
  late Color createButton;
  late Color cancelButton;
  late Color startButton;
  late Color assignButton;
  late Color uploadButton;
  late Color applyButton;
  late Color changeButton;
  late Color activityButton;
  late Color discradButton;
  late Color scheduleButton;
  late Color viewPageContainer;
  late Color dashboardHeading;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF23A8FF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF4F6FC);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color hashColor = Color(0xFFD1E2EA);
  late Color customColor1 = Color(0xFFF4689D);
  late Color customColor2 = Color(0xFFF6526B);
  late Color rgb = Color(0xFF625B71);
  late Color zambezi = Color(0xFF585858);
  late Color nero = Color(0xFF1E1E1E);
  late Color hSLcolor = Color(0xFFF1F4F8);
  late Color veryPaleYellow = Color(0xFFEEECF4);
  late Color blackcolor = Color(0xFF000000);
  late Color firstboxcolor = Color(0xFFDAF6F4);
  late Color secondboxcolor = Color(0xFFCFECFF);
  late Color threeboxcolor = Color(0xFFFCE1DD);
  late Color bLUEWhite = Color(0xFFFFFFFF);
  late Color primarybgwhite = Color(0xFFFFFFFF);
  late Color whiteSmoke = Color(0xFFF3F3F3);
  late Color e8F6F7To1E1E1E = Color(0xFFE8F6F7);
  late Color whiteTo1E1E1E = Color(0xFFFFFFFF);
  late Color secondbgTo1F1F1F = Color(0xFFFFFFFF);
  late Color f0F2F6To1E1E1E = Color(0xFFF0F2F6);
  late Color f5F2FCTo1e1e1e = Color(0xFFF5F2FC);
  late Color orange = Color(0xFFEF7213);
  late Color loginBtnColor1 = Color(0xFF242424);
  late Color appBarColor = Color(0xFFFFFFFF);
  late Color appBarTextColor = Color(0xFF262626);
  late Color white = Color(0xFFFFFFFF);
  late Color caradTextColor = Color(0xFF2F3336);
  late Color cardHeading = Color(0xFF0D1829);
  late Color btnColor1 = Color(0xFF0496FF);
  late Color lightdark = Color(0xFFFFFFFF);
  late Color textDarkLightColor = Color(0xFF080707);
  late Color btnColor2 = Color(0xFF7B7D7E);
  late Color tdetailText = Color(0xFF2F3336);
  late Color taskDetailsTextcolor = Color(0xFF387076);
  late Color black = Color(0xFFFFFFFF);
  late Color orangeColor1 = Color(0xFFEF7213);
  late Color recentActivityClr = Color(0xFF56B97D);
  late Color dateAndTimeBgClr = Color(0xFFB40CAB);
  late Color blueBtnColor = Color(0xFF0078F0);
  late Color inputtextColor = Color(0xFF838383);
  late Color inputFieldColor = Color(0xFF838383);
  late Color floatingButtonColor = Color(0xFF62277D);
  late Color productBgColor = Color(0xFFF2F2F2);
  late Color headingColor1 = Color(0xFF1D1E20);
  late Color newCardTextColr = Color(0xFF535353);
  late Color menuIconBgColor = Color(0xFFFFFFFF);
  late Color menuLeftBgColor = Color(0xFFF1F1F1);
  late Color activeSideBar = Color(0xFF0496FF);
  late Color inactiveSidebar = Color(0xFF7B7D7E);
  late Color statusStage = Color(0xFF4C218E);
  late Color listPlusButton = Color(0xFF2101A4);
  late Color menuBarButton = Color(0xFF62277D);
  late Color addItemsButton = Color(0xFF23A8FF);
  late Color saveButton = Color(0xFF39D2C0);
  late Color saveAndNewButton = Color(0xFF56B97D);
  late Color notificationStatus = Color(0xFFB5DBE0);
  late Color previousButton = Color(0xFF848484);
  late Color submitButton = Color(0xFF60EA69);
  late Color nextButton = Color(0xFFEE4904);
  late Color sendButton = Color(0xFF242424);
  late Color updateButton = Color(0xFF0B7250);
  late Color createButton = Color(0xFF82BFAB);
  late Color cancelButton = Color(0xFF68716C);
  late Color startButton = Color(0xFFEF7F29);
  late Color assignButton = Color(0xFF1E77C4);
  late Color uploadButton = Color(0xFF005EA0);
  late Color applyButton = Color(0xFFEE8B60);
  late Color changeButton = Color(0xFF23A8FF);
  late Color activityButton = Color(0xFF56B97D);
  late Color discradButton = Color(0xFFEF7213);
  late Color scheduleButton = Color(0xFF56B97D);
  late Color viewPageContainer = Color(0xFF27248E);
  late Color dashboardHeading = Color(0xFF1C4494);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Roboto';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Roboto';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Roboto';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get headlineLargeFamily => 'Roboto';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Roboto';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'Roboto';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Roboto';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Roboto';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleSmallFamily => 'Roboto';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Roboto';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Roboto';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Roboto';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Roboto';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontSize: 18.0,
      );
  String get bodyMediumFamily => 'Roboto';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Roboto',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Roboto';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Roboto',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF23A8FF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF262D34);
  late Color secondaryBackground = const Color(0xFF010101);
  late Color accent1 = const Color(0xFFEEEEEE);
  late Color accent2 = const Color(0xFFE0E0E0);
  late Color accent3 = const Color(0xFF757575);
  late Color accent4 = const Color(0xFF616161);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF22282F);
  late Color hashColor = Color(0xFFD1E2EA);
  late Color customColor1 = Color(0xFFF4689D);
  late Color customColor2 = Color(0xFFF6526B);
  late Color rgb = Color(0xFFFFFFFF);
  late Color zambezi = Color(0xFFFFFFFF);
  late Color nero = Color(0xFFFFFFFF);
  late Color hSLcolor = Color(0xFFB4F604);
  late Color veryPaleYellow = Color(0xFFD7BCBC);
  late Color blackcolor = Color(0xFFFFFFFF);
  late Color firstboxcolor = Color(0xFF1E1E1E);
  late Color secondboxcolor = Color(0xFF1E1E1E);
  late Color threeboxcolor = Color(0xFF1E1E1E);
  late Color bLUEWhite = Color(0xFF1F1F1F);
  late Color primarybgwhite = Color(0xFF1D1C21);
  late Color whiteSmoke = Color(0xFF1D1D1D);
  late Color e8F6F7To1E1E1E = Color(0xFF1E1E1E);
  late Color whiteTo1E1E1E = Color(0xFF1E1E1E);
  late Color secondbgTo1F1F1F = Color(0xFF1F1F1F);
  late Color f0F2F6To1E1E1E = Color(0xFF1E1E1E);
  late Color f5F2FCTo1e1e1e = Color(0xFF1E1E1E);
  late Color orange = Color(0xFFEF7213);
  late Color loginBtnColor1 = Color(0xFF0299FF);
  late Color appBarColor = Color(0xFF000000);
  late Color appBarTextColor = Color(0xFFF1F1F1);
  late Color white = Color(0xFFFFFFFF);
  late Color caradTextColor = Color(0xFFF4F4F4);
  late Color cardHeading = Color(0xFFF1F1F1);
  late Color btnColor1 = Color(0xFF36C5CA);
  late Color lightdark = Color(0xFFFAFAFA);
  late Color textDarkLightColor = Color(0xFF080707);
  late Color btnColor2 = Color(0xFF3186E7);
  late Color tdetailText = Color(0xFFF4F4F4);
  late Color taskDetailsTextcolor = Color(0xFF387476);
  late Color black = Color(0xFFFFFFFF);
  late Color orangeColor1 = Color(0xFFEF7213);
  late Color recentActivityClr = Color(0xFF56B97D);
  late Color dateAndTimeBgClr = Color(0xFFB40CAB);
  late Color blueBtnColor = Color(0xFF0078F0);
  late Color inputtextColor = Color(0xFFF3ECEC);
  late Color inputFieldColor = Color(0xFF838383);
  late Color floatingButtonColor = Color(0xFF62277D);
  late Color productBgColor = Color(0xFFF2F2F2);
  late Color headingColor1 = Color(0xFF1D1E20);
  late Color newCardTextColr = Color(0xFF535353);
  late Color menuIconBgColor = Color(0xFFFFFFFF);
  late Color menuLeftBgColor = Color(0xFFF1F1F1);
  late Color activeSideBar = Color(0xFF0496FF);
  late Color inactiveSidebar = Color(0xFF7B7D7E);
  late Color statusStage = Color(0xFF2101A4);
  late Color listPlusButton = Color(0xFF535353);
  late Color menuBarButton = Color(0xFFE0B9F5);
  late Color addItemsButton = Color(0xFF54AFED);
  late Color saveButton = Color(0xFF90FEF0);
  late Color saveAndNewButton = Color(0xFFBDFFA6);
  late Color notificationStatus = Color(0xFFB5DBE0);
  late Color previousButton = Color(0xFF9D9898);
  late Color submitButton = Color(0xFF60EA69);
  late Color nextButton = Color(0xFFFC996E);
  late Color sendButton = Color(0xFF797676);
  late Color updateButton = Color(0xFF505630);
  late Color createButton = Color(0xFF415750);
  late Color cancelButton = Color(0xFF68716C);
  late Color startButton = Color(0xFF49F540);
  late Color assignButton = Color(0xFF58A8EB);
  late Color uploadButton = Color(0xFF6E96B3);
  late Color applyButton = Color(0xFFEE8B60);
  late Color changeButton = Color(0xFF6E96B3);
  late Color activityButton = Color(0xFF19EB16);
  late Color discradButton = Color(0xFF77872C);
  late Color scheduleButton = Color(0xFF415750);
  late Color viewPageContainer = Color(0xFF27248E);
  late Color dashboardHeading = Color(0xFFC2BDD1);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
