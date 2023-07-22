//import 'dart:ui';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:travel/screen/category.dart';
import 'package:travel/screen/categoryType.dart';
import 'package:travel/screen/screenMain.dart';
import '../screen/tripDetails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Localizations Sample App',
  /*localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('ar', 'AE'), // English, no country code
  ],*/
      home: screenMain(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'notasans',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            fontFamily: 'notasans',
            color: Colors.white,
            fontSize: 20 ,
            fontWeight: FontWeight.bold,
            
          )
        )
      ),
      routes: {
      //  '/':(context) => HomePage() ,
        CategoryType.routcategorytype:(context) => CategoryType() ,
        TripDetails.srreenRoute :(context) => TripDetails() ,
      },
    );
  }
}