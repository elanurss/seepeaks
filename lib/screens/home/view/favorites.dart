import 'package:flutter/material.dart';
import 'package:flutter_moda_app/design/constants/constants_view/constants.dart';
import 'package:flutter_moda_app/screens/bottomNavigationBar/bottomNavigationBar.dart';

class Favorites extends StatefulWidget {
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavigation()));
              },
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 9,
            title: Container(
                margin: EdgeInsets.all(2),
                child: Image.asset("assets/images/seepeaks.jpeg"))),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      " Your Likes",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
                SizedBox(height: 20),
                gridview(),
              ],
            ),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget gridview() {
    return GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.999,
          crossAxisSpacing: 5,
        ),
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white.withOpacity(0.8),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildCircleAvatar(),
                      Text("İpek Avcı",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.5,
                              color: Colors.black)),
                      Icon(
                        Icons.favorite,
                        size: 17,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Expanded(child: Image.asset("assets/images/seepeaks3.jpeg")),
              ]));
        });
  }

  CircleAvatar buildCircleAvatar() {
    return CircleAvatar(
      backgroundColor: kPrimaryColor,
      child: Icon(
        Icons.person,
        size: 15,
        color: Colors.white,
      ),
      radius: 10,
    );
  }
}
