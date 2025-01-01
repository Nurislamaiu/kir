import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kir/util/color.dart';
import 'package:kir/widgets/appbar.dart';
import '../../../../constans/image_strings.dart';
import '../../widgets/rounded_image.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenColor.white,
      appBar: TAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Адрес", style: TextStyle(fontSize: 12, color: Colors.black),),
            Text("Казакстан, Астана", style: TextStyle(fontSize: 10, color: Colors.black),),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE0E0E0),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Iconsax.shopping_bag),
              iconSize: 24.0,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ),
          SizedBox(width: 5),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE0E0E0),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            constraints: BoxConstraints(maxWidth: 40.0, maxHeight: 40.0),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Iconsax.user),
              iconSize: 24.0,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                TRoundedImage(imageUrl: tCardImage1, title: 'Одежда'),
                TRoundedImage(imageUrl: tCardImage2, title: 'Kilem'),
                TRoundedImage(imageUrl: tCardImage3, title: 'Уборка дома'),
                TRoundedImage(imageUrl: tCardImage4, title: 'Чистка диванов кроватей'),
                TRoundedImage(imageUrl: tCardImage5, title: 'Обувь'),
                TRoundedImage(imageUrl: tCardImage6, title: 'Постельное белье'),
              ],
            )
          ],
        ),
      ),
    );
  }
}