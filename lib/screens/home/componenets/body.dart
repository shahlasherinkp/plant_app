import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detailsscreen.dart';
import 'package:plant_app/screens/home/componenets/fetured_plans.dart';
import 'package:plant_app/screens/home/componenets/header_with_Search_box.dart';

import 'Recomendplant.dart';
import 'Title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Reccomnded",
            press: () {},
          ),
          Recomended_plant(size: size),
          TitleWithMoreButton(title: 'Fetured plans', press: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DetailsScreen()),
  );
          }),
          Fetured_plants(size: size)
        ],
      ),
    );
  }
}

