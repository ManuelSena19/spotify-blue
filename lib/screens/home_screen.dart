import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spotify_blue/widgets/current_song_widget.dart';
import 'package:spotify_blue/widgets/playlist_tile_widget.dart';
import 'dart:core';
import 'package:spotify_blue/widgets/recent_tile_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/song_tile_widget.dart';

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
              MdiIcons.bookshelf,
              size: 30,
              color: Colors.white,
            ),
            label: "Your Library",
          ),
        ],
        fixedColor: Colors.white,
        backgroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
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
                          fontSize: 25, fontWeight: FontWeight.bold)),
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
                    height: 35,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Music",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontSize: 13)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 35,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white12,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Podcasts & Shows",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 13),
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
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("Your top mixes",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
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
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 10),
                child: Text("Made For Sena⭐",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
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
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 10),
                child: Text("More of what you like",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/locked_in.png",
                      "Drake, 21 Savage, Metro Boomin, Chris Brown, J...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/power_workout.png",
                      "Drake, 21 Savage, Lil Baby, Metro Boomin, Chris ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/beast_mode_hh.png",
                      "Drake, 21 Savage, Lil Baby, Lil Wayne, Lil Durk and ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/african_heat.png",
                      "Burna Boy, Chris Brown, Mr Eazi, King Promise, ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/beast_mode.png",
                      "Drake, 21 Savage, The Weeknd, Lil Baby, Justi...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/rap_caviar.png",
                      "Justin Bieber, Roddy Ricch, Lil Wayne, Metro Boomin",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/top_gaming.png",
                      "Metro Boomin, The Weeknd, 21 Savage, Dr...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 10),
                child: Text("Recently played",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/drake_x_future.png", "Drake X Future", ""),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/power_gaming.png", "Power Gaming", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/daily_mix_1.png", "Daily Mix 1", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/clb.png", "Certified Lover Boy", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/more_life.png", "More Life", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/her_loss.png", "Her Loss", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/hip_hop_mix.png", "Hip Hop Mix", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/scorpion.png", "Scorpion", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/nwts.png", "Nothing Was The Same", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/chill_mix.png", "Chill Mix", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/afrobeats_mix.png", "Afrobeats Mix", ''),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: Text("Hip Hop",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/bae.png",
                      "Lil Baby, Fridayy, Drake, 21 Savage, Roddy Ricch",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/hot_rhythmic.png",
                      "Metro Boomin, Travis Scott, Roddy Ricch, Drake",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/beast_mode_hh.png",
                      "Drake, 21 Savage, Lil Baby, Lil Wayne, Lil Durk",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/lil_baby.png",
                      "Lil Baby, Drake, Travis Scott, Lil Durk, Young Thug",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/jump_off.png",
                      "Justin Bieber, Lil Durk, Roddy Ricch, Stormzy",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/rap_caviar.png",
                      "Justin Bieber, Roddy Ricch, Lil Wayne, Metro Boomin",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/afro.png",
                      "Chris Brown, Wizkid, Tems, Burna Boy, Dave and more",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/asakaa.png",
                      "Headie One, Kwesi Arthur, Stormzy, ArrDee and more",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/+233.png",
                      "Headie One, Kwesi Arthur, Burna Boy, Bob Marley",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("FitFam",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/pump_it_up.png",
                      "Hip hop tracks to kick your workout up a notch",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/keep_fit.png",
                      "Your go to Afrobeats workout playlist",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/beast_mode_amapiano.png",
                      "Amapiano tracks to fuel your beast mode!",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/sakata.png",
                      "Bongo Flava meets amapiano. Lets dance ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("Editor's Picks",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/african_heat.png",
                      "Burna Boy, Chris Brown, Mr Eazi, King Promise",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/free.png",
                      "Kwesi Arthur, King Promise, KiDi, Mr Eazi, ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/hot_hits.png",
                      "Davido, Kwesi Arthur, King Promise, Mr Eazi, ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/+233.png",
                      "Kwesi Arthur, Headie One, Burna Boy, Bob Marley",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/equal.png",
                      "Some of the most influential and innovative voices...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/daily_hustle.png",
                      "Burna Boy, Dave, Polo G, Fridayy, Davido",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("Bests of artists",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/future.png",
                      "Drake, Lil Baby, Tems, Roddy Ricch, Travis Scott",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/drake.png",
                      "Hear all of Drake's biggest and best in one playlist...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/lil_baby.png",
                      "Lil Baby, Drake, Travis Scott, Lil Durk, Young Thug",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/young_thug.jpg",
                      "This is Young Thug. The essential tracks, all in ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/lil_durk.png",
                      "This is Lil Durk. The essential tracks, all in ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/metro.jpg",
                      "This is Metro Boomin. The essential tracks, all in ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/rr.png",
                      "This is Roddy Ricch. The essential tracks, all in ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("Uniquely yours",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/repeat.jpg",
                      "Songs you love right now",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/time.jpg",
                      "We made you a personalized playlist ...",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    playlistTileWidget(
                      "assets/rewind.jpg",
                      "Your past favourites",
                    ),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 20),
                child: Text("Drake",
                    style: GoogleFonts.roboto(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/iyrtitl.png", "If You're Reading Thi..",
                        "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/views.png", "Views", "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/wattba.png", "What A Time To Be...",
                        "Album • Drake, Future"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/clb.png", "Certified Lover Boy", "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/more_life.png", "More Life", "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/her_loss.png", "Her Loss", "Album • 21 Savage"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget("assets/take_care.png", "Take Care (Deluxe)",
                        "Album - Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/scorpion.png", "Scorpion", "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    songTileWidget(
                        "assets/nwts.png", "Nothing Was The...", "Album • Drake"),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 59.92,
              left: 7,
              right: 7,
              child: currentSongWidget(context, "assets/wattba.png", "Jersey • Future", "SENA"),
          ),
        ],
      ),
    );
  }
}
