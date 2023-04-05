import 'package:flutter/material.dart';
import 'package:plant_app/models/product_model.dart';
import 'package:plant_app/screens/details/detailsscreen.dart';
import 'package:plant_app/screens/home/componenets/fetured_plans.dart';
import 'package:plant_app/screens/home/componenets/header_with_Search_box.dart';

import 'Recomendplant.dart';
import 'Title_with_more_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<ProductModel> _productList = [];

  @override
  void initState() {
    super.initState();
    // api.getProduct();
    // ProductService().getProduct().then((value) {
    //   if (mounted) {
    //     setState(() {
    //       _productList.addAll(value);
    //     });
    //   }
    // });
  }

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
          Recomended_plant(
            size: size,
            productList: _productList,
          ),
          TitleWithMoreButton(
              title: 'Fetured plans',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()),
                );
              }),
          Fetured_plants(
            size: size,
            productList: _productList,
          )
        ],
      ),
    );
  }
}
