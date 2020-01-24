import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.grey[350],
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  //color: Colors.blue[100],
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(color: Colors.blue[100], width: 1.0),
  /*  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ], */
);

final kTitleStyle = TextStyle(
  color: Colors.black,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  height: 1.2,
);

final TextStyle fadedTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Color(0x99FFFFFF),
);

final TextStyle whiteHeadingTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle categoryTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle selectedCategoryTextStyle = categoryTextStyle.copyWith(
  color: Color(0xFFFF4700),
);

final TextStyle eventTitleTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF000000),
);

final TextStyle eventWhiteTitleTextStyle = TextStyle(
  fontSize: 38.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFFFFFFFF),
);

final TextStyle eventLocationTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF000000),
);

final TextStyle guestTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFF000000),
);

final TextStyle punchLine1TextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w800,
  color: Color(0xFFFF4700),
);

final TextStyle punchLine2TextStyle =
    punchLine1TextStyle.copyWith(color: Color(0xFF000000));
