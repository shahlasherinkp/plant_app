import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/screens/home/home_screen.dart';

import '../../../constants.dart';
import 'iconcard.dart';

class imageWithicon extends StatelessWidget {
  const imageWithicon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: kDefualtPadding * 3),
      child: SizedBox(height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefualtPadding * 3),
                child: Column(
                  children:  [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){
                        Navigator.pop(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
                      },
                      padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
                       icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                    ),
                    const Spacer(),
                    iconCard(
                      size: size,
                      icon: 'assets/icons/sun.svg',
                      ),
                       iconCard(
                      size: size,
                      icon: 'assets/icons/icon_2.svg',
                      ),
                       iconCard(
                      size: size,
                      icon: 'assets/icons/icon_3.svg',
                      ),
                       iconCard(
                      size: size,
                      icon: 'assets/icons/icon_4.svg',
                      ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration:   BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29)
      
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(36)
                ),
                  image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ),
    );
  }
}

