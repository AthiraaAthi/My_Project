import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_constant/color_constant.dart';

class FontConstant {
  static TextStyle myFonts = GoogleFonts.robotoSlab(
      fontWeight: FontWeight.bold, color: ColorConstant.White);
  static TextStyle Heading =
      GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 20);
  static TextStyle Sentence = GoogleFonts.playfairDisplay(fontSize: 15);
}