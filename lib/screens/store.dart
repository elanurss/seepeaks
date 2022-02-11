import 'package:flutter/material.dart';
import 'package:flutter_moda_app/screens/anasayfa.dart';
import 'store_details.dart';

class Store extends StatefulWidget {
  Store({key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  String etiketler;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300].withOpacity(0.4),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 4,
            title: Container(
                margin: EdgeInsets.all(2),
                child: Image.asset("assets/images/seepeaks.jpeg"))),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            SizedBox(
              height: 15,
            ),
            // --------------  CARD KISMI
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StoreDetails(
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
                                        builder: (context) => StoreDetails(
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
                                        builder: (context) => StoreDetails(
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
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
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.indigo,
          ),
          child: Center(
            child: Text(
              "Mağaza",
              style: TextStyle(
                fontFamily: "Montserrat",
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // var _currentItemSeleceted;
  // var _current = [
  //   ' Ürün Etikeletleri',
  //   ' Beyaz',
  //   ' Siyah',
  //   ' gömlek yaka',
  //   ' ekru',
  //   ' gri',
  //   ' ayakkabı',
  //   ' Adidas',
  //   ' ekru',
  //   ' hırka',
  //   ' kırmızı',
  //   ' belden bağlamalı',
  //   ' kahverengi ',
  //   ' lacoste',
  //   ' mavi',
  //   ' Mont',
  //   ' nike',
  //   ' sweatshirt',
  //   ' spor',
  //   ' pantolon',
  //   ' triko',
  //   ' vizon',
  //   ' yazlık',
  //   ' yırtmaç',
  //   ' örme',
  // ];
}
