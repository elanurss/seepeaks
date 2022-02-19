class ImageConstants {
  static ImageConstants _instance;
  static ImageConstants get instance {
    _instance ??= _instance = ImageConstants._init();
    return _instance;
  }

  ImageConstants._init();
  String toImage(String name) => "assets/images/$name";
  String get logo => toImage("seepeaks.jpeg");
  String get bottomImagetop1 => toImage("top1.png");
  String get bottomImagetop2 => toImage("top2.png");
  String get bottom1 => toImage("bottom1.png");
  String get bottom2 => toImage("bottom2.png");
  String get model1 => toImage("model1.jpeg");
  String get model2 => toImage("model2.jpeg");
  String get model3 => toImage("model3.jpeg");
  String get seepeaks1 => toImage("seepeaks1.jpeg");
  String get seepeaks2 => toImage("seepeaks2.jpeg");
  String get seepeaks3 => toImage("seepeaks3.jpeg");
  String get instagram => toImage("instagram.png");
  String get denim => toImage("denim.jpeg");
  String get bluz => toImage("bluz.jpeg");
  String get svg => toImage("profil.svg");
}
