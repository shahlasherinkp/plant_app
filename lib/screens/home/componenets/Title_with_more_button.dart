import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    super.key, required this.title, required this.press,
  });
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
      child: Row(
        children: [
           TitleWithCustomWidget(text: title,),
          const Spacer(),
          ElevatedButton(
            
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)))),
            onPressed:press, child: const Text('More', style: TextStyle(color:Colors.white,)),
      )],
      ),
    );
  }
}

class TitleWithCustomWidget extends StatelessWidget {
  const TitleWithCustomWidget({
    super.key, required this.text,
  });
   final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: kDefualtPadding / 4),

            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: kDefualtPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
