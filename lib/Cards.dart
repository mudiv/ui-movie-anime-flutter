import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marquee/marquee.dart';

class CardPage extends StatelessWidget {
  final String img;

  const CardPage({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: SizedBox.expand(
          child: FittedBox(
            child: Image.asset(img),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Align(
        alignment: const Alignment(0.9, 0.9),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            // style: ButtonStyle(shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),),
            onPressed: () {
              print("");
            },
            child: const Text(
              "شاهد الان",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
      )
    ]);
  }
}
