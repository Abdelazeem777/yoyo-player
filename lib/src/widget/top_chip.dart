import 'package:flutter/material.dart';

Widget topChip(Widget data, Function fun) {
  return InkWell(
    onTap: fun,
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0x889E9E9E), borderRadius: BorderRadius.circular(5)),
      child: data,
    ),
  );
}
