import 'package:flutter/material.dart';

//our constants values weee will define here
const kPrimaryColor = Colors.amber;
const kScaffoldColor = Colors.amber;
const kTextColorDark = Colors.amber;
const kTextColorWhite = Color(0xFFFDFEFE);
const kTextColorLight = Colors.amber;
const kOutlineInputColor = Colors.amber;

const kDefaultPadding = 20.0;

//conditions for mobile number
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//conditions for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
