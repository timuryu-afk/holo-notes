import 'package:flutter/material.dart';

class AppTheme
{
  Color accentColor;
  Color background1Color;
  Color background2Color;
  Color foregroundColor;
  Color titleTextColor;
  Color backgroundNoteColor;
  String themeName;
  int id;
  bool isDark;

  AppTheme({
    required this.accentColor,
    required this.background1Color,
    required this.background2Color,
    required this.foregroundColor,
    required this.titleTextColor,
    required this.backgroundNoteColor,
    required this.themeName,
    required this.id,
    required this.isDark
  });
}

//Dark Themes

AppTheme themeHoloDefault = AppTheme(
    accentColor: Color(0xFF33B5E5),
    background1Color: Color(0xFF272C32),
    background2Color: Color(0xFF000000),
    foregroundColor: Color(0xFFFFFFFF),
    titleTextColor: Color(0xFFADADAD),
    backgroundNoteColor: Color(0xFF1A1F24),
    themeName: "Holo (Default)",
    id: 0,
    isDark: true
);

AppTheme themeForest = AppTheme(
    accentColor: Color(0xFF4CAF50),
    background1Color: Color(0xFF1E2A24),
    background2Color: Color(0xFF0B120E),
    foregroundColor: Color(0xFFE8F5E9),
    titleTextColor: Color(0xFFB0C4B1),
    backgroundNoteColor: Color(0xFF1C2721), // lighter
    themeName: "Forest",
    id: 1,
    isDark: true
);

AppTheme themeGraphite = AppTheme(
    accentColor: Color(0xFF90A4AE),
    background1Color: Color(0xFF202225),
    background2Color: Color(0xFF0E0F10),
    foregroundColor: Color(0xFFECEFF1),
    titleTextColor: Color(0xFFB0BEC5),
    backgroundNoteColor: Color(0xFF1B1E21), // lighter
    themeName: "Graphite",
    id: 2,
    isDark: true
);

AppTheme themeEmber = AppTheme(
    accentColor: Color(0xFFFF7043),
    background1Color: Color(0xFF261A18),
    background2Color: Color(0xFF0F0A09),
    foregroundColor: Color(0xFFFFF3E0),
    titleTextColor: Color(0xFFD7B8AA),
    backgroundNoteColor: Color(0xFF211714), // lighter
    themeName: "Ember",
    id: 3,
    isDark: true
);

AppTheme themeCrimsonNight = AppTheme(
    accentColor: Color(0xFFE53935),
    background1Color: Color(0xFF2B1717),
    background2Color: Color(0xFF120909),
    foregroundColor: Color(0xFFFFEBEE),
    titleTextColor: Color(0xFFD7A8A8),
    backgroundNoteColor: Color(0xFF231414), // lighter
    themeName: "Crimson Night",
    id: 4,
    isDark: true
);

AppTheme themeTerminal = AppTheme(
    accentColor: Color(0xFF00E676),
    background1Color: Color(0xFF141A14),
    background2Color: Color(0xFF050705),
    foregroundColor: Color(0xFFE8F5E9),
    titleTextColor: Color(0xFF9FB79F),
    backgroundNoteColor: Color(0xFF151915), // lighter
    themeName: "Terminal",
    id: 5,
    isDark: true
);

AppTheme themeGoldenHour = AppTheme(
    accentColor: Color(0xFFFFC107),
    background1Color: Color(0xFF2B2416),
    background2Color: Color(0xFF120E06),
    foregroundColor: Color(0xFFFFF8E1),
    titleTextColor: Color(0xFFD3BE8A),
    backgroundNoteColor: Color(0xFF221C10), // lighter
    themeName: "Golden Hour",
    id: 6,
    isDark: true
);

AppTheme themeAurora = AppTheme(
    accentColor: Color(0xFF26C6DA),
    background1Color: Color(0xFF17272A),
    background2Color: Color(0xFF071012),
    foregroundColor: Color(0xFFE0F7FA),
    titleTextColor: Color(0xFFA8C3C7),
    backgroundNoteColor: Color(0xFF132024), // lighter
    themeName: "Aurora",
    id: 7,
    isDark: true
);

AppTheme themeMilitary = AppTheme(
    accentColor: Color(0xFF8BC34A),
    background1Color: Color(0xFF22281B),
    background2Color: Color(0xFF0C0F09),
    foregroundColor: Color(0xFFF1F8E9),
    titleTextColor: Color(0xFFB6C2A3),
    backgroundNoteColor: Color(0xFF1C2217), // lighter
    themeName: "Military",
    id: 8,
    isDark: true
);

//Light Themes

AppTheme themeMint = AppTheme(
    accentColor: Color(0xFF43A047),
    background1Color: Color(0xFFF3FBF6),
    background2Color: Color(0xFFE3EFE7),
    foregroundColor: Color(0xFF263238),
    titleTextColor: Color(0xFF546E7A),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Mint",
    id: 9,
    isDark: false
);

AppTheme themeSandyBeach = AppTheme(
    accentColor: Color(0xFFFFB300),
    background1Color: Color(0xFFFFF8E1),
    background2Color: Color(0xFFFFECB3),
    foregroundColor: Color(0xFF3E2723),
    titleTextColor: Color(0xFF6D4C41),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Sandy Beach",
    id: 10,
    isDark: false
);

AppTheme themeSky = AppTheme(
    accentColor: Color(0xFF0288D1),
    background1Color: Color(0xFFEAF6FF),
    background2Color: Color(0xFFD6ECFF),
    foregroundColor: Color(0xFF263238),
    titleTextColor: Color(0xFF455A64),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Sky",
    id: 11,
    isDark: false
);

AppTheme themeLavender = AppTheme(
    accentColor: Color(0xFF7E57C2),
    background1Color: Color(0xFFF7F4FD),
    background2Color: Color(0xFFE9E4F5),
    foregroundColor: Color(0xFF2E2A36),
    titleTextColor: Color(0xFF5E5470),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Lavender",
    id: 12,
    isDark: false
);

AppTheme themePaper = AppTheme(
    accentColor: Color(0xFF546E7A),
    background1Color: Color(0xFFF7F7F5),
    background2Color: Color(0xFFECECE8),
    foregroundColor: Color(0xFF263238),
    titleTextColor: Color(0xFF607D8B),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Paper",
    id: 13,
    isDark: false
);

AppTheme themeCherryBlossom = AppTheme(
    accentColor: Color(0xFFEC407A),
    background1Color: Color(0xFFFFF1F5),
    background2Color: Color(0xFFFDE0E7),
    foregroundColor: Color(0xFF3E2723),
    titleTextColor: Color(0xFF8D6E63),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Cherry Blossom",
    id: 14,
    isDark: false
);

AppTheme themePeach = AppTheme(
    accentColor: Color(0xFFFF8A65),
    background1Color: Color(0xFFFFF3EE),
    background2Color: Color(0xFFFFE0D6),
    foregroundColor: Color(0xFF4E342E),
    titleTextColor: Color(0xFF795548),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Peach",
    id: 15,
    isDark: false
);

AppTheme themeSeafoam = AppTheme(
    accentColor: Color(0xFF26A69A),
    background1Color: Color(0xFFF1FCFA),
    background2Color: Color(0xFFD8F3EE),
    foregroundColor: Color(0xFF263238),
    titleTextColor: Color(0xFF546E7A),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Seafoam",
    id: 16,
    isDark: false
);

AppTheme themeRetroMint = AppTheme(
    accentColor: Color(0xFF26C6DA),
    background1Color: Color(0xFFF2FFFD),
    background2Color: Color(0xFFDDF7F4),
    foregroundColor: Color(0xFF263238),
    titleTextColor: Color(0xFF546E7A),
    backgroundNoteColor: Color(0xFFFFFFFF),
    themeName: "Retro Mint",
    id: 17,
    isDark: false
);



final List<AppTheme> themesList = [
  //Dark Themes
  themeHoloDefault,
  themeForest,
  themeGraphite,
  themeEmber,
  themeCrimsonNight,
  themeTerminal,
  themeGoldenHour,
  themeAurora,
  themeMilitary,
  //Light Themes
  themeMint,
  themeSandyBeach,
  themeSky,
  themeLavender,
  themePaper,
  themeCherryBlossom,
  themePeach,
  themeSeafoam,
  themeRetroMint
];

ValueNotifier<int> curThemeID = ValueNotifier<int>(0);

AppTheme get currentTheme => themesList[curThemeID.value];

Color get accentColor => currentTheme.accentColor;
Color get background1Color => currentTheme.background1Color;
Color get background2Color => currentTheme.background2Color;
Color get foregroundColor => currentTheme.foregroundColor;
Color get titleTextColor => currentTheme.titleTextColor;
Color get backgroundNoteColor => currentTheme.backgroundNoteColor;
