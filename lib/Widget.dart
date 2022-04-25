import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customtext1(String txt) {
  return Text(
    txt,
    style: GoogleFonts.baloo(fontSize: 21, fontWeight: FontWeight.bold),
  );
}

Widget customtext2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 20,
    ),
  );
}

Widget customtext2_1(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 15,
    ),
  );
}

Widget customtext2_2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.left,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 35,
    ),
  );
}

Widget customtext2_3(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.left,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 23,
    ),
  );
}

Widget customtext1_1(String textdata) {
  return Text(
    textdata,
    style: GoogleFonts.baloo(
      fontSize: 15,
    ),
  );
}

Widget TextField1(
    String textfielddata, String hintdata, String labeldata, Icon icondata) {
  return TextField(
    style: GoogleFonts.notoSans(fontSize: 18, color: Colors.white),
    scrollPhysics: const BouncingScrollPhysics(),
    decoration: InputDecoration(
      hintText: hintdata,
      labelText: labeldata,
      suffixIcon: icondata,
      hintStyle: GoogleFonts.notoSans(
        fontWeight: FontWeight.bold,
        color: Colors.white30,
        fontSize: 15,
      ),
      labelStyle: GoogleFonts.notoSans(
        // fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
      ),
    ),
  );
}
