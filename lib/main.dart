import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:buy_by_click/Pages/homePage.dart';
import 'package:buy_by_click/Providers/provider.dart';
import 'package:buy_by_click/Services/routes.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MultiProvider(
      providers: [
        Provider(create: (context) => Providerf()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.id,
        routes: routes,
      ),
    );
  }
}
