import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

double width = MediaQuery.of(navigatorKey.currentContext!).size.width;

double height = MediaQuery.of(navigatorKey.currentContext!).size.height;

double top = MediaQuery.of(navigatorKey.currentContext!).padding.top;

double size = MediaQuery.of(navigatorKey.currentContext!).size.width;

final myAppBar = AppBar();

final bodyHeight = height - myAppBar.preferredSize.height - top;

var primaryColor = Color(0xff0EB7B0);
