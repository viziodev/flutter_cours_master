import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String text;
  final double width;
  const BadgeWidget({super.key,required this.bgColor,required this.textColor, required this.text,this.width=110});

  @override
  Widget build(BuildContext context) {
    return Container(
                                                padding: const EdgeInsets.all(8.0),
                                                height: 40,
                                                width: width,
                                                alignment: Alignment.center,
                                                decoration:  BoxDecoration(
                                                color: bgColor ,
                                                borderRadius: const BorderRadius.all(
                                                Radius.circular(
                                                 16.0,
                                               ),
                                             ),
                                                                                         
                                             ),
                                                                                         
                                             child: 
                                                  Text(this.text, 
                                                   style:  TextStyle( 
                                                   color: textColor,
                                                    fontSize: 16,
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.bold,
                                                   ),),
                                                  );
  }
}