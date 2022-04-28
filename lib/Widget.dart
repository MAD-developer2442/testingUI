import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customtitle(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.righteous(
      textStyle: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    ),
  );
}

Widget customtext1(String txt) {
  return Text(
    txt,
    style: GoogleFonts.righteous(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  );
}

Widget customtext1_1(String txt) {
  return Text(
    txt,
    style: GoogleFonts.notoSans(fontSize: 25, color: Colors.white),
  );
}

Widget customtext1_2(String txt) {
  return Text(
    txt,
    style: GoogleFonts.notoSans(fontSize: 23, color: Colors.white),
  );
}

Widget customtext1_3(String txt) {
  return Text(
    txt,
    style: GoogleFonts.notoSans(fontSize: 20, color: Colors.white),
  );
}

Widget customtext2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.righteous(
      color: Colors.white,
      fontSize: 30,
    ),
  );
}

Widget customtext2_1(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.righteous(
      color: Colors.white,
      fontSize: 25,
    ),
  );
}

Widget customtext2_2(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.left,
    style: GoogleFonts.baloo(
      color: Colors.white,
      fontSize: 22,
    ),
  );
}

Widget customtext2_3(String txt) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.robotoSlab(
      color: Colors.white,
      fontSize: 20,
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

Widget customlisttile(String title, Color colors, AssetImage images) {
  return Column(
    children: [
      Card(
        elevation: 10,
        shadowColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: colors.withOpacity(0.5),
        child: Container(
          clipBehavior: Clip.hardEdge,
          width: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 200),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: images,
              colorFilter: ColorFilter.mode(
                  Colors.transparent.withOpacity(0.2), BlendMode.srcATop),
            ),
          ),
          child: customtext2_1(title),
        ),
      ),
    ],
  );
}

Widget customgamelisttile(Color colors, String images, VoidCallback onpress) {
  return GestureDetector(
    onTap: onpress,
    child: Card(
      clipBehavior: Clip.hardEdge,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: Container(
        child: Image.asset(images),
      ),
    ),
  );
}

Widget customnewstile(String title, Color colors, NetworkImage images) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    color: colors,
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: images,
          colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.7), BlendMode.srcATop),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        title: customtext2_3(title),
      ),
    ),
  );
}

Widget customNewsDetails(String images, String title, String content) {
  return Card(
    color: Colors.black,
    child: Column(
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          shadowColor: Colors.grey.shade700,
          child: Image.network(
            images,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25),
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     fit: BoxFit.cover,
          //     alignment: Alignment.center,
          //     image: AssetImage('images/Plane/Valorantlogo.png'),
          //     colorFilter: ColorFilter.mode(
          //         Colors.transparent.withOpacity(0.7), BlendMode.srcATop),
          //   ),
          // ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: customtext2_3("$title"),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: customtext2_1(
                  content,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  ;
}

Widget customgridtile(
    String title, AssetImage images, Color colors, VoidCallback click) {
  return GestureDetector(
    onTap: click,
    child: Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.grey.shade900,
                Colors.black,
              ],
            )),
        child: ListTile(
          title: customtext2(title),
          leading: Image(
            height: 40,
            image: images,
          ),
          trailing: Image(
            height: 40,
            image: images,
          ),
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
