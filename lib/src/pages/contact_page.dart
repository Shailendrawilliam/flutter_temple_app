import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/model/product.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);



  Widget _address() {
    return Column(
      children: <Widget>[
        SelectableText(
          'Address:\nTemple app,\nABC City,\nXYZ Road.',
          style: TextStyle(
            color: LightColor.orange,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _bankDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SelectableText(
            'NAME: Temple App',
            style: TextStyle(
              color: LightColor.grey_900,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SelectableText(
            'Bank Name: BANK NAME',
            style: TextStyle(
              fontSize: 18,
              color: LightColor.grey_900,
              fontWeight: FontWeight.w500,
            ),
          ),
          SelectableText(
            'A/C. No.: XXXXXXXXX980',
            style: TextStyle(
              fontSize: 18,
              color: LightColor.grey_900,
              fontWeight: FontWeight.w500,
            ),
          ),
          SelectableText(
            'BRANCH NAME: BRANCH NAME',
            style: TextStyle(
              fontSize: 18,
              color: LightColor.grey_900,
              fontWeight: FontWeight.w500,
            ),
          ),
          SelectableText(
            'IFSC CODE: IFSC CODE',
            style: TextStyle(
              fontSize: 18,
              color: LightColor.grey_900,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }


  Widget _ConatctContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: LightColor.orange.withAlpha(40), // Background color with transparency
              backgroundImage: AssetImage("assets/vishnu.jpg"), // Correct way to set an image
            ),
          ],
        ),

        TitleText(
          text: 'Contact Person',
          color: LightColor.grey_900,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        SelectableText(
          ' Temple Pujari',
          style: TextStyle(
            color: LightColor.orange,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        SelectableText(
          '+91XXXXXXXXX9, +91XXXXXXXXX5',
          style: TextStyle(
            color: LightColor.grey_700,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        SelectableText(
          'info@templeappofficial.org',
          style: TextStyle(
            color: LightColor.grey_700,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),

      ],
    );
  }

  Widget _qrButton(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(LightColor.orange),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2),
        width: AppTheme.fullWidth(context) * .75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RotatedBox(
              quarterTurns: 4,
              child: SizedBox( height:300,width:300,child:   Image.asset("assets/vishnu.jpg")),
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTheme.padding,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             _ConatctContent(),
            Divider(
              thickness: 1,
              height: 40,
            ),
           _address(),
            Divider(
              thickness: 1,
              height: 40,
            ),//  SizedBox(height: 6),
            _qrButton(context),
            _bankDetails( ),
            Divider(
              thickness: 1,
              height: 40,
            ),],
        ),
      ),
    );
  }
}
