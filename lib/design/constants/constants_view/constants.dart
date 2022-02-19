import 'package:flutter/material.dart';

//our constants values weee will define here
const kPrimaryColor = Colors.purple;
const kScaffoldColor = Colors.purple;
const kTextColorDark = Colors.purple;
const kTextColorWhite = Color(0xFFFDFEFE);
const kTextColorLight = Colors.purple;
const kOutlineInputColor = Colors.purple;

const kDefaultPadding = 20.0;

//conditions for mobile number
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//conditions for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
