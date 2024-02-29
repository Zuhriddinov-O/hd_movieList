import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_01/classes/cache_from_share_preferences.dart';
import 'package:portfolio_01/classes/mixed_films/all_films.dart';
import 'package:portfolio_01/classes/mixed_films/film_description.dart';
import 'package:portfolio_01/pages/home_page_details.dart';
import 'package:portfolio_01/pages/settings.dart';
import 'package:portfolio_01/pages/top_rated.dart';
import 'package:portfolio_01/pages/war_screen.dart';

import 'cartoon_screen.dart';
import 'horror_screen.dart';
import 'love_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  bool switchIsActive = false;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Cache cache = CacheManagerImpl();
  bool _iconIsActive = false;

  @override
  void initState() {
    _getTheme();
    super.initState();
  }

  void _getTheme() async {
    widget.switchIsActive = await cache.getTheme();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.switchIsActive ? const Color(0xFFFFFFFF) : const Color(0xFF050B25),
      appBar: AppBar(
          backgroundColor: widget.switchIsActive ? const Color(0xFFFF0000) : null,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip);
            },
          ),
          title: _iconIsActive == true
              ? TextField(
                  cursorColor: Colors.white,
                  onTap: () {},
                  textCapitalization: TextCapitalization.sentences,
                  textInputAction: TextInputAction.search,
                  undoController: UndoHistoryController())
              : const Text("Hd MovieList+"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _iconIsActive = !_iconIsActive;
                  });
                },
                icon: _iconIsActive == true
                    ? const Icon(CupertinoIcons.clear, color: Colors.white)
                    : const Icon(CupertinoIcons.search, color: Colors.white))
          ]),
      drawer: drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 12,
            mainAxisExtent: 260,
          ),
          itemCount: allFilmsList.length,
          itemBuilder: (context, index) {
            final filmDescIndex = filmDesc[index];
            final allFilms = allFilmsList[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    elevation: .00,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) {
                              //filmDesc stilida filmDescning ichidegilari
                              return HomePageDetails(
                                filmDesc: filmDescIndex,
                                allFilms: allFilms,
                                sValue: widget.switchIsActive,
                              );
                            },
                          ),
                        );
                      },
                      child: Ink(
                        child: Stack(
                          children: [
                            Image.network(
                              allFilmsList[filmDescIndex.id].images,
                              fit: BoxFit.fill,
                              height: 200,
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  //luminosity///difference
                                  backgroundBlendMode: BlendMode.luminosity,
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    allFilmsList[filmDescIndex.id].ratings.toString(),
                                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                                    selectionColor: Colors.purple,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  //allFilmsList[index].names filmDescni id siga moslab
                  allFilmsList[filmDescIndex.id].names,
                  style: TextStyle(color: widget.switchIsActive ? Colors.yellow[900] : Colors.yellow),
                  overflow: TextOverflow
                      .ellipsis, //allFilmListni ichidegi isimlarni qaytar qaysiki filmDescni=>(id)siga moslab
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Drawer drawer() {
    return Drawer(
      width: 200,
      backgroundColor: widget.switchIsActive ? Colors.black54 : Colors.indigo,
      shape: ShapeBorder.lerp(const LinearBorder(), const LinearBorder(), double.infinity),
      child: ListView(
        children: [
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 50, bottom: 10),
              child: Text("Menu", style: TextStyle(fontSize: 28, color: Colors.white)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
            child: Text("Categories",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    decorationStyle: TextDecorationStyle.dashed,
                    decoration: TextDecoration.underline)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return HorrorScreen(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: Image.asset("assets/images/ghost.png", color: Colors.white),
            style: ListTileStyle.drawer,
            title: const Text(
              "Horror",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return LoveScreen(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: Image.asset("assets/images/heart.png", color: Colors.white),
            style: ListTileStyle.drawer,
            title: const Text(
              "Love",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return CartoonScreen(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: Image.asset("assets/images/cartoons.png", color: Colors.white),
            style: ListTileStyle.drawer,
            title: const Text(
              "Cartoons",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return WarScreen(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: Image.asset("assets/images/spy.png", color: Colors.white),
            style: ListTileStyle.drawer,
            title: const Text(
              "Action",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30, bottom: 10),
            child: Text("Units",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    decorationStyle: TextDecorationStyle.dashed,
                    decoration: TextDecoration.underline)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return TopRated(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: const Icon(Icons.trending_up_outlined, color: Colors.white70),
            style: ListTileStyle.drawer,
            title: const Text(
              "Top-Rated",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return Settings(sValue: widget.switchIsActive);
                  },
                ),
              );
            },
            leading: const Icon(Icons.settings, color: Colors.white70),
            style: ListTileStyle.drawer,
            title: const Text(
              "Settings",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Switch(
              activeColor: Colors.white,
              value: widget.switchIsActive,
              onChanged: (value) {
                setState(() {
                  widget.switchIsActive = !widget.switchIsActive;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ListTile(
              style: ListTileStyle.drawer,
              title: RichText(
                  text: const TextSpan(
                children: [TextSpan(text: "Data from",style: TextStyle(color: Colors.white70),), TextSpan(text: "\nStructured Class",style: TextStyle(color: Colors.white70),)],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
//ask how to share variables to other pages//
//learn to make url text to pass the Logos//
