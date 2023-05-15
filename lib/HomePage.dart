import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';
import 'package:muntazir/pageview.dart';
import 'Cards.dart';
import 'cardHome.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List _items = [];
  List _items1 = [];
  List _items2 = [];
  List _items3 = [];
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();
  final ScrollController _scrollController4 = ScrollController();
  final ScrollController _scrollController5 = ScrollController();

// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_anime.json');
    final data = await json.decode(response);

    setState(() {
      _items1 += data["data1"];
      _items2 += data["data2"];
      _items3 += data["data3"];
      _items += data["data4"];
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: _scrollController1,
      child: Column(
        children: [
          const PageViews(),
          // ==========

          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      print("hiii ");
                    },
                    child: const Text(
                      "المزيد",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "لافلام المميزة ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 220,
            child: SingleChildScrollView(
              controller: _scrollController2,
              primary: false,
              key: UniqueKey(),
              scrollDirection: Axis.horizontal,
              child: _items.isNotEmpty
                  ? Row(
                      //
                      children: [
                        for (int i = 1; i < 30; i++)
                          CardHomerow(
                              name: _items[i]['title'].length > 13
                                  ? _items[i]['title'].substring(0, 10) + '..'
                                  : _items[i]['title'],
                              img: _items[i]['img'],
                              id: _items[i]['id']),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 350,
                          ),
                        ],
                      ),
                    ),
              //
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      print("hiii ");
                    },
                    child: const Text(
                      "المزيد",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    " اكشن ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 220,
            child: SingleChildScrollView(
              controller: _scrollController3,
              primary: false,
              key: UniqueKey(),
              scrollDirection: Axis.horizontal,
              child: _items.isNotEmpty
                  ? Row(
                      //
                      children: [
                        for (int i = 1; i < 30; i++)
                          CardHomerow(
                            name: _items1[i]['title'].length > 13
                                ? _items1[i]['title'].substring(0, 10) + '..'
                                : _items1[i]['title'],
                            img: _items1[i]['img'],
                            id: _items1[i]['id'],
                          ),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 350,
                          ),
                        ],
                      ),
                    ),
              //
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        print("hiii ");
                      },
                      child: const Text(
                        "المزيد",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      "غموض",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 220,
            child: SingleChildScrollView(
              controller: _scrollController4,
              primary: false,
              key: UniqueKey(),
              scrollDirection: Axis.horizontal,
              child: _items.isNotEmpty
                  ? Row(
                      //
                      children: [
                        for (int i = 1; i < 30; i++)
                          CardHomerow(
                              name: _items2[i]['title'].length > 13
                                  ? _items2[i]['title'].substring(0, 10) + '..'
                                  : _items2[i]['title'],
                              img: _items2[i]['img'],
                              id: _items2[i]['id']),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 350,
                          ),
                        ],
                      ),
                    ),
              //
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      print("hiii ");
                    },
                    child: const Text(
                      "المزيد",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "مغامرات",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 220,
            child: SingleChildScrollView(
              controller: _scrollController5,
              primary: false,
              key: UniqueKey(),
              scrollDirection: Axis.horizontal,
              child: _items.isNotEmpty
                  ? Row(
                      //
                      children: [
                        for (int i = 1; i < 30; i++)
                          CardHomerow(
                              name: _items3[i]['title'].length > 13
                                  ? _items3[i]['title'].substring(0, 10) + '..'
                                  : _items3[i]['title'],
                              img: _items3[i]['img'],
                              id: _items3[i]['id']),
                      ],
                    )
                  : Center(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 350,
                          ),
                        ],
                      ),
                    ),
              //
            ),
          ),
        ],
      ),
    );
  }
}
