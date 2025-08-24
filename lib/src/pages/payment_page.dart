import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/dg_card.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';
import 'package:dotted_border/dotted_border.dart';

class PaymentDetailsPage extends StatefulWidget {
  PaymentDetailsPage({Key? key}) : super(key: key);

  @override
  PaymentDetailsPageState createState() => PaymentDetailsPageState();
}

class PaymentDetailsPageState extends State<PaymentDetailsPage>
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



  Widget _qrButton(BuildContext context) {
    return  Center(
      child: Container(
        child: DottedBorder(
          borderType: BorderType.RRect, // Rounded rectangle border
          radius: Radius.circular(10),  // Border radius
          dashPattern: [6, 4], // Dotted pattern: 6px line, 4px gap
          strokeWidth: 2, // Thickness of the dots
          color: Colors.black, // Color of the border
          child: Container(
            padding: EdgeInsets.all(8), // Optional padding
            child: SizedBox(
              height: 320,
              width: 320,
              child: Image.asset("assets/vishnu.jpg"),
            ),
          ),
        ),
      ),
    );;


  }

  Widget _upiList() {
    List<String> upiIds = [

    ];
    return Center(
      child: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(top: 50, bottom: 20,left: 20,right: 30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              "UPI IDs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: upiIds.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.payment, color: Colors.green),
                  title: Text(
                    upiIds[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                );
              },
            ),
           Spacer(), Center(
              child: RotatedBox(
                quarterTurns: 4,
                child: SizedBox( height:70,width:70,child:   Image.asset("assets/logo.png")),
              ),
            ),],
        ),
      ),
    );
  }








  Widget _bankDetails() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(30), // Outer spacing
        padding: EdgeInsets.all(20), // Inner spacing
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 2, // Border thickness
          ),
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: RotatedBox(
                  quarterTurns: 4,
                  child: SizedBox( height:70,width:70,child:   Image.asset("assets/logo.png")),
                ),
              ),
              SizedBox(height: 20,),

                  SelectableText(
                    'NAME: Temple Donation Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: LightColor.grey_900,
                    ),
                  ),
                  SelectableText(
                    'Bank Name: ABC BANK',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: LightColor.grey_900,
                    ),
                  ),
                  SelectableText(
                    'A/C. No.: XXXXXXXXX984',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: LightColor.grey_900,
                    ),
                  ),
                  SelectableText(
                    'BRANCH NAME: BANK BRANCH NAME',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: LightColor.grey_900,
                    ),
                  ),
                  SelectableText(
                    'IFSC CODE: BANK IFSC CODE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: LightColor.grey_900,
                    ),
                  ),



            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _appBar(),
              Image.asset('assets/banner2.jpg'),
              TabBar(
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(text: "A Details"),
                  Tab(text: "B Details"),
                  Tab(text: "More Details"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _upiList(), // UPI Section
                    _bankDetails(), // Bank Details Section
                   _qrButton(context), // QR Section
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
