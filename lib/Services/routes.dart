import 'package:flutter/cupertino.dart';
import 'package:buy_by_click/Pages/Types/typePage.dart';
import 'package:buy_by_click/Pages/homePage.dart';
import 'package:buy_by_click/Pages/purchases.dart';
import 'package:buy_by_click/Pages/sales.dart';

final Map<String, WidgetBuilder> routes = {
  Sales.id: (context) => Sales(),
  HomePage.id: (context) => HomePage(),
  TypePage.id: (context) => TypePage(),
  Purchases.id: (context) => Purchases(),
};
