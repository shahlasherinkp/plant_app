import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'imagewithicon.dart';
import 'tileandprice.dart';

class BodyS extends StatelessWidget {
  const BodyS({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          imageWithicon(size: size),
          const tileAndPrice(),
          const SizedBox(height: kDefualtPadding,),
          Row(
            children: [
              SizedBox(
                height:84 ,
                width:size.width /2 ,
                child: ElevatedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(20))))
                  ),
                  onPressed: (){}, child: const Text('Buy now', style: 
                  TextStyle(fontSize: 16, color:Colors.white ),)),
                
              ),
             
            Expanded(
              child: MaterialButton(onPressed: (){},
              child: const Text('Description'),
              ),
            )
            
            
            ],
          )
        ],
      ),
    );
  }
}

