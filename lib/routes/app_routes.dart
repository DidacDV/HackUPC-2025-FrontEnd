import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/screens/predict_screen.dart';
import '/screens/home_screen.dart';
import '/screens/profile_screen.dart';
import '/screens/nfcbizum_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String predict = '/predict';
  static const String nfcbizum = '/nfcbizum';
  static Map<String, WidgetBuilder> routes = {
    profile: (context) => const ProfileScreen(),
    predict: (context) => const PredictScreen(),
    nfcbizum: (context) => const NfcbizumScreen(),
  };
}