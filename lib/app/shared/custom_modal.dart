import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../core/utils/constant.dart';
import '../core/utils/navigator_helper.dart';

// ADD LINK
AddLink() => showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(
            "Add Link",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          content: TextFormField(
            decoration: InputDecoration(
              hintText: "URL",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    goBack();
                  },
                  child: Text(
                    "Cancelled",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ));

// ADD FILE
AddFile() => showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(""),
          content: ElevatedButton(
            onPressed: () {
              openFile();
            },
            child: Text("Select the file"),
            style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: Size(270, 50),
                padding: EdgeInsets.all(10),
                primary: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
          actions: [
            TextButton(
              onPressed: () {
                goBack();
              },
              child: Text(
                "Cancelled",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ],
        ));

//OPEN FILE
void openFile() async {
  FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
  if (resultFile != null) {
    PlatformFile file = resultFile.files.first;
    print(file.name);
    print(file.bytes);
  } else {}
}
