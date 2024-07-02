import 'package:flutter/material.dart';


import 'colors.dart';

class BD extends BoxDecoration {
  /* 달력에서 defaultCircle */
  const BD.defaultCircle(Color color)
      : super(
    color: color,
    shape: BoxShape.rectangle,
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  );

  const BD.marker(Color color) : super(color: color, shape: BoxShape.circle);

  /* bottomNavi */
  BD.bottomNavi()
      : super(
    color: colorWhite,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(24),
      topRight: Radius.circular(24),
    ),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF000000).withOpacity(0.05),
        blurRadius: 10,
        offset: const Offset(0, -2),
      ),
    ],
  );
}
