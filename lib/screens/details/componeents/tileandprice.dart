import 'package:flutter/material.dart';

import '../../../constants.dart';

class tileAndPrice extends StatelessWidget {
  const tileAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:kDefualtPadding),
      child: Row(
        children: [
          RichText(text: 
          const TextSpan(
            children: [
              TextSpan(
                text: 'Anglica\n', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
              ),
              TextSpan(
                text: 'Russia', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor)
              )
    
            ]
          )
          ),
          const Spacer(),
          const Text('540', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor), )
          
        ],
      ),
    );
  }
}

