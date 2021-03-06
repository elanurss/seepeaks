import 'package:flutter/material.dart';
import 'package:flutter_moda_app/core/constants/extension/context_extension.dart';
import 'package:flutter_moda_app/core/constants/image/image_constants.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  var imgPath;
  Detay({this.imgPath});
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 35,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 270,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstants.instance.denim),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Trend Ala??at?? Stili",
                            style: context.textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: context.colors.surface,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width - 170,
                                  child: Text(
                                    "%50 Pamuk %50 Viskon Numune Bedeni : S/36/1 ",
                                    style: context.textTheme.caption!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.6),
                    indent: 20,
                    endIndent: 20,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2,
                    left: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Material(
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black54.withOpacity(0.4),
                            child: MaterialButton(
                              padding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              onPressed: () async {},
                              child: Text(
                                "Trendyol.com'da ??ncele",
                                textAlign: TextAlign.center,
                                style: context.textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.black54.withOpacity(0.4),
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
