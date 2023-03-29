import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget playlistTileWidget(String assetName, String playlistTitle){
  return SizedBox(
    height: 250,
    width: 170,
    child: Column(
      children: [
        SizedBox(
          width: 170,
          height: 170,
          child: Image.asset(assetName),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 10),
          child: Text(
            playlistTitle,
            style: GoogleFonts.roboto(fontSize: 13, color: Colors.white54),
            overflow: TextOverflow.visible,
          ),
        )
      ],
    ),
  );
}