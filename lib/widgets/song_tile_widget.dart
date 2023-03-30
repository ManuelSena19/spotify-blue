import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget songTileWidget(String assetName, String songTitle, String subtitle){
  return SizedBox(
    height: 180,
    width: 140,
    child: Column(
      children: [
        SizedBox(
          width: 140,
          height: 140,
          child: Image.asset(assetName),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Text(
          songTitle,
          style: GoogleFonts.roboto(fontSize: 13, color: Colors.white),
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(
          subtitle,
          style: GoogleFonts.roboto(fontSize: 13, color: Colors.white54),
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}