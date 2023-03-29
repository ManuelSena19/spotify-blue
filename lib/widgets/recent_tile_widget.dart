import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget recentTileWidget(String assetName, String recentPlaylistName) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white12, borderRadius: BorderRadius.circular(5)),
    height: 50,
    width: 185,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            child: Image.asset(assetName)),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            recentPlaylistName,
            style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
