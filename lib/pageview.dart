
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:muntazir/Cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViews extends StatefulWidget {
  const PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
   final PageController _controller = PageController();
  bool reFrs = false;
  int _currentPage = 0;
  final int _numPages = 10;
  
  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 10),
      (Timer timer) {
        if (_currentPage < _numPages - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _controller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      },
      
    );
    
    
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
                //color: Colors.white,
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  //scrollBehavior: _controller ,

                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: const <Widget>[
                    CardPage(
                      img: "images/4.jpg",
                    ),
                    CardPage(
                      img: "images/2.jpg",
                    ),
                    CardPage(
                      img: "images/3.jpg",
                    ),
                    CardPage(
                      img: "images/5.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                    CardPage(
                      img: "images/1.jpg",
                    ),
                  ],
                ),
              ),
                const SizedBox(
            height: 10,
          ),
          Align(
            alignment: const Alignment(0.9, 0.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 11,
              effect:  WormEffect(
                dotColor: Color(0XFF1C2833),
              
              ),
            ),
          ),
      ],
    );
  }
}