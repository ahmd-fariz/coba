import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:sekolah_id/core/utils/constant.dart';
import 'package:sekolah_id/core/utils/navigator_helper.dart';
import 'package:sekolah_id/dashbaord/dashboard.dart';
import 'package:sekolah_id/login/signup.dart';
import 'package:sekolah_id/main_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomPaint(
                size: Size(
                    450,
                    (450 * 0.6892523364485982)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffD8D8D8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xff545151),
                              ),
                              hintText: 'Name'),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffD8D8D8),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff545151),
                              ),
                              hintText: 'Password'),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xff545151), fontSize: 12))),
                        ),
                        SizedBox(height: 40),
                        TextButton(
                            onPressed: () {
                              goRemove(MainPage());
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Color(0xff39938F),
                                padding: EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 80)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 17),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              goPush(signupView());
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(color: Color(0xff3C4D87)),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.2080129, size.height * 0.6520712);
    path_0.cubicTo(
        size.width * -0.2045886,
        size.height * -0.2140197,
        size.width * -0.3532967,
        size.height * -1.591010,
        size.width * 0.4172593,
        size.height * -1.584597);
    path_0.cubicTo(
        size.width * 1.187815,
        size.height * -1.578183,
        size.width * 1.091902,
        size.height * -0.6579797,
        size.width * 1.088479,
        size.height * 0.2081108);
    path_0.cubicTo(
        size.width * 1.085054,
        size.height * 1.074200,
        size.width * 0.8638014,
        size.height * 0.5547390,
        size.width * 0.5033808,
        size.height * 0.5517424);
    path_0.cubicTo(
        size.width * 0.1242633,
        size.height * 0.4720847,
        size.width * -0.2114371,
        size.height * 1.518159,
        size.width * -0.2080129,
        size.height * 0.6520712);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff24465A);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
