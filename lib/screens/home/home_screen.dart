import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/componenets/body.dart';

import '../../componenets/bottomnav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: const Body(),
      bottomNavigationBar: const Mynavbar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
    );
  }
}

