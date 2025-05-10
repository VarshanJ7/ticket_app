import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart'; // Adjusted to the correct project name and path

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      );
  }
}