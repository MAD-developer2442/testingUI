import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customtitle(String txt) {
  return Container(
    child: Text(
      txt,
      textAlign: TextAlign.center,
      style: GoogleFonts.notoSans(
        textStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget customtext1(String txt) {
  return Text(
    txt,
    style: GoogleFonts.notoSans(
        fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

Widget customtext1_1(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.notoSans(fontSize: 17, color: Colors.white),
  );
}

Widget customtext2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 25,
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

Widget customlisttile(
    String title, String subtitle, Color colors, AssetImage images) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    color: colors,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: images,
          colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.5), BlendMode.srcATop),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        title: customtext2(title),
        subtitle: customtext1_1(subtitle),
      ),
    ),
  );
}

Widget customgridtile(String title, AssetImage images, Color colors) {
  return Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple.shade900,
              Colors.black,
            ],
          )),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        title: customtext2(title),
        leading: Image(
          image: images,
        ),
        trailing: Image(
          image: images,
        ),
      ),
    ),
  );
}

Widget Space() {
  return const SizedBox(
    height: 20,
  );
}
