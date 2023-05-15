import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marquee/marquee.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Color(0XFF1C2833),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
              //Navigator
            },
          ),
          expandedHeight: 640,
          pinned: true,
          flexibleSpace: Stack(children: [
            FlexibleSpaceBar(
              background: Image.network(
                "https://o.anime-slayer.com/wp-content/uploads/2021/01/12-1-215x300.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Color(0XFF1C2833)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ]),
        ),
        SliverToBoxAdapter(
          child: Container(
              color: Color(0XFF1C2833),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      child: SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "شاهد الإن",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.play_arrow,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text(
                              "مشاهدة الإعلان",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.video_library,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text(
                              "التقيم",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment :Alignment(0.8, 1.5),
                    child: Text(
                      "قصة الانمي",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Color(0XFF2E4053),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: const Text(
                        "قصة انمي Ars no Kyojuu تدور في عصر السيوف والأبطال والأساطير. أنشأت الوحوش العملاقة الأرض، ولكن بعد ذلك سرق البشر تلك الأرض. أثار هذا غضب الوحوش التي بدأت بعد ذلك في أكل البشر. من أجل المقاومة، دعا البشر الآلهة. وبدأت وحوش “كيوجو” تنتشر في جميع أنحاء العالم، مما تسبب في أضرار جسيمة، لكن البشر قاوموا من خلال صيد “كيوجو“. بينما ازدهرت البشرية باستخدام الأجزاء المشرحة من الوحوش. “جيرو” هو «رجل نجا من الموت»، ويطارد “كيوجو” لكسب لقمة العيش. يلتقي بـ”كومي” التي يطاردها شخص ما. ثم يبدأ “جيرو” وأصدقاؤه في الكشف عن أسرار هذا العالم.\n",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  )
                ],
              )),
        )
      ]),
    );
  }
}
