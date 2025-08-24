import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);



  Widget _aboutContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: LightColor.orange.withAlpha(40),
              backgroundImage: AssetImage("assets/vishnu.jpg"),
            ),
          ],
        ),
        SizedBox(height: 15),
        TitleText(
          text: 'About This App',
          color: LightColor.grey_900,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 10),
        TitleText(
          text:
          'This application is developed only for educational and inspirational purposes.',
          color: LightColor.grey_700,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        TitleText(
          text:
          'Disclaimer: All images, texts and other content shown in this app are sourced from public platforms on the Internet. We do not claim ownership or copyright over them.',
          color: LightColor.grey_700,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10),
        TitleText(
          text:
          'If you are the rightful owner of any material and want it to be removed or credited properly, please contact us.',
          color: LightColor.grey_700,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 20),
        Text(
          "© 2025 Your App Name",
          style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: Colors.grey),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppTheme.padding,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _aboutContent(),
            Divider(thickness: 1, height: 40),
             SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
