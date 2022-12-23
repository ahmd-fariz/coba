import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/navigator_helper.dart';


class TopUpView extends StatefulWidget {
  const TopUpView({super.key});

  @override
  State<TopUpView> createState() => _TopUpViewState();
}

class _TopUpViewState extends State<TopUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "TOP UP",
          style: TextStyle(
              color: Colors.black,
              fontSize: size / 20,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            goBack();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: size / 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Rp.500.000",
                          style: TextStyle(
                              fontSize: size / 23,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              size: size / 23,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: size / 23,
                            )),
                      ],
                    )
                  ],
                ),
                Text(
                  "Jumlah",
                  style: TextStyle(
                      fontSize: size / 23,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transfer Bank",
                        style: TextStyle(
                            fontSize: size / 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Image.asset("assets/images/money.png")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "DANA",
                          style: TextStyle(
                              fontSize: size / 23,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/dana.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ShopeePay",
                        style: TextStyle(
                            fontSize: size / 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/shopee.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gopay",
                        style: TextStyle(
                            fontSize: size / 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/gopay.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "OVO",
                        style: TextStyle(
                            fontSize: size / 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage("assets/images/ovo.png"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  height: height / 16,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "LinkAja",
                        style: TextStyle(
                            fontSize: size / 23,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundImage:
                            AssetImage("assets/images/LinkAja.png"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
