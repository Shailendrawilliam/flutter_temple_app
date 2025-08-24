import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/DG.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/dg_card.dart';
import 'package:flutter_temple_app/src/widgets/ffl_card.dart';
import 'package:flutter_temple_app/src/widgets/prayer_card.dart';
import 'package:flutter_temple_app/src/widgets/product_card.dart';
import 'package:flutter_temple_app/src/widgets/product_icon.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({  Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _icon(IconData icon, {Color color = LightColor.iconColor}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Theme.of(context).colorScheme.background,
          boxShadow: AppTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _categoryWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.categoryList
            .map(
              (category) => ProductIcon(
                model: category,
                onSelected: (model) {
                  setState(() {
                    AppData.categoryList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _fflWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.fflList
            .map(
              (ffl) => FflCard(clickable:true,
                product: ffl,
                onSelected: (model) {
                  setState(() {
                    AppData.fflList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _prayerWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.prayerList
            .map(
              (prayer) => PrayerCard(clickable:true,
                product: prayer,
                onSelected: (model) {
                  setState(() {
                    AppData.prayerList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
  Widget _dgWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child:
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.dgList
            .map(
              (dg) => DGCard(clickable:true,
                product: dg,
                onSelected: (model) {
                  setState(() {
                    AppData.dgList.forEach((item) {
                      item.isSelected = false;
                    });
                    model.isSelected = true;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LightColor.lightGrey.withAlpha(100),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search ",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                    prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
          SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/ekadashi_calender');

            },
            child: Icon(
              Icons.calendar_today,
              color: Colors.black54,
            ),
          )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 210,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _search(),
            _categoryWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Prayers"
                    ,style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17
                        ,color: LightColor.grey_900)
                    ,), Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the payment details page when tapped
                      Navigator.of(context).pushNamed('/prayer_detail');
                    },
                    child: Text(
                      'View all',
                      style:  TextStyle(fontWeight:FontWeight.w600,fontSize: 15
                          ,color: LightColor.skyBlue),
                    ),
                  ),
                ],
              ),
            ),
            _prayerWidget(),
            Divider(
              thickness: 1,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Food For Life"
                    ,style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17
                        ,color: LightColor.grey_900)
                    ,), Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the payment details page when tapped
                      Navigator.of(context).pushNamed('/ffl_detail');
                    },
                    child: Text(
                      'View all',
                      style:  TextStyle(fontWeight:FontWeight.w600,fontSize: 15
                          ,color: LightColor.skyBlue),
                    ),
                  ),
                ],
              ),
            ),
            _fflWidget(),
            Divider(
              thickness: 1,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Geeta Distribution"
                    ,style: TextStyle(fontWeight:FontWeight.w600,fontSize: 17
                        ,color: LightColor.grey_900)
                    ,), Spacer(),GestureDetector(
              onTap: () {
                // Navigate to the payment details page when tapped
                Navigator.of(context).pushNamed('/dg_detail');
              },
              child: Text(
                'View all',
                style:  TextStyle(fontWeight:FontWeight.w600,fontSize: 15
                    ,color: LightColor.skyBlue),
              ),
            ),
                ],
              ),
            ),
            _dgWidget(),
          ],
        ),
      ),
    );
  }
}
