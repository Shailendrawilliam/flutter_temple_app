import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/pages/Category.dart';
import 'package:flutter_temple_app/src/pages/dg_detail.dart';
import 'package:flutter_temple_app/src/pages/ffl_detail.dart';
import 'package:flutter_temple_app/src/pages/ekadashi_calender.dart';
import 'package:flutter_temple_app/src/pages/mainPage.dart';
import 'package:flutter_temple_app/src/pages/payment_page.dart';
import 'package:flutter_temple_app/src/pages/prayer_detail.dart';
import 'package:flutter_temple_app/src/pages/prayer_page.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(title: ""),
       '/ffl_detail': (_) => FflDetailPage(),
       '/dg_detail': (_) => DGDetailPage(),
       '/payment_detail': (_) => PaymentDetailsPage(),
       '/prayer_detail': (_) => PrayerDetailPage(),
       '/view_prayer': (_) => PrayerPage(),
       '/ekadashi_calender': (_) => EkadashiCalender(),
       '/view_category': (_) => Category()
    };
  }
}
