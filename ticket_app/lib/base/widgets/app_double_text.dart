import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
AppDoubleText({super.key,required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
Text(bigText, style: AppStyles.headLineStyle3),
 InkWell(
  onTap: () {

//Navigator.push(context, MaterialPageroute)(context
  //builder: (context) => const Text("You are in the next screen")
  //);

// for if tekan that button will bring to another page exampls view all button 


  } 

  , child:Text (smallText, style: AppStyles.headLineStyle3) 
  ) 
    ],
  );
  }
} 