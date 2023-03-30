import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget currentSongWidget(BuildContext context, String assetName,
    String songTitle, String deviceName) {
  return Container(
    height: 55,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(assetName)),
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 8,),
              Text(
                songTitle,
                style: GoogleFonts.roboto(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 3)),
                  const Icon(
                    MdiIcons.volumeHigh,
                      color: Colors.green,
                    ),
                  const Padding(padding: EdgeInsets.only(right: 3)),
                  Text(
                    deviceName,
                    style: GoogleFonts.roboto(
                        fontSize: 10,
                        color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(child: Container()),
        const Icon(Icons.laptop, color: Colors.green, size: 30,),
        const SizedBox(
          width: 18,
        ),
        const Icon(MdiIcons.heartOutline, size: 30,),
        const SizedBox(
          width: 18,
        ),
        const Icon(Icons.play_arrow, size: 30,),
        const SizedBox(
          width: 8,
        ),
      ],
    ),
  );
}
