import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/Ffl.dart';

import 'package:flutter_temple_app/src/model/product.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

class FflCard extends StatelessWidget {
  final Ffl product;
  final bool clickable;
  final ValueChanged<Ffl> onSelected;
  FflCard({Key? key,   required this.clickable,required this.product, required this.onSelected}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if(clickable){
            Navigator.of(context).pushNamed('/ffl_detail');}
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
                TitleText(
                  text: product.name,
                  fontSize: product.isSelected ? 16 : 14,
                ),
                TitleText(
                  text: product.category,
                  fontSize: product.isSelected ? 14 : 12,
                  color: LightColor.orange,
                ),
                TitleText(
                  text: "\u20b9 "+product.price.toString(),
                  fontSize: product.isSelected ? 18 : 16,
                ),

                SizedBox(height: 10,),
        SizedBox(
          width: 110,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, // Set background color to orange
            ),
            child: GestureDetector(
              onTap: () {
                // Navigate to the payment details page when tapped
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
            onPressed: () {
              Navigator.of(context).pushNamed('/payment_detail');
            },
          ),
        )

        ,SizedBox(height: 5,),
              ],
            ),
          ],
        ),
      ) ,
      ) ,
    );
  }
}
