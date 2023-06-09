import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFont{
  static TextStyle headlineStyleGreen20 = GoogleFonts.mPlus1(color: primaryColor,   fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle headlineStyleGreen15 = GoogleFonts.mPlus1(color: primaryColor,   fontSize: 15, fontWeight: FontWeight.bold);
  
  static TextStyle headlineStyleWhite20 = GoogleFonts.mPlus1(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle headlineStyleWhite15 = GoogleFonts.mPlus1(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
  
  static TextStyle headlineStyleBlack20 = GoogleFonts.mPlus1(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle headlineStyleBlack15 = GoogleFonts.mPlus1(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);

  static TextStyle defaultStyleGrey15   = GoogleFonts.mPlus1(color: Colors.grey,  fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleGrey13   = GoogleFonts.mPlus1(color: Colors.grey,  fontSize: 13, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleGrey10   = GoogleFonts.mPlus1(color: Colors.grey,  fontSize: 9,  fontWeight: FontWeight.bold);

  static TextStyle defaultStyleBlack15  = GoogleFonts.mPlus1(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleBlack13  = GoogleFonts.mPlus1(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleBlack10  = GoogleFonts.mPlus1(color: Colors.black, fontSize: 9,  fontWeight: FontWeight.bold);

  static TextStyle defaultStyleWhite15  = GoogleFonts.mPlus1(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleWhite13  = GoogleFonts.mPlus1(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleWhite10  = GoogleFonts.mPlus1(color: Colors.white, fontSize: 9,  fontWeight: FontWeight.bold);

  static TextStyle defaultStyleRed15    = GoogleFonts.mPlus1(color: Colors.red,   fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleRed13    = GoogleFonts.mPlus1(color: Colors.red,   fontSize: 13,  fontWeight: FontWeight.bold);
  static TextStyle defaultStyleRed10    = GoogleFonts.mPlus1(color: Colors.red,   fontSize: 9,  fontWeight: FontWeight.bold);

  static TextStyle defaultStyleBlue15   = GoogleFonts.mPlus1(color: Colors.blue,  fontSize: 15, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleBlue13   = GoogleFonts.mPlus1(color: Colors.blue,  fontSize: 13, fontWeight: FontWeight.bold);
  static TextStyle defaultStyleBlue10   = GoogleFonts.mPlus1(color: Colors.blue,  fontSize: 9,  fontWeight: FontWeight.bold);
  
  static const Color tableColumnsColor = primaryColor;
  static const Color tableBorderColor  = secondaryColor;

  static TextStyle tableTitleStyle(Color color){ return GoogleFonts.mPlus1(color: color, fontSize: 11, fontWeight: FontWeight.w800);}
  static TextStyle tableDefaultStyle(Color color){ return GoogleFonts.mPlus1(color: color, fontSize: 11, fontWeight: FontWeight.normal);}

  static const TextHeightBehavior defaultBehavior = TextHeightBehavior(applyHeightToLastDescent: false, applyHeightToFirstAscent: false);

  // Colors
  static const backGroundColor = Color(0xffffffff);
  static const primaryColor    = Color(0xff14C38E);
  static const secondaryColor  = Color(0xffB8F1B0);
  static const hiddenColor     = Color(0xff000000);

  static const gradientDecolation = BoxDecoration(
    gradient: LinearGradient(
      colors: [primaryColor, secondaryColor],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp
    )
  );


}