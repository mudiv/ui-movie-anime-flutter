import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marquee/marquee.dart';

import 'infoPage.dart';

class CardHomerow extends StatefulWidget {
  final String name;
  final String img;
  final String id;

  const CardHomerow({
    Key? key,
    required this.name,
    required this.img,
    required this.id,
  }) : super(key: key);

  @override
  State<CardHomerow> createState() => _CardHomerowState();
}

class _CardHomerowState extends State<CardHomerow> {
  bool lenTEXT = false;

  @override
  void initState() {
    super.initState();
    // you can use this.widget.foo here
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) =>const  InfoPage()),);
              print(widget.id);
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: 130.0,
              height: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        widget.img,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return  Stack(children: [
                              Container(
                               
                                color: Color(0XFF2E4053),


                              ),
                              const Center(
                                child: Icon(
                                  Icons.local_movies_outlined,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                            ]
                           
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      widget.name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
