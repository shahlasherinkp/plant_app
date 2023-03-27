import 'package:flutter/material.dart';

import '../../../constants.dart';

class Recomended_plant extends StatelessWidget {
  const Recomended_plant({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:[Recomnded_planet_card(
          size: size,
          image: "assets/images/image_1.png",
          title: 'Samantha',
          country: 'Russia',
          price: 300,
          press: () {
            
          },
          ),
          Recomnded_planet_card(
          size: size,
          image: "assets/images/image_2.png",
          title: 'Angellica',
          country: 'Russia',
          price: 300,
          press: () {
            
          },
          ),
          Recomnded_planet_card(
          size: size,
          image: "assets/images/image_3.png",
          title: 'Samantha',
          country: 'Russia',
          price: 300,
          press: () {
            
          },
          ),
             ] ),
    );
  }
}

class Recomnded_planet_card extends StatelessWidget {
  const Recomnded_planet_card({
    super.key,
    required this.size, required this.image, required this.title, required this.country, required this.price, required this.press,
  });
  final String image, title, country;
  final int price;
  final VoidCallback press;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kDefualtPadding,
        top: kDefualtPadding / 2,
        bottom: kDefualtPadding * 2.5,
      ),
      height: size.height * 0.3,
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefualtPadding / 2),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23))
              ]),
              child: Row(children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "$country\n".toUpperCase(),
                      style: TextStyle(
                          fontSize: 10,
                          color: kPrimaryColor.withOpacity(0.5),
                          fontWeight: FontWeight.bold)),
                ])),
                const Spacer(),
                  Text('$price', style: const TextStyle(fontSize: 15, color:kPrimaryColor,fontWeight: FontWeight.bold),)
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
