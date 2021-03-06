import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/constants/extension/context_extension.dart';
import 'package:flutter_moda_app/core/constants/image/image_constants.dart';
import 'detail.dart';
import 'store.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300]!.withOpacity(0.4),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: !isSearching
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Takip ettiğin içerik üreticileri burada!",
                      style: context.textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              : TextField(
                  onChanged: (value) {},
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search for products...",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
          actions: <Widget>[
            isSearching
                ? IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        this.isSearching = false;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        this.isSearching = true;
                      });
                    },
                  )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 10),
          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "İçerik Üreticileri",
                    style: context.textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800]!.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // ------------- PROFİL KISMI
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.purple.withOpacity(0.1),
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  listArray(ImageConstants.instance.model3),
                  SizedBox(
                    width: 20,
                  ),
                  listArray(ImageConstants.instance.model1),
                  SizedBox(
                    width: 20,
                  ),
                  listArray(ImageConstants.instance.model2),
                  SizedBox(
                    width: 20,
                  ),
                  listArray(ImageConstants.instance.model3),
                  SizedBox(
                    width: 20,
                  ),
                  listArray(ImageConstants.instance.model1),
                  SizedBox(
                    width: 20,
                  ),
                  listArray(ImageConstants.instance.model2),
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
                                    image: AssetImage(
                                        ImageConstants.instance.model2),
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
                                    style:
                                        context.textTheme.subtitle1!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[800]!.withOpacity(0.9),
                                    ),
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
                              style: context.textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]!.withOpacity(0.9),
                              ),
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
                                        imgPath: ImageConstants
                                            .instance.seepeaks2)));
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Detay(
                                                imgPath: ImageConstants
                                                    .instance.denim)));
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
                                            builder: (context) => Detay(
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
                                  style: context.textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800]!.withOpacity(0.9),
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
                                  "#Sale",
                                  style: context.textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800]!.withOpacity(0.9),
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
                                    image: AssetImage(
                                        ImageConstants.instance.model3),
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
                                    "Tuanna Yılmaz ",
                                    style:
                                        context.textTheme.subtitle1!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[800]!.withOpacity(0.9),
                                    ),
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
                              style: context.textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]!.withOpacity(0.9),
                              ),
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
                                        imgPath: ImageConstants
                                            .instance.seepeaks1)));
                              },
                              child: Hero(
                                tag: ImageConstants.instance.seepeaks1,
                                child: Container(
                                  height: 200,
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstants.instance.seepeaks1,
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Detay(
                                                imgPath: ImageConstants
                                                    .instance.bluz)));
                                  },
                                  child: Hero(
                                    tag: ImageConstants.instance.bluz,
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
                                            ImageConstants.instance.bluz,
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
                                            builder: (context) => Detay(
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
                                  "#Black",
                                  style: context.textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800]!.withOpacity(0.9),
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
                                  "#White",
                                  style: context.textTheme.subtitle1!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey[800]!.withOpacity(0.9),
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

  Widget listArray(
    String imagePath,
  ) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
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
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Store()));
            },
            child: Text(
              "Mağaza",
              style: context.textTheme.caption!.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.purple.withOpacity(0.5),
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
      ],
    );
  }
}
