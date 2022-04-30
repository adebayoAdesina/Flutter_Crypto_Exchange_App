import 'package:flutter/material.dart';

import '../Colors/colors.dart';
  Widget keyboard(var values, String text, var widths) {
    
    return SizedBox(
      child: values != '' ? Container(
        height: 50,
        width: widths*0.30,
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),

          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 6
              ),
              child: values != 'Icon' ? Text(
                values.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ): const Icon(Icons.disabled_by_default_outlined)
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w400
              ),
            )
          ],
        )
      ): SizedBox(
        height: 50,
        width: widths*0.30,
      )
    );
  }
