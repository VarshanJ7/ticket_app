import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart'; // Ensure this is the correct path to AppStyles


class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
      width: size.width * 0.6,
      height: size.height * 0.4,
      decoration: BoxDecoration(
      color:Colors.blue,
      borderRadius: BorderRadius.circular(24),
      
      
      
      ) ,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height:180,
  decoration: BoxDecoration( 
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  
    image: DecorationImage(
        fit:BoxFit.cover,
      image:AssetImage(AppMedia.hotelroom), )
  ),


)
 ,const SizedBox(height: 10),
 Text("open space",
 style:AppStyles.headLineStyle3.copyWith(color:Colors.white),),
  Text("London",
 style:AppStyles.headLineStyle1.copyWith(color:Colors.white),),

],



      ) ,
      
      
      
      ),
    );
  }
}



 