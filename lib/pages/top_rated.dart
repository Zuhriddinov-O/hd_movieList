import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_01/classes/mixed_films/all_films.dart';
import 'package:portfolio_01/classes/mixed_films/film_description.dart';
import 'package:portfolio_01/pages/top_rated_details.dart';
import 'package:translator/translator.dart';

class TopRated extends StatefulWidget {
  TopRated({super.key, required this.sValue});

  bool sValue;

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  late GoogleTranslator googleTranslator;
  String titleText = "Top rated";

  translator() {
    googleTranslator = GoogleTranslator();
    googleTranslator.translate(titleText, to: "ru").then((value) {
      setState(() {
        titleText = value.toString();
      });
    });
  }

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
              titleText,
              style: TextStyle(fontSize: 23, color: CupertinoColors.white),
            )),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 260,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: filmDesc.length,
        itemBuilder: (context, index) {
          allFilmsList.sort((a, b) => b.ratings.compareTo(a.ratings));
          final allFilm = allFilmsList[index];
          final filmDes = filmDesc[index];
          return InkWell(
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      elevation: 0.0,
                      borderOnForeground: true,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) {
                                //filmDesc stilida filmDescning ichidegilari
                                return TopRatedDetails(
                                  sValue: widget.sValue,
                                  filmDesc: filmDes,
                                  allFilms: allFilm,
                                );
                              },
                            ),
                          );
                        },
                        child: Ink(
                          child: Stack(
                            children: [
                              Image.network(
                                allFilmsList[filmDes.id].images,
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
                                      allFilmsList[filmDes.id].ratings.toString(),
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
                    allFilmsList[filmDes.id].names,
                    style: const TextStyle(color: Colors.yellow),
                    overflow: TextOverflow
                        .ellipsis, //allFilmListni ichidegi isimlarni qaytar qaysiki filmDescni=>(id)siga moslab
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} //themeModes
//sharePlus
