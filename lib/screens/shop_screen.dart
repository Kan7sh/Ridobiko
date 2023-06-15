import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';


class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  List<String> images=[
    "assets/images/w.jpg",
    "assets/images/f.jpg",
    "assets/images/w.jpg",
    "assets/images/q.jpg"
  ];
  int imageIndex=0;
  @override
  void initState() {
    super.initState();

    // Start the timer when the widget is initialized
    Timer.periodic(const Duration(seconds:4), (Timer timer) {
      setState(() {
        imageIndex = (imageIndex+1)%images.length;

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Column(
                  children: const [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/men.jpg",
                        ),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Men",
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontFamily: "MyRegular",),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/women.jpg",
                        ),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Women",
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontFamily: "MyRegular",),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/clothing.jpg",
                        ),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Clothing",
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontFamily: "MyRegular",),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/posters.jpg",
                        ),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          "Posters",
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontFamily: "MyRegular",),
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/music.jpg",
                        ),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Music",
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontFamily: "MyRegular",
                          fontSize: 2

                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Image.asset(
                    images[imageIndex],
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0,left: 26),
                    child: Text(
                        "| SUMMER COLLECTION 2019",
                        style: TextStyle(color: Colors.black12,fontFamily: "MyBold") ,
                    ),
                  ),
                  const Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Blue Summer \nare already in \nstore",
                            style: TextStyle(color: Colors.black87,fontSize: 19,fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                  ),
                  Positioned.fill(

                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: DotsIndicator(
                          dotsCount: 4,
                          position: imageIndex,
                          decorator: const DotsDecorator(
                            size: Size(28, 3),
                            activeSize: Size(25, 3),
                            shape: RoundedRectangleBorder(),
                            activeShape: RoundedRectangleBorder(),
                            color: Colors.white12,
                            activeColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 7),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/f.jpg",
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0,left: 26),
                    child: Text(
                      "For Gen",
                      style: TextStyle(color: Colors.black12,fontFamily: "MyBold",fontSize: 16) ,
                    ),
                  ),
                  const Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "HANG OUT & PARTY",
                            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w300),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Image.asset(
                            "assets/images/e.jpg",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                "Casual",
                                style: TextStyle(color: Colors.black12,fontFamily: "MyBold",fontSize: 16) ,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset(
                            "assets/images/r.jpg",
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                "Shoes",
                                style: TextStyle(color: Colors.black12,fontFamily: "MyBold",fontSize: 16) ,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 7),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/q.jpg",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0,left: 26),
                    child: Text(
                      "NEW COLORS",
                      style: TextStyle(color: Colors.black12,fontFamily: "MyBold") ,
                    ),
                  ),
                  const Positioned.fill(
                      child: Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Disney Collab",
                            style: TextStyle(color: Colors.black87,fontSize: 19,fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
