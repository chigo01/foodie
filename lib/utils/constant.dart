import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

Color kbackgroundColor = const Color(0xff1f2027);

Color KfoodContainerColor = const Color(0xff414047);
Color kgreen = const Color(0xff00855F);
Color kyellow = const Color(0xfffbb72c);

TextStyle ktextStyle = GoogleFonts.poppins(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.normal,
);
var kfirstScreen = GoogleFonts.poppins(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none);

var kfirstScreen1 = GoogleFonts.poppins(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none);

class ApiConstants {
  static String baseUrl =
      'https://tasty.p.rapidapi.com/recipes/list?rapidapi-key=';
  static String usersEndpoint =
      '557785f967msh1f431a09c7fd3d4p174d37jsn43f4514605d2';
}
