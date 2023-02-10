import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Column circleAvatarBuilder(String imageName, String name) {
      return Column(children: [
        CircleAvatar(
          radius: 65,
          backgroundImage: AssetImage('assets/$imageName.jpg'),
        ),
        const SizedBox(height: 10),
        Text(name, style: const TextStyle(color: Colors.white))
      ]);
    }

    SizedBox suggestionBoxBuilder(String imageName, String artists) {
      return SizedBox(
        height: 130,
        width: 130,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              child: Image.asset('assets/$imageName.jpg', fit: BoxFit.cover)),
          SizedBox(height: 10),
          Flexible(
            child: Text(artists,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w700,
                    wordSpacing: -1)),
          )
        ]),
      );
    }

    Column suggestionColumnBuilder(String imageName, String name) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 130,
            width: 130,
            child: Image.asset('assets/$imageName.jpg')),
        SizedBox(height: 10),
        Text(name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                wordSpacing: -2))
      ]);
    }

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.brown.shade900,
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.black
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                  child: Row(
                    children: [
                      Text(
                        'Good afternoon',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.restore_outlined,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),

                // suggested playlist area

                Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/singles_niall_horan.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Spotify Singles',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/ab67616d0000b273241e4fe75732c9c4b49b94c3.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Made in the A.M (Deluxe Edition)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/ab6765630000ba8a1c75015a4f0646415bfd424e.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Twice as Odd',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset('assets/download.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Lauv',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/midnight_memories.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Midnight Memories (Deluxe)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            )),
                            SizedBox(width: 10),
                            Expanded(
                                child: Container(
                              height: 55,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700.withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                          'assets/ab67706f0000000321a2087747d946f16704b8af.jpg'),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Top Gaming Tracks',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white70),
                                    ),
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ],
                    )),

                // suggestions by kygo column

                Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 5, 5),
                    child: Row(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/ab6761610000e5eb8d49608be7e98ff08be5e952.jpg'),
                        radius: 27,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MORE LIKE',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                          Text(
                            'Kygo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.3),
                          ),
                        ],
                      )
                    ])),

                // kygo suggestions
                Container(
                  height: 180,
                  // color: Colors.grey,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // alesso avatar
                        circleAvatarBuilder(
                            'ab67706f00000003d244b6c77f329392530b7ed4',
                            'Alesso'),
                        SizedBox(width: 10),
                        // dance hits
                        suggestionBoxBuilder(
                            'ab67706f00000003e4df2b9306cf46cc1d4f2794',
                            'Jonas Blue, Dua Lipa, Alen Walker, Taylor Swift, Martin Garrix'),
                        SizedBox(width: 10),
                        // chilled dance hits
                        suggestionBoxBuilder(
                            'ab67706f0000000399d30d1fed5d487ff54420f9',
                            'David Guetta, Selena Gomez, Alen Walker, Taylor Swift, Martin Garrix'),
                        SizedBox(width: 10),
                        // dance hits 2017
                        suggestionBoxBuilder(
                            'ab67706f00000003c39ea435cdd6aa2851f6b03b',
                            'Halsey, Jonas Blue, Alen Walker, Martin Garrix'),
                        SizedBox(width: 10),
                        //kygo radio
                        suggestionBoxBuilder(
                            'ab67706f0000000283481d069985948eacf876d5',
                            'Halsey, Jonas Blue, Alen Walker, Martin Garrix'),
                        SizedBox(width: 15),
                        // clean bandit
                        circleAvatarBuilder(
                            'ab6761610000e5eb7a487027eb0c10af725d5410',
                            'Clean Bandit'),
                        SizedBox(width: 15),
                        // jonas blue, blue album
                        Container(
                          height: 130,
                          width: 130,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Image.asset(
                                        'assets/ab67616d0000b2735b6bcc59c3562a6f362344c6.jpg',
                                        fit: BoxFit.cover)),
                                SizedBox(height: 10),
                                Flexible(
                                  child: Text('Jonas Blue',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Flexible(
                                  child: Text('Album • Blue',
                                      style: TextStyle(
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                )
                              ]),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),

                // recently played text
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 5, 10),
                  child: Text(
                    'Recently Played',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                        fontSize: 20),
                  ),
                ),
                // played suggestions
                Container(
                  height: 180,
                  // color: Colors.grey,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // its gym time boys
                        suggestionColumnBuilder(
                            'Screenshot_20210927-163243', 'Its Gym Time Boys'),
                        SizedBox(width: 10),
                        // s
                        suggestionColumnBuilder(
                            'Screenshot_20210927-163312', ' S'),
                        SizedBox(width: 15),
                        // one direction
                        circleAvatarBuilder(
                            '289c7f686f5b78ceeb224453cf9a15697a678a79',
                            'One Direction'),
                        SizedBox(width: 15),
                        // h-lofi
                        suggestionColumnBuilder(
                            'Screenshot_20210927-163344', ' Hollywood LoFi'),
                        SizedBox(width: 10),
                        // beast mode
                        suggestionColumnBuilder(
                            'ab67706f000000029249b35f23fb596b6f006a15',
                            ' Beast Mode'),
                        SizedBox(width: 10),
                        // power workout
                        suggestionColumnBuilder(
                            'ab67706f000000035b9afc20f73de2953ea450f7',
                            ' Power Workout'),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),

                // Charts text
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 5, 10),
                  child: Text(
                    'Charts',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                        fontSize: 22),
                  ),
                ),
                // charts played suggestions
                Container(
                  height: 180,
                  // color: Colors.grey,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // top 50 global
                        suggestionBoxBuilder(
                            'region_global_large', 'Top 50 Global'),
                        SizedBox(width: 10),
                        // hot hits india
                        suggestionBoxBuilder(
                            'ab67706c0000bebbe501fae5503af974300eed87',
                            'The hottest tracks in India'),
                        SizedBox(width: 15),
                        // hindi hits
                        suggestionBoxBuilder(
                            'ab67706f000000037608110a2965e27a38ba1830',
                            'The most played bollywood songs, updated daily!'),
                        SizedBox(width: 15),
                        // h-lofi
                        suggestionBoxBuilder(
                            'Screenshot_20210927-163344', ' Hollywood LoFi'),
                        SizedBox(width: 15),
                        // motivation mix
                        suggestionBoxBuilder(
                            'ab67706f00000003a088a35ef6e638c42f88deda',
                            ' Motivation Mix'),
                        SizedBox(width: 15),
                        // workout
                        suggestionBoxBuilder(
                            'ab67706f000000039cc6891dbc9b7292361bd673',
                            ' Workout'),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 100)
              ],
            ),
          ]),
        ),
        floatingActionButton: Container(
          height: 60,
          child: Row(children: [
            SizedBox(width: 35),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff554954),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                                'assets/317d81e8a48ce3f8cb69e1950ecc9aec.1000x1000x1.jpg'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 0.1),
                              ),
                              Text('Clara Mae',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white70,
                                      fontSize: 13,
                                      letterSpacing: 0.1))
                            ]),
                        Expanded(child: SizedBox()),
                        Container(
                            height: 22,
                            width: 22,
                            child: Image.asset(
                                'assets/51611915675wmb5cgaf3d.png')),
                        SizedBox(width: 10),
                        Icon(Icons.play_arrow, size: 30, color: Colors.white70),
                        SizedBox(width: 15),
                      ],
                    )))
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.85),
          selectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Library'),
          ],
        ),
      ),
    );
  }
}
