import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_01/classes/categorised_films/categorised_films.dart';
import 'package:portfolio_01/classes/categorised_films/film_category.dart';
import 'package:translator/translator.dart';
import '../widgets/share_.dart';

class LoveScreenDetails extends StatefulWidget {
  LoveScreenDetails({super.key, required this.love, required this.loveCategory, required this.sValue});

  bool sValue;
  final Love love;
  final LoveCategory loveCategory;

  @override
  State<LoveScreenDetails> createState() => _LoveScreenDetailsState();
}

class _LoveScreenDetailsState extends State<LoveScreenDetails> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late GoogleTranslator googleTranslator = GoogleTranslator();
  String detailText = "Details";

  void translator() {
    googleTranslator.translate(detailText, to: "ru").then((value) {
      setState(() {
        detailText = value.toString();
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

  bool more = true;

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
              child: Text(
                detailText,
                style: const TextStyle(fontSize: 23, color: CupertinoColors.white),
              ))),
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
                    child: Image.network(widget.loveCategory.images, height: 270, fit: BoxFit.fitHeight),
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
            Text("Title: ${widget.love.title}", style: const TextStyle(color: Color(0xFFFF0000))),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Year: ${widget.love.date.toString()}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Duration: ${widget.love.duration}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Gener: ${widget.love.type}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                ],
              ),
            ),
            const Gap(20),
            const Text("About Movie", style: TextStyle(color: Color(0xFFCBA30E), fontSize: 30)),
            const Gap(20),
            Text(widget.love.description, style: const TextStyle(color: Color(0xFFCBA30E))),
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
    _cachedVideoPlayerController = CachedVideoPlayerController.asset(widget.love.url)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }
}
//use google translator for this app
//how to add for google play market
//video maker better version in pub dev//
//match all trailers according to their ratings
