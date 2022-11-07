import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

double width = MediaQuery.of(navigatorKey.currentContext!).size.width;

double height = MediaQuery.of(navigatorKey.currentContext!).size.height;

var primaryColor = Color(0xff0EB7B0);
