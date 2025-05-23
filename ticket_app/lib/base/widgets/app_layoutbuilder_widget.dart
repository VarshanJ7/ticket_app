import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {

 // 1️⃣ Constructor to accept external values
  const AppLayoutbuilderWidget({super.key, required this.randomDivider});

  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return 
    
    LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
       
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction:Axis.horizontal,
        children: List.generate(
          (constraints.constrainWidth() / randomDivider).floor(),
          (index) => SizedBox(
            width: 3,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

      },
    );
  }
}

//In Flutter, the build() method is where you return your UI — the widgets you want to display.