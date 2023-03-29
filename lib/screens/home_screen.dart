import 'package:flutter/material.dart';
import 'package:spotify_blue/widgets/playlist_tile_widget.dart';
import 'dart:core';
import 'package:spotify_blue/widgets/recent_tile_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _greeting;

  void setGreeting() {
    int hour = DateTime.now().hour;
    String greeting;
    if (hour >= 6 && hour < 12) {
      greeting = "Good morning";
    } else if (hour >= 12 && hour < 18) {
      greeting = "Good afternoon";
    } else {
      greeting = "Good evening";
    }
    setState(() {
      _greeting = greeting;
    });
  }

  @override
  void initState() {
    super.initState();
    setGreeting();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0FFFFFFF),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 30,
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_add,
              size: 30,
              color: Colors.white,
            ),
            label: "Your Library",
          )
        ],
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(_greeting,
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.bold)),
              Expanded(child: Container()),
              const Icon(Icons.notifications_none),
              const SizedBox(
                width: 18,
              ),
              const Icon(Icons.access_time_rounded),
              const SizedBox(
                width: 18,
              ),
              const Icon(Icons.settings_outlined),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 30,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white12,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text("Music",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 10, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 30,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white12,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text(
                        "Podcasts & Shows",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              recentTileWidget("assets/daily_mix_1.png", "Daily Mix 1"),
              Expanded(child: Container()),
              recentTileWidget("assets/drake_x_future.png", "Drake X Future"),
              const SizedBox(
                width: 17,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              recentTileWidget("assets/afrobeats_mix.png", "Afrobeats Mix"),
              Expanded(child: Container()),
              recentTileWidget("assets/her_loss.png", "Her Loss"),
              const SizedBox(
                width: 17,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 17,
              ),
              recentTileWidget("assets/clb.png", "Certified Lover Boy"),
              Expanded(child: Container()),
              recentTileWidget("assets/scorpion.png", "Scorpion"),
              const SizedBox(
                width: 17,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            child: Text("Your top mixes",
                style: GoogleFonts.roboto(
                    fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/drake_mix.png",
                  "Lil Uzi Vert, J. Cole and Kendrick Lamar",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/chill_mix.png",
                  "The Weeknd, Lil Durk and Roddy Ricch",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/future_mix.png",
                  "J. Cole, Offset and Kendrick Lamar",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/pop_mix.png",
                  "Justin Bieber, Rihanna and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/rnb_mix.png",
                  "Chris Brown, SZA, The Weeknd and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/hip_hop_mix.png",
                  "Dreamville, Drake, Meek Mill and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 15),
            child: Text("Made For Sena",
                style: GoogleFonts.roboto(
                    fontSize: 28, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/daily_mix_2.png",
                  "Future, Lil Baby, Benny The Butcher and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/daily_mix_3.png",
                  "Burna Boy, Wizkid, Asake and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/daily_mix_4.png",
                  "Kwesi Arthur, Sarkodie, R2Bees and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/daily_mix_5.png",
                  "Nas, 2 Chainz, 2Pac and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/daily_mix_6.png",
                  "Moko, Dave, Headie One and more",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                playlistTileWidget(
                  "assets/discover_weekly.png",
                  "Your weekly mixtape of fresh music. Enjoy new...",
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
