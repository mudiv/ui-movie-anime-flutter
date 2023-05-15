import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:marquee/marquee.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'HomePage.dart';
import 'SearchPage.dart';
import 'list_anime.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'py anime',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indexPage = 0;
  List PagesAm =[
    Homepage(),
    Searchpage(),
    ListAnime(),
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesAm[_indexPage],
      backgroundColor: const Color(0XFF17202A),
      bottomNavigationBar: CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Color(0XFF566573),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Color(0XFF1C2833),
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
          
        ),   
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.tv_rounded),
          
        ),
      ],
      currentIndex: _indexPage,
      onTap: (index) {
        setState(() {
          _indexPage = index;
        });
      },
    ),
      appBar: AppBar(
        backgroundColor: Color(0XFF1C2833),
        shadowColor: Colors.black12,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: const Text(
          ' PY Anime',
        ),
      ),
     
    );
  }
}
