import 'package:flutter/material.dart';
import 'core/router/router.dart';

const DefaultErrorMessage = 'خطأ في الانترنت!';

String getAsset(String imageName) => 'assets/images/$imageName.png';

String getLottie(String lottie) => 'assets/lottie/$lottie.json';

// void showInternetErrorMessage ()=> showSna(DefaultErrorMessage, color: Colors.red);

double get gridViewChildRatio => sizeFromWidth(1.0) / sizeFromHeight(1.5);

SliverGridDelegate get gridViewDelegate => SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: gridViewChildRatio,crossAxisSpacing: 15,mainAxisSpacing: 15);

String reformatTime(TimeOfDay value){
  final reformatted = value.hour.toString().padLeft(2,'0') + ':' + value.minute.toString().padLeft(2,'0') + ':00';
  return reformatted;
}

String reformatDate(DateTime? value){
  if(value == null) return '';
  final reformatted = value.year.toString() + '-' + value.month.toString().padLeft(2,'0') + '-' + value.day.toString().padLeft(2,'0');
  return reformatted;
}

String get getCurrentTimeCustomized {
  final now = TimeOfDay.now();
  final time = '${now.hour.toString().padLeft(2,'0')}:${now.minute.toString().padLeft(2,'0')}:00';
  return time;
}

String get getTodayDateCustomized {
  final now = DateTime.now();
  final date = '${now.year}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')}';
  return date;
}

String getOrderStatusTitle(String value){
  if(value == '0')
    return "طلب قيد الانتظار";
  else if(value == '1')
    return  "طلب قيد التنفيذ";
  else if(value == '2')
    return "طلب منتهي";
  else
    return "طلب ملغي";
}

const Color kPrimaryColor = Color(0xFF1492E6);
final Color kAccentColor = Color(0xFF1492E6).withOpacity(0.3);
// const Color kLightGreyColor = Color(0xFFB5B5B5);
const Color kGreyColor = Color(0xFFF2F2F2);
const Color kDarkGreyColor = Color(0xFF555555);
final Color kBackgroundColor = Colors.white;

ThemeData theme = ThemeData(
  platform: TargetPlatform.iOS,
  primaryColor: kPrimaryColor,
  // cursorColor: kPrimaryColor,
  canvasColor: kBackgroundColor,
  fontFamily: 'Tajawal',
  // appBarTheme: AppBarTheme(
  //   // titleTextStyle: TextStyle(color: k),
  //   // iconTheme: IconThemeData(color: Colors.white),
  // ),
  textButtonTheme: TextButtonThemeData(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(kPrimaryColor)),),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
);

final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    border: Border.all(color: Colors.black54, width: 0.2));

void closeKeyboard() => FocusScope.of(MagicRouter.currentContext).requestFocus(FocusNode());

TextTheme get getTextTheme => Theme.of(MagicRouter.currentContext).textTheme;

double sizeFromHeight(double fraction,
    {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(MagicRouter.currentContext);
  fraction = (removeAppBarSize
          ? (mediaQuery.size.height -
              AppBar().preferredSize.height -
              mediaQuery.padding.top)
          : (mediaQuery.size.height)) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction = MediaQuery.of(MagicRouter.currentContext).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}
