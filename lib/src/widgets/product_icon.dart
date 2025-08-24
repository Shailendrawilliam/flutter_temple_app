import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/category.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';

class ProductIcon extends StatelessWidget {
  final ValueChanged<Category> onSelected;
  final Category model;
  ProductIcon({Key? key, required this.model, required this.onSelected}) : super(key: key);

  Widget build(BuildContext context) {
    return model.id == null
        ? const SizedBox(width: 5)
        : Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Material( // Wrap with Material widget to enable InkWell effect
        color: Colors.transparent, // Make Material transparent
        child: InkWell( // Use InkWell for ripple effect on tap
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          onTap: () {

            Navigator.of(context).pushNamed(
              '/view_category',
              arguments: "${model.id}",  // Pass your argument here
            );


            onSelected(model);
          },
          child: Container(
            padding: AppTheme.hPadding,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: model.isSelected
                  ? LightColor.background
                  : Colors.transparent,
              border: Border.all(
                color: model.isSelected ? LightColor.orange : LightColor.grey,
                width: model.isSelected ? 2 : 1,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: model.isSelected ? const Color(0xfffbf2ef) : Colors.white,
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                model.image != null ? SizedBox(width:32,height:32,child: Image.asset(model.image)) : const SizedBox(),
                const SizedBox(width: 10,),
                model.name == null
                    ? Container()
                    : TitleText(
                  text: model.name,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}