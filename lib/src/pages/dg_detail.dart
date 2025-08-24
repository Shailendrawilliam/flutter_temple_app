import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/dg_card.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

class DGDetailPage extends StatefulWidget {
  DGDetailPage({Key? key}) : super(key: key);

  @override
  _DGPageState createState() => _DGPageState();
}

class _DGPageState extends State<DGDetailPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
     super.dispose();
  }

  bool isLiked = true;
  Widget _appBar() {
    return Container(
      padding: AppTheme.padding,
      color: Colors.orange, // Sets background to orange
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }


  Widget _icon(
    IconData icon, {
    Color color = LightColor.iconColor,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    required Function onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: LightColor.iconColor,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color:
            isOutLine ? Colors.transparent : Theme.of(context).colorScheme.background,

      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(() {
      if (onPressed != null) {
        onPressed();
      }
    }, borderRadius: BorderRadius.all(Radius.circular(13)));
  }



  Widget _dgWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: 500  ,
      child:
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           childAspectRatio: 2 / 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.vertical,
        children: AppData.dgList
            .map(
              (dg) => DGCard(clickable:false,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
                children: <Widget>[
  _appBar(),
                  Image.asset('assets/banner2.jpg'),
                  _dgWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
