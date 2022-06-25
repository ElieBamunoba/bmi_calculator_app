import 'package:flutter/material.dart';

Widget card(Color color) {
  return Container(
    margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
  );
}
