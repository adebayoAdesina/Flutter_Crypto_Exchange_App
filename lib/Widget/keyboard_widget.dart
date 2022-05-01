import 'package:flutter/material.dart';

import '../Colors/colors.dart';
  Widget keyboard(var values, String text, var widths) {
    
    return SizedBox(
      child: values != '' ? Container(
        height: 50,
        width: widths*0.30,
        decoration: BoxDecoration(
          color: values != 'Icon' ? whiteColor : backgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),

          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: values != 'Icon' ? 4 : 0,
                    // offset: Offset(3,7)
            )
          ]
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
              ): const Padding(
                padding: EdgeInsets.only(
                  top: 4
                ),
                child: Icon(Icons.disabled_by_default_outlined),
              )
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
