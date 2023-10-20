import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerWidget extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String subject_1;
  final String subject_2;
  final String content;
  YouTubePlayerWidget({
    required this.videoUrl,
    required this.title,
    required this.subject_1,
    required this.subject_2,
    required this.content,
  });

  @override
  _YouTubePlayerWidgetState createState() => _YouTubePlayerWidgetState();
}

class _YouTubePlayerWidgetState extends State<YouTubePlayerWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.red,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title.toUpperCase()),
            centerTitle: true,
          ),
          body: Column(
            children: [
              player,
              Container(
                margin: EdgeInsets.only(top: 15, right: 25, left: 25),
                child: Column(children: [
                  Text(
                    widget.subject_1.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Align(
                  //   alignment: Alignment.center, // Mengatur teks ke ujung kiri
                  //   child: SizedBox(
                  //     height: 50,
                  //     width: 220,
                  //     child: OutlinedButton(
                  //       onPressed: () {},
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all<Color>(Colors.red),
                  //       ),
                  //       child: Text(
                  //         widget.subject_2.toUpperCase(),
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 18,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  Text(widget.content,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        // fontFamily: 'TimesNewRoman',
                      )),
                  SizedBox(
                    width: 250,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Text(
                        "KEMBALI",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        );
      },
    );
  }
}
