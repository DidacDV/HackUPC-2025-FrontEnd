import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revolut_hackupc/routes/app_routes.dart';
import 'package:revolut_hackupc/screens/TabScaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: TabScaffold(),
      routes: AppRoutes.routes,
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'AeonikPro', // Apply the custom font globally
          ),
        ),
      ),
    );
  }
}
