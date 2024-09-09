import 'package:flutter/material.dart';

AppBar appBarText(
  { required String title,  required String subtitle}
) {
  return AppBar(
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
              color: Colors.black,
            ),
            child:  Text( title,
                style: const TextStyle(
                  color: Colors.white,
                ))),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
              ),
              color: Colors.amber,
            ),
            child:   Text(subtitle, style: const TextStyle(color: Colors.white))),
      ],
    ),
  );
}
