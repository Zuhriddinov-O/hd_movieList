import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_01/classes/categorised_films/categorised_films.dart';
import 'package:portfolio_01/classes/categorised_films/film_category.dart';
import 'package:translator/translator.dart';

import 'cartoon_screen_details.dart';

class CartoonScreen extends StatefulWidget {
  CartoonScreen({super.key, required this.sValue});

  bool sValue;

  @override
  State<CartoonScreen> createState() => _CartoonScreenState();
}

class _CartoonScreenState extends State<CartoonScreen> {
  late GoogleTranslator googleTranslator = GoogleTranslator();
  String categories = "Cartoons";

  void translate() {
    googleTranslator.translate(categories, to: "ru").then((value0) {
      setState(() {
        categories = value0.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.sValue ? Colors.white : null,
      appBar: AppBar(
        backgroundColor: widget.sValue ?Color(0xFFFF0000): null,
        title: TextButton(
          onPressed: () {
            setState(() {
              translate();
            });
          },
          child: Text(categories, style: TextStyle(fontSize: 23, color: CupertinoColors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            childAspectRatio: 2 / 4,
            mainAxisSpacing: 12,
            mainAxisExtent: 260,
          ),
          itemCount: cartoonCategory.length,
          itemBuilder: (context, index) {
            final cartoonDescIndex = cartoonDetails[index];
            final cartoonFilms = cartoonCategory[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                    elevation: 15.0,
                    borderOnForeground: true,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) {
                              //filmDesc stilida filmDescning ichidegilari
                              return CartoonScreenDetails(
                                sValue: widget.sValue,
                                cartoon: cartoonDetails[index],
                                cartoonCategory: cartoonCategory[index],
                              );
                            },
                          ),
                        );
                      },
                      child: Ink(
                        child: Stack(
                          children: [
                            Image.network(
                              cartoonCategory[cartoonFilms.id].images,
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
                                    cartoonCategory[cartoonDescIndex.id].ratings.toString(),
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
                  cartoonCategory[cartoonDescIndex.id].names,
                  style: TextStyle(color: widget.sValue ? Colors.yellow[900] : Colors.yellow),
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
}
