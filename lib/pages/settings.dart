import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class Settings extends StatefulWidget {
  Settings({super.key, required this.sValue});

  bool sValue;

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.sValue ? Colors.white : null,
        appBar: AppBar(
          title: const Text("Settings"),
          backgroundColor: widget.sValue ? Colors.red : null,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              const Gap(10),
              Row(
                children: [
                  const Gap(10),
                  Icon(Icons.settings_suggest_sharp, color: widget.sValue ? Colors.black : Colors.white),
                  const Gap(5),
                  Text(
                    "Main Settings",
                    style: TextStyle(color: widget.sValue ? Colors.black : Colors.white),
                  ),
                ],
              ),
              const Gap(5),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.indigo[600],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Gap(10),
                          const Text(
                            "Theme Mode",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          const Expanded(child: Text("")),
                          Switch(
                            activeColor: Colors.white,
                            value: widget.sValue,
                            onChanged: (value) {
                              setState(() {
                                widget.sValue = value;
                                value = !value;
                              });
                            },
                          ),
                          const Gap(10),
                        ],
                      ),
                      const Divider(color: Colors.white12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Gap(10),
                          const Text(
                            "App Icon",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          const Expanded(child: Text("")),
                          IconButton(
                              onPressed: () {
                                showAdaptiveDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        backgroundColor: Colors.grey.shade300,
                                        titleTextStyle: const TextStyle(color: Colors.white),
                                        actionsAlignment: MainAxisAlignment.center,
                                        actionsOverflowDirection: VerticalDirection.down,
                                        actionsOverflowAlignment: OverflowBarAlignment.center,
                                        actions: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Film Logo",
                                                style: TextStyle(fontSize: 23),
                                              ),
                                              const Text("Copying is not supported"),
                                            ],
                                          )
                                        ],
                                        title: Banner(
                                          message: 'HD Movie List+',
                                          location: BannerLocation.topEnd,
                                          color: Colors.blueGrey.shade200,
                                          child: Container(
                                              decoration: BoxDecoration(backgroundBlendMode: BlendMode.clear,borderRadius: BorderRadius.circular(10),
                                              color: Colors.blueGrey,
                                              ),
                                              width: MediaQuery.of(context).size.width,
                                              height: MediaQuery.of(context).size.height/2,child: Image.asset("assets/images/movieLogo.png",filterQuality: FilterQuality.high)),
                                        ));
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )),
                          const Gap(10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(5),
                  Row(
                    children: [
                      const Gap(10),
                      Icon(CupertinoIcons.info, color: widget.sValue ? Colors.black : Colors.white),
                      const Gap(5),
                      Text(
                        "INFO",
                        style: TextStyle(color: widget.sValue ? Colors.black : Colors.white),
                      ),
                    ],
                  ),
                  const Expanded(child: Text("")),
                  const Gap(10),
                ],
              ),
              const Gap(5),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.indigo[600],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Gap(5),
                        Image.asset("assets/images/movieLogo.png", width: 100),
                        const Text(
                          "data from 'Structured Classes'",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                      const Divider(color: Colors.white12),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "This product mainly uses Classes which are made by the owner of this app",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Divider(color: Colors.white12),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Terms of Use Classes you can find them in the   https://github.com/Zuhriddinov-O",
                          style: TextStyle(
                            color: Colors.white,
                            decorationThickness: 3,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(5),
                  Row(
                    children: [
                      const Gap(10),
                      Icon(CupertinoIcons.person_2, color: widget.sValue ? Colors.black : Colors.white),
                      const Gap(5),
                      Text(
                        "USERS SUPPORT",
                        style: TextStyle(color: widget.sValue ? Colors.black : Colors.white),
                      ),
                    ],
                  ),
                  const Expanded(child: Text("")),
                  const Gap(10),
                ],
              ),
              const Gap(5),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.indigo[600],
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(5),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Terms of Use",
                          style: TextStyle(
                              color: Colors.white,
                              decorationThickness: 3,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.solid),
                        ),
                      ),
                      Divider(color: Colors.white12),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Contact Us",
                          style: TextStyle(
                              color: Colors.white,
                              decorationThickness: 3,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.solid),
                        ),
                      ),
                      Divider(color: Colors.white12),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Review the app",
                          style: TextStyle(
                              color: Colors.white,
                              decorationThickness: 3,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.solid),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
