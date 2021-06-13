import 'package:flutter/material.dart';
import 'package:sinopsis_film/animation/fade_animation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/conjuring.jpg'), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Apa yang kamu temukan?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.3,
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                hintText: "Cari "),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Film Terbaik",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/habibie.jpg', title: 'Habibie Ainun'),
                            makeItem(
                                image: 'assets/images/gb.jpg', title: 'Garis Biru'),
                            makeItem(
                                image: 'assets/images/hangout.jpeg', title: 'Hangout'),
                            makeItem(
                                image: 'assets/images/cs.jpg', title: 'Cinta Sejati'),
                            makeItem(
                                image: 'assets/images/cek.jpg', title: 'Cek Toko Sebelah'),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Film Romantis",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/rm1.jpg', title: 'Karena Kamu Cuma Satu'),
                            makeItem(
                                image: 'assets/images/rm2.jpg', title: 'Meet Me After Sunset'),
                            makeItem(
                                image: 'assets/images/rm3.jpg', title: 'Mariposa'),
                            makeItem(
                                image: 'assets/images/rm4.jpg', title: 'Critical Eleven'),
                            makeItem(
                                image: 'assets/images/rm5.jpg', title: 'Dear Nathan'),
                          ],
                        ),
                      )),
                       SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Film Comedi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/cd1.jpg', title: 'Sabar Ini Ujian'),
                            makeItem(
                                image: 'assets/images/cd2.jpg', title: 'Terlalu Tampan'),
                            makeItem(
                                image: 'assets/images/cd3.jpg', title: 'Temen Kondangan'),
                            makeItem(
                                image: 'assets/images/cd4.jpg', title: 'Make Money'),
                            makeItem(
                                image: 'assets/images/cd5.jpg', title: 'Ngawur'),
                          ],
                        ),
                      )),
                       SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Film Animasi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/am1.jpg', title: 'Storks'),
                            makeItem(
                                image: 'assets/images/am2.png', title: 'Frozen II'),
                            makeItem(
                                image: 'assets/images/am3.jpg', title: 'Croods'),
                            makeItem(
                                image: 'assets/images/am4.jpg', title: 'Toy Story'),
                            makeItem(
                                image: 'assets/images/am5.jpg', title: 'Up'),
                          ],
                        ),
                      )),
                       SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Film Horor",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeItem(
                                image: 'assets/images/hr1.jpg', title: 'Mangkujiwo'),
                            makeItem(
                                image: 'assets/images/hr2.jpg', title: 'Setan Taubat'),
                            makeItem(
                                image: 'assets/images/hr3.jpg', title: 'Malkender'),
                            makeItem(
                                image: 'assets/images/hr4.jpg', title: 'Kepergok Pocong'),
                            makeItem(
                                image: 'assets/images/hr5.jpg', title: 'Pengabdi Setan'),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}