import 'package:flutter/material.dart';
import 'package:htn/newbox.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              // back + home buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: NewBox(child: Icon(Icons.arrow_back)),
                  ),
                  Text(
                      '︎Walk with R & B︎',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: NewBox(child: Icon(Icons.home)),
                  )
                ],
              ),

              const SizedBox(height: 15),

              // album, artist, title
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: AssetImage('lib/images/album_cover.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chamsom',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Dream Wave',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                              Icons.favorite,
                              color: Color(0xfffff967),
                              size: 36
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 45),

              // start time, shuffle button, repeat button, end time
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: const [
              //     Text(
              //       '-',
              //       style: TextStyle(
              //         fontSize: 48,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Icon(Icons.shuffle),
              //     Icon(Icons.repeat),
              //     Text(
              //       '+',
              //       style: TextStyle(
              //         fontSize: 48,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ],
              // ),
              //
              // const SizedBox(height: 15),

              // linear bar welp this doesn't work
              // NewBox(
              //   child: LinearPercentIndicator(
              //       lineHeight: 10,
              //       percent: 0.5,
              //       progressColor: Colors.green,
              //       backgroundColor: Colors.transparent,
              //   ),
              // ),
              //
              // const SizedBox(height: 25),

              // prev song, pause play, skip to next song
              SizedBox(
                height: 50,
                child: Row(
                  children: const [
                    Expanded(
                      child: NewBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        child: NewBox(
                            child: Icon(
                          Icons.play_arrow,
                          size: 32,
                        )),
                      ),
                    ),
                    Expanded(
                      child: NewBox(
                          child: Icon(
                        Icons.skip_next,
                        size: 32,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
