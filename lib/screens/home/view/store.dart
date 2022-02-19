import 'package:flutter/material.dart';
import 'package:flutter_moda_app/design/constants/image/image_constants.dart';
import 'store_details.dart';

class Store extends StatefulWidget {
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
            // ignore: deprecated_member_use
            backwardsCompatibility: true,
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 4,
            title: Container(
                margin: EdgeInsets.all(2),
                child: Image.asset(
                  ImageConstants.instance.logo,
                ))),
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
                                    image: AssetImage(
                                      ImageConstants.instance.model2,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            _instButton(),
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
                                              ImageConstants.instance.seepeaks2,
                                        )));
                              },
                              child: Hero(
                                tag: ImageConstants.instance.seepeaks2,
                                child: Container(
                                  height: 200,
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstants.instance.seepeaks2,
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => StoreDetails(
                                                  imgPath: ImageConstants
                                                      .instance.denim,
                                                )));
                                  },
                                  child: Hero(
                                    tag: ImageConstants.instance.denim,
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
                                            ImageConstants.instance.denim,
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => StoreDetails(
                                                  imgPath: ImageConstants
                                                      .instance.seepeaks3,
                                                )));
                                  },
                                  child: Hero(
                                    tag: ImageConstants.instance.seepeaks3,
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
                                            ImageConstants.instance.seepeaks3,
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

  Widget _instButton() {
    // ignore: deprecated_member_use
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {},
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
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
                Image(
                    image: AssetImage(ImageConstants.instance.instagram),
                    height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
