import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_01/classes/categorised_films/categorised_films.dart';
import 'package:portfolio_01/classes/categorised_films/film_category.dart';
import 'package:translator/translator.dart';

import '../widgets/share_.dart';

class HorrorScreenDetails extends StatefulWidget {
  HorrorScreenDetails(
      {super.key,
      required this.horror,
      required this.horrorCategory,
      required this.war,
      required this.sValue,
      required this.warCategory});

  bool sValue;
  final Horror horror;
  final HorrorCategory horrorCategory;

  final War war;
  final WarCategory warCategory;

  @override
  State<HorrorScreenDetails> createState() => _HorrorScreenDetailsState();
}

class _HorrorScreenDetailsState extends State<HorrorScreenDetails> {
  void translator() {
    googleTranslator.translate(detailText, to: "ru").then((value) {
      setState(() {
        detailText = value.toString();
      });
    });
  }

  late GoogleTranslator googleTranslator = GoogleTranslator();

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

  late CustomVideoPlayerController _customVideoPlayerController;
  String detailText = "Details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.sValue ? Colors.white : null,
      appBar: AppBar(
          backgroundColor: widget.sValue ? Colors.red : null,
          title: TextButton(
              onPressed: () {
                setState(() {
                  translator();
                });
              },
              child: Text(detailText, style: TextStyle(fontSize: 23, color: CupertinoColors.white)))),
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
                    child: Image.network(widget.horrorCategory.images, height: 270, fit: BoxFit.fitHeight),
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
            Text("Title: ${widget.horror.title}", style: const TextStyle(color: Color(0xFFFF0000))),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Year: ${widget.horror.date.toString()}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Duration: ${widget.horror.duration}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Gener: ${widget.horror.type}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                ],
              ),
            ),
            const Gap(20),
            const Text("About Movie", style: TextStyle(color: Color(0xFFCBA30E), fontSize: 30)),
            const Gap(20),
            Text(widget.horror.description, style: const TextStyle(color: Color(0xFFCBA30E))),
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
    _cachedVideoPlayerController = CachedVideoPlayerController.asset(widget.horror.url)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }
}
