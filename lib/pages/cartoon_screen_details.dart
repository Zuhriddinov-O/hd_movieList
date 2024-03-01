import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_01/classes/categorised_films/categorised_films.dart';
import 'package:portfolio_01/classes/categorised_films/film_category.dart';
import 'package:translator/translator.dart';

import '../widgets/share_.dart';

class CartoonScreenDetails extends StatefulWidget {
  CartoonScreenDetails(
      {super.key, required this.cartoon, required this.cartoonCategory, required this.sValue});

  bool sValue;
  final Cartoon cartoon;
  final CartoonCategory cartoonCategory;

  @override
  State<CartoonScreenDetails> createState() => _CartoonScreenDetailsState();
}

class _CartoonScreenDetailsState extends State<CartoonScreenDetails> {
  late CustomVideoPlayerController _customVideoPlayerController;
  late GoogleTranslator googleTranslator = GoogleTranslator();
  String detailText = "Details";

  translate() {
    googleTranslator = GoogleTranslator();
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
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _customVideoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.sValue ? Colors.white : null,
      appBar: AppBar(
          backgroundColor: widget.sValue ? Color(0xFFFF0000) : null,
          title: TextButton(
            onPressed: () {
              setState(() {
                translate();
              });
            },
            child: Text(
              detailText,
              style: const TextStyle(fontSize: 23, color: CupertinoColors.white),
            ),
          )),
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
                    child: Image.network(widget.cartoonCategory.images, height: 270, fit: BoxFit.fitHeight),
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
            Text("Title: ${widget.cartoon.title}", style: const TextStyle(color: Color(0xFFFF0000))),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Year: ${widget.cartoon.date.toString()}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Duration: ${widget.cartoon.duration}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                  Text("Gener: ${widget.cartoon.type}",
                      style: TextStyle(color: widget.sValue ? Color(0xFFCBA30E) : Color(0xFFFFFFFF))),
                ],
              ),
            ),
            const Gap(20),
            const Text("About Movie", style: TextStyle(color: Color(0xFFCBA30E), fontSize: 30)),
            const Gap(20),
            Text(widget.cartoon.description,
                style: TextStyle(color: widget.sValue ? Colors.yellow[900] : const Color(0xFFCBA30E))),
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
    _cachedVideoPlayerController = CachedVideoPlayerController.asset(widget.cartoon.url)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _cachedVideoPlayerController,
    );
  }
}
