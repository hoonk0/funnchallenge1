import 'package:flutter/material.dart';
import 'package:funnchallenge/route/route_splash.dart';
import 'package:sizer/sizer.dart';


void main() async {

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        home: const RouteSplash(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.brown,
          appBarTheme: AppBarTheme(
            color: Colors.brown,
          ),
        ),
      ),
    ),
  );
}
