import 'package:flutter/material.dart';
import 'detail.dart';
import 'store.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300].withOpacity(0.4),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Takip ettiğin içerik üreticileri burada!",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 15,
                color: Colors.grey[800].withOpacity(0.9),
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                color: Colors.black,
                margin: const EdgeInsets.all(5.0),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.9),
                    size: 25,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "İçerik Üreticileri",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      color: Colors.grey[800].withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            // ------------- PROFİL KISMI
            Container(
              height: 160,
              width: double.infinity,
              color: Colors.white.withOpacity(0.2),
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  listeElamani("assets/images/model3.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeElamani("assets/images/model1.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeElamani("assets/images/model2.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeElamani("assets/images/model3.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeElamani("assets/images/model1.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeElamani("assets/images/model2.jpeg"),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),

            // --------------  CARD KISMI
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                child: Container(
                    height: 370,
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/model2.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "İpek Avcı",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Featured Products",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            "assets/images/seepeaks2.jpeg")));
                              },
                              child: Hero(
                                tag: "assets/images/seepeaks2.jpeg",
                                child: Container(
                                  height: 200,
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/seepeaks2.jpeg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => Detay(
                                            imgPath:
                                                "assets/images/denim.jpeg")));
                                  },
                                  child: Hero(
                                    tag: "assets/images/denim.jpeg",
                                    child: Container(
                                      height: 95,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/denim.jpeg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => Detay(
                                            imgPath:
                                                "assets/images/seepeaks3.jpeg")));
                                  },
                                  child: Hero(
                                    tag: "assets/images/seepeaks3.jpeg",
                                    child: Container(
                                      height: 95,
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  100) /
                                              2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/seepeaks3.jpeg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text(
                                  "#Moda",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.brown.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text(
                                  "#Sale ",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }

  Widget listeElamani(
    String imagePath,
  ) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Store()));
            },
            child: Text(
              "Mağaza",
              style: TextStyle(
                fontSize: 13,
                fontFamily: "Montserrat",
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple.withOpacity(0.4),
            ),
          ),
        ),
      ],
    );
  }
}
