import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_01/classes/mixed_films/all_films.dart';
import 'package:portfolio_01/classes/mixed_films/film_description.dart';
import 'package:portfolio_01/storages/icon_theme_shPreference.dart';
import 'package:portfolio_01/widgets/share_.dart';
import 'package:translator/translator.dart';

class TopRatedDetails extends StatefulWidget {
  TopRatedDetails({super.key, required this.filmDesc, required this.allFilms, required this.sValue});

  bool sValue;
  late HomePage isActive;
  FilmDesc filmDesc;
  AllFilms allFilms;

  @override
  State<TopRatedDetails> createState() => _TopRatedDetailsState();
}

class _TopRatedDetailsState extends State<TopRatedDetails> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late GoogleTranslator googleTranslator = GoogleTranslator();
  String details = "Details";

  void translate() {
    googleTranslator.translate(details, to: "ru").then((value) {
      setState(() {
        details = value.toString();
        value = details as Translation;
      });
    });
  }

  @override
  void initState() {
    initializeVideoPlayer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _customVideoPlayerController.dispose();
  }

  bool fakeBool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.sValue ? Colors.white : null,
      appBar: AppBar(
          backgroundColor: widget.sValue ? Color(0xFFFF0000): null,
          title: TextButton(
              child: Text(
                details,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  translate();
                });
              })),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: widget.sValue ? Colors.white : Color(0xFF0A1649),
                height: 400,
                width: double.infinity,
                child: CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
              ),
            ),
            Gap(10),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(widget.allFilms.images, height: 270, fit: BoxFit.fitHeight),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //put the video init
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Text("Title: ${widget.filmDesc.title}", style: const TextStyle(color: Color(0xFFFF0000))),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Year: ${widget.filmDesc.date.toString()}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Duration: ${widget.filmDesc.duration}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Gener: ${widget.filmDesc.type}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                ],
              ),
            ),
            const Gap(20),
            const Text("About Movie", style: TextStyle(color: Color(0xFFCBA30E), fontSize: 30)),
            const Gap(20),
            Text(
              widget.filmDesc.description,
              style: TextStyle(color: widget.sValue ? Colors.yellow[900] : Colors.yellow),
            ),
            IconButton(
                onPressed: () {
                  sharePressed();
                },
                icon: Icon(Icons.share))
          ],
        ),
      ),
    );
  }

  void initializeVideoPlayer() {
    CachedVideoPlayerController _cachedVideoPlayerController;
    _cachedVideoPlayerController = CachedVideoPlayerController.asset(widget.filmDesc.url)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }
}
