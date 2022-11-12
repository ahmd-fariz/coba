import 'package:flutter/material.dart';

import '../core/utils/constant.dart';
import '../core/utils/navigator_helper.dart';

class MapelMtk extends StatefulWidget {
  const MapelMtk({super.key});

  @override
  State<MapelMtk> createState() => _MapelMtkState();
}

class _MapelMtkState extends State<MapelMtk> {
  final List materi = [
    'Materi 6',
    'Materi 5',
    'Materi 4',
    'Materi 3',
    'Materi 2',
    'Materi 1',
  ];

  final List judul = [
    'Barisan dan Deret',
    'Barisan dan Deret',
    'Program Linier',
    'Limit Fungsi ',
    'Geometri Bidang Datar',
    'Pertidaksamaan Linear',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Matematika",
          style: TextStyle(
              fontSize: size / 20,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              goBack();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: size / 20,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: height,
        width: width,
        child: ListView.builder(
          itemCount: materi.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Stack(children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 30, top: 10, right: 15),
                    height: 100,
                    width: width,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/book.png",
                          color: Colors.white,
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Materi baru : " + materi[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              judul[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "teggat : 27 Agt 11:30",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
            ]);
          },
        ),
      ),
    );
  }
}
