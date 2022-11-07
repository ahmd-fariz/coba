import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sekolah_id/dashbaord/dashboard.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sekolah_id/list-book/book.dart';
import 'package:sekolah_id/notification/notification.dart';
import 'package:sekolah_id/profile/profile.dart';
import 'package:sekolah_id/spp/spp.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    sppView(),
    bookView(),
    dashboardView(),
    notificationView(),
    profileView()
  ];

  int myIndex = 2;

  void onTap(int index) {
    setState(() {
      myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BOTTOM NAVIGATION BAR
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.money,
              color: Color(0xFFB6B6B6),
            ),
            label: "",
            activeIcon: Icon(
              PhosphorIcons.money,
              color: Color(0xFF3A5661),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.bookFill,
              color: Color(0xFFB6B6B6),
            ),
            label: "",
            activeIcon: Icon(
              PhosphorIcons.bookFill,
              color: Color(0xFF3A5661),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.houseFill,
              color: Color(0xFFB6B6B6),
            ),
            label: "",
            activeIcon: Icon(
              PhosphorIcons.houseFill,
              color: Color(0xFF3A5661),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.bellSimpleFill,
              color: Color(0xFFB6B6B6),
            ),
            label: "",
            activeIcon: Icon(
              PhosphorIcons.bellSimpleFill,
              color: Color(0xFF3A5661),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.userCircleFill,
              color: Color(0xFFB6B6B6),
            ),
            label: "",
            activeIcon: Icon(
              PhosphorIcons.userCircleFill,
              color: Color(0xFF3A5661),
            ),
          ),
        ],
      ),
    );
  }
}
