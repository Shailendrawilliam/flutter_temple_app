import 'package:flutter_temple_app/src/model/DG.dart';
import 'package:flutter_temple_app/src/model/Ffl.dart';
import 'package:flutter_temple_app/src/model/Prayer.dart';
import 'package:flutter_temple_app/src/model/category.dart';
import 'package:flutter_temple_app/src/model/slot.dart';

class AppData {
  static List<Prayer> prayerList = [
    Prayer(
        id: 1,
        name: 'मंगलाचरण - संक्षिप्त',
        content:  "1000.00",
        isSelected: true,
        isliked: false,
        image: 'assets/hk.jpeg',
        category: "Prayer 1"),
    Prayer(
        id: 2,
        name: 'मंगलाचरण - विस्तृत',
        content: "2000.00",
        isliked: false,
        image: 'assets/hk.jpeg',
        category: "Prayer 2"),
    Prayer(
        id: 3,
        name: 'मंगल - आरती',
        content: "5000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer 3"),
    Prayer(
        id: 4,
        name: 'श्री नृसिंह आरती',
        content: "10000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer 3"),
    Prayer(
        id: 5,
        name: 'श्री तुलसी आरती',
        content: "20000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer 4"),

    Prayer(
        id: 6,
        name: 'श्री गुरू वंदना',
        content: "100000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer 5"),
    Prayer(
        id: 7,
        name: 'श्री चैतन्य शिक्षाष्टक',
        content: "200000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer 6"),
    Prayer(
        id: 8,
        name: 'जय राधा माधव कुंजबिहारी',
        content: "500000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer "),
      Prayer(
        id: 9,
        name: 'श्री गौर आरती',
        content: "500000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer"),   Prayer(
        id: 10,
        name: 'श्री ब्रह्मसंहिता',
        content: "500000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer"),
    Prayer(
        id: 11,
        name: 'श्री दामोदर अष्टक',
        content: "500000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer"),
    Prayer(
        id: 12,
        name: 'प्रसाद-सेवा प्रार्थना',
        content: "500000.00",
        isliked: false,
                image: 'assets/hk.jpeg',

        category: "Prayer"),
  ];
  static List<Ffl> fflList = [
    Ffl(
        id: 1,
        name: 'Donate 50 meals',
        price:  1000.00,
        isSelected: true,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 2,
        name: 'Donate 100 meals',
        price: 2000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 3,
        name: 'Donate 250 meals',
        price: 5000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 4,
        name: 'Donate 500 meals',
        price: 10000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 5,
        name: 'Donate 1000 meals',
        price: 20000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 6,
        name: 'Donate 2500 meals',
        price: 20000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 7,
        name: 'Donate 5000 meals',
        price: 100000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 8,
        name: 'Donate 10000 meals',
        price: 200000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
    Ffl(
        id: 9,
        name: 'Donate 25000 meals',
        price: 500000.00,
        isliked: false,
        image: 'assets/food.jpg',
        category: "Food for life"),
  ];
  static List<DG> dgList = [
    DG(
        id: 1,
        name: 'Donate 1 Hindi Bhagavad Gita',
        price:  250.00,
        isSelected: true,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),
    DG(
        id: 2,
        name: 'Donate 10 Hindi Bhagavad Gita',
        price: 2500.00,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),
    DG(
        id: 3,
        name: 'Donate 50 Hindi Bhagavad Gita',
        price: 12500.00,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),
    DG(
        id: 4,
        name: 'Donate 1 English Bhagavad Gita',
        price: 320.00,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),
    DG(
        id: 5,
        name: 'Donate 10 English Bhagavad Gita',
        price: 3200.00,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),
    DG(
        id: 6,
        name: 'Donate 50 English Bhagavad Gita',
        price: 16000.00,
        isliked: false,
        path: 'assets/geeta.png',
        category: "Donate Geeta"),

  ];
  static List<Slot> timingList = [
    Slot(
        id: 1,
        name: 'Mangla Arti',
        timing: "04:30",
        isSelected: true,
        isliked: false,
        image: 'assets/thali1.png',
        shift: " AM"),
    Slot(
        id: 2,
        name: 'Darshan Arti',
        timing: "07:30",
        isliked: false,
        image: 'assets/hk.jpeg',
        shift: " AM"),
    Slot(
        id: 3,
        name: 'Shrimad Bhagwatam Path',
        timing: "08:00",
        isliked: false,
        image: 'assets/geeta.png',
        shift: " AM"),
    Slot(
        id: 4,
        name: 'Rajbhog Arti',
        timing: "12:30",
        isSelected: true,
        isliked: false,
        image: 'assets/rajbhog.png',
        shift: " PM"),
    Slot(
        id: 5,
        name: 'Dopahar Vishram Pat Band',
        timing: "01.00",
        isSelected: true,
        isliked: false,
        image: 'assets/vishnu.png',
        shift: " PM"),
    Slot(
        id: 6,
        name: 'Uttpan Arti',
        timing: "04:30/04:00",
        isSelected: true,
        isliked: true,
        image: 'assets/pooja.png',
        shift: " PM(Winters)"),
    Slot(
        id: 7,
        name: 'Sandhya Arti',
        timing: "07.00/06:30",
        isSelected: true,
        isliked: false,
        image: 'assets/shandhya.jpeg',
        shift: " PM(Winters)"),
    Slot(
        id: 8,
        name: 'Shrimad Bhagwad Gita Path',
        timing: "07:30/07:00",
        isSelected: true,
        isliked: false,
        image: 'assets/bhagwat.jpg',
        shift: " PM(Winters)"),
    Slot(
        id: 9,
        name: 'Shayan Arti',
        timing: "08:45/08:15",
        isSelected: true,
        isliked: false,
        image: 'assets/hk3.jpg',
        shift: " PM(Winters)"),
    Slot(
        id: 10,
        name: 'Ratri Vishram',
        timing: "09.00/08:30",
        isSelected: true,
        isliked: false,
        image: 'assets/vishnu.jpg',
        shift: " PM(Winters)"),

  ];
  static List<Category> categoryList = [
    Category(id: 1, name: "Bhajans\n&Keertans", image: 'assets/om.png', isSelected: true),
    Category(id: 2, name: "Feed\nHungry", image: 'assets/cooking.png'),
     Category(id: 3, name: "Daily\nDarshan", image: 'assets/krishna.png'),
   ];


  static List<String> showThumbnailList = [
    "assets/om.png",
    "assets/om.png",
    "assets/om.png",
    "assets/om.png",
  ];
  static String description =
      "Clean lines, versatile and timeless—the people  returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.";
}
