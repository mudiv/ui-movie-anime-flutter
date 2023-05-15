import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';



class DATA extends  StatelessWidget {
  List _items = [];
  Future<void> loadData() async {
    final String response = await rootBundle.loadString("assets/data_anime.json");
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
    return data["data"][2];
  }

  @override
  void initState() {
    
  this.loadData();
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: const Text('Load Data'),
          onPressed: initState,
        ),
        Text("gyu"),
        ]
        ),
      );
  
  }
  
  void setState(Null Function() param0) {}
}

class cards extends StatelessWidget {
  final String text;
  final color;
  const cards({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Image.network('https://pic.re/image'),
      

      //color: color
    );
  }
}
