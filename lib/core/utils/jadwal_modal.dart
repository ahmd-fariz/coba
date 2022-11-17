import 'package:flutter/material.dart';

import 'constant.dart';

class Jadwal extends StatelessWidget {
  String mapel;
  String jam;
  String guru;

  Jadwal({
    Key? key,
    required this.mapel,
    required this.jam,
    required this.guru,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 20, right: 15),
      height: 120,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff0EB7B0), width: 2),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mapel,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                jam,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            guru,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
