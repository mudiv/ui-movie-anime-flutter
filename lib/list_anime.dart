import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:marquee/marquee.dart';
import 'package:flutter/services.dart';

class ListAnime extends StatefulWidget {
  const ListAnime({Key? key}) : super(key: key);

  @override
  _ListAnimeState createState() => _ListAnimeState();
}

class _ListAnimeState extends State<ListAnime> {
  List _items = [];
  final ScrollController _scrollController = ScrollController();

// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_anime.json');
    final data = await json.decode(response);

    setState(() {
      _items += data["data"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
      _items.isNotEmpty
          ? Expanded(
              child: ListView.builder(
                  controller: _scrollController,
                 
                  shrinkWrap: true,
                  itemCount: _items.length,
                  
                  itemBuilder: (context, index) {
                    bool lenTEXT = false;
                    bool endPAge = true;
                    if (_items[index]["title"].length > 30) {
                      lenTEXT = true;
                    }
                    if (index == 100) {
                      readJson();
                      // index >= index + 100 ? readJson() :

                      // print(index);
                    }
                    if (index >= index + 100) {
                      readJson();
                      // index >= index + 100 ? readJson() :

                      // print(index);
                    }

                    if (index <= _items.length && index > _items.length - 6) {

                      
                    }
                    return Material(
                      color: Color.fromRGBO(0, 0, 0, 0),
                      child: InkWell(
                        onTap: () {
                          print(_items[index]["id"]);
                        },
                        child: Container(
                          width: 100.0,
                          height: 150.0,
                          child: endPAge
                              ? Row(children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    width: 100,
                                    height: 140,
                                    
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF2E4053),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        _items[index]["img"],
                                        
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null)
                                            return child;
                                          return const Center(
                                              child:
                                                  CircularProgressIndicator());
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 30,
                                          child: lenTEXT
                                              ? Marquee(
                                                  text: _items[index]["title"],
                                                  pauseAfterRound:
                                                      Duration(seconds: 3),
                                                  blankSpace: 100,
                                                  velocity: 30,
                                                  style: TextStyle(
                                                      color: Colors.grey[300],
                                                      fontWeight:
                                                          FontWeight.w600))
                                              : Text(
                                                  _items[index]["title"],
                                                  textAlign: TextAlign.end,
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                        ),
                                        //),

                                        const SizedBox(
                                          height: 15,
                                        ),

                                        Text(
                                          _items[index]["type_status"],
                                          textAlign: TextAlign.end,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Image.asset(
                                          "images/imdb.png",
                                          width: 25,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Text('Your error widget...'),
                                        ),
                                      ],
                                    ),
                                  )
                                ])
                              : Container(
                                  child: const Text(
                                    "Home Page ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                        ),
                      ),
                    );
                  }),
            )
          : Center(
              child: Column(
              children: [
                const SizedBox(
                  height: 350,
                ),
                CircularProgressIndicator()
              ],
            ))
    ]);
  }
}
