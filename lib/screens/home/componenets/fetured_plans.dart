import 'package:flutter/material.dart';

import '../../../constants.dart';

class Fetured_plants extends StatelessWidget {
  const Fetured_plants({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [Feture_plant_card(
          size: size,
          image: 'assets/images/bottom_img_1.png',
          press: () {
            
          },
          ),
          Feture_plant_card(
          size: size,
          image: 'assets/images/bottom_img_2.png',
          press: () {
            
          },
          ),
            ]),
    );
  }
}

class Feture_plant_card extends StatelessWidget {
  const Feture_plant_card({
    super.key,
    required this.size, required this.image, required this.press,
  });

  final String image;
  final VoidCallback press;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefualtPadding,
            top: kDefualtPadding / 2,
            bottom: kDefualtPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image), )
          
        ),
      ),
    );
  }
}
