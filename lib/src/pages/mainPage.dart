import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/pages/contact_page.dart';
import 'package:flutter_temple_app/src/pages/home_page.dart';
import 'package:flutter_temple_app/src/pages/about.dart';
import 'package:flutter_temple_app/src/pages/temple_timing_page.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

class MainPage extends StatefulWidget {
  MainPage({  Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isHomePageSelected = true;
  int index=0;
  Widget _appBar() {
    return Container(
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: SizedBox( height:70,width:70,child:   Image.asset("assets/logo.png")),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, // Set background color to orange
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/payment_detail');
            },
            child: Text(
              'Donate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _title() {
    return Container(
        margin: AppTheme.padding,
        child: switch (index) {
          0 => TitleText(
            text:   'Flutter Temple App',
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),
          1 => TitleText(
            text:   'Timing',
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),2 => TitleText(
            text: '',
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),
          3 => TitleText(
            text:  '',
            fontSize: 27,
            fontWeight: FontWeight.w400,
          ),
          _ => Center(child: Text('Page Not Found')),
        } );
  }

  void onBottomIconPressed(int indexx) {
    if (indexx == 0  ) {
      setState(() {
        index=indexx;
        isHomePageSelected = true;
      });
    } else {
      setState(() {
        index=indexx;

        isHomePageSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: AppTheme.fullHeight(context) - 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xfffbfbfb),
                      Color(0xfff7f7f7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _appBar(),
                    _title(),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        switchInCurve: Curves.easeInToLinear,
                        switchOutCurve: Curves.easeOutBack,
                          child:  switch (index) {
                            0 => MyHomePage(title: ''),
                            1 => Align(  alignment: Alignment.topCenter,
                              child: TempleTimingPage(),
                            ),
                            2 => Align(  alignment: Alignment.topCenter,
                              child: AboutPage(),
                            ),
                            3 => ContactPage(),
                            _ => Center(child: Text('Page Not Found')),
                          }
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CustomBottomNavigationBar(
                onIconPresedCallback: onBottomIconPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
