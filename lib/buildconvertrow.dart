import 'package:flutter/material.dart';
import 'package:ui_desgin/uidesign.dart';

Column BuildconverRow(
    String name, String message, String filename, int msgcount) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              circleavater(filename: filename),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 25,
            ),
            child: Column(
              children: [
                Text(
                  '3:45',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                if (msgcount > 0)
                  CircleAvatar(
                    radius: 7,
                    child: Text(
                      msgcount.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    backgroundColor: Colors.green,
                  ),
              ],
            ),
          )
        ],
      ),
      Divider(
        indent: 70,
      )
    ],
  );
}
