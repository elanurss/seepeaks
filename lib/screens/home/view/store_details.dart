import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';

// ignore: must_be_immutable
class StoreDetails extends StatefulWidget {
  var imgPath;
  StoreDetails({this.imgPath});
  @override
  _StoreDetailsState createState() => _StoreDetailsState();
}

class _StoreDetailsState extends State<StoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple.withOpacity(0.2),
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Hero(
                tag: widget.imgPath,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InstaLikeButton(
                      image: NetworkImage(widget.imgPath),
                      onChanged: () {},
                      icon: Icons.favorite,
                      iconSize: 80,
                      iconColor: Colors.red,
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: 700,
                      width: MediaQuery.of(context).size.width / 2,
                      duration: const Duration(seconds: 2),
                      onImageError: (e, _) {},
                      imageAlignment: Alignment.topLeft,
                      imageBoxfit: BoxFit.cover,
                      imageScale: 5.0,
                      imageColorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.dstATop,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
