import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/DG.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

import '../model/Prayer.dart';

class PrayerCard extends StatelessWidget {
  final Prayer product;
 final  bool clickable;
  final ValueChanged<Prayer> onSelected;
  PrayerCard({Key? key,   required this.clickable, required this.product, required this.onSelected}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      if(clickable){
      Navigator.of(context).pushNamed('/prayer_detail');}
    },
    child:Container(
      decoration: BoxDecoration(
        color: LightColor.background,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: !product.isSelected ? 20 : 0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: product.isSelected ? 15 : 0),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 70,  // Adjust the radius as per your requirement
                        backgroundColor: LightColor.orange.withAlpha(40),
                        backgroundImage: AssetImage(product.image),  // Use backgroundImage for images in CircleAvatar
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: 5),
                Center(
                  child:  Text(
                    product.name,textAlign: TextAlign.center, style:
                  TextStyle( fontWeight: FontWeight.w800,
                    fontSize: product.isSelected ? 16 : 14,
                  ),
                  ),
                ),
                TitleText(
                  text: product.category,
                  fontSize: product.isSelected ? 14 : 12,
                  color: LightColor.orange,
                ),


                SizedBox(height: 10,),
        SizedBox(
          width: 110,
          child:
                    ElevatedButton( style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Set background color to orange
                    ),
                      child:     GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            '/view_prayer',
                            arguments: "${product.id}",  // Pass your argument here
                          );},
                        child: Text(
                          'View',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/view_prayer',
                          arguments: "${product.id}",  // Pass your argument here
                        );

                        //Navigator.of(context).pushNamed('/payment_detail');
                      },
                    ),

                )
                ,SizedBox(height: 5,),
              ],
            ),
          ],
        ),
      )
      )
    );
  }
}
