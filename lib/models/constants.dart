import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF4CAF50);
const kSecondaryColor = Color(0xFF81C784);
const kBackgroundColor = Color(0xFFF5F5F6);

const primaryColor = Color(0xFF2196F3);
const secondaryColor = Color(0xFF4CAF50);
const textColor = Color(0xFF212121);


const kTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.black,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
