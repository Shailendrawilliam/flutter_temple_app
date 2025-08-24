import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/model/slot.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';

class TempleTimingPage extends StatelessWidget {
  const TempleTimingPage({Key? key}) : super(key: key);

  Widget _timingItems() {
    return Column(
      children: AppData.timingList.map((slot) => _timingItem(slot)).toList(),
    );
  }

  Widget _timingItem(Slot model) {
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          _imageSection(model),
          Expanded(
            child: ListTile(
              title: TitleText(
                text: model.name,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              subtitle: Row(
                children: <Widget>[
                  TitleText(
                    text: model.timing.toString(),
                    color: LightColor.red,
                    fontSize: 12,
                  ),
                  TitleText(
                    text: model.shift.toString(),
                    fontSize: 14,
                  ),
                ],
              ),
              trailing: _trailingIcon(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageSection(Slot model) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 60,
              height: 60, // Ensure height matches width for a perfect circle
              decoration: BoxDecoration(
                color: LightColor.orange.withOpacity(0.2),
                shape: BoxShape.circle, // Makes the container circular
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipOval( // Makes the image circular
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    model.image,
                     colorBlendMode: BlendMode.srcIn, // Ensure proper blending
                    fit: BoxFit.cover, // Ensure it fills the circular shape
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget _trailingIcon() {
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: LightColor.lightGrey.withAlpha(150),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        'assets/diya.png', // Apply orange tint
        colorBlendMode: BlendMode.srcIn, // Ensure proper blending
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
            _timingItems(),
            Divider(
              thickness: 1,
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}