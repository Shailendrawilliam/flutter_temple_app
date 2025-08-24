import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';
import 'package:photo_view/photo_view.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        required VoidCallback onPressed, // Changed Function to VoidCallback
      }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: LightColor.iconColor,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        color:
        isOutLine ? Colors.transparent : Theme.of(context).colorScheme.background,
      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(() {
      onPressed(); // Directly call the callback
    }, borderRadius: const BorderRadius.all(Radius.circular(13)));
  }

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _appBar(),
            Expanded( // Use Expanded to make PhotoView take remaining vertical space
              child: PhotoView(
                imageProvider:    AssetImage(getImage(index!)),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2.0,
                enableRotation: true,
                backgroundDecoration: const BoxDecoration(
                  color: Colors.black,
                ),
                // Set initial scale to cover the width
                initialScale: PhotoViewComputedScale.contained,
                // Optional: Add a loading builder if the image takes time to load
                loadingBuilder: (context, event) => Center(
                  child: CircularProgressIndicator(
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  String getImage(String categoryId) {
    switch (categoryId) {
      case "1":
        return 'assets/vbanner1.jpeg';
      case "2":
        return 'assets/vbanner2.jpeg';
      case "3":
        return 'assets/vbanner3.jpeg';

      default:
        return 'assets/vbanner2.jpeg'; // Provide a default image path
    }
  }
}