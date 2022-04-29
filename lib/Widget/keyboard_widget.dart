import 'package:flutter/material.dart';

import '../Colors/colors.dart';
  Widget Keyboard(int values, String text, var heights, var widths) {
    
    return Container(
      color: whiteColor,
      height: heights*0.075,
      width: widths*0.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              values.toString()
            ),
            Text(
              text
            )
          ],
        ),
      ),
    );
  }
