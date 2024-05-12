import 'package:flutter/material.dart';
import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/core/providers/data_proviver.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';
import 'package:provider/provider.dart';

class CoursWidget extends StatelessWidget {
 
  CoursWidget({super.key});
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                        //controller: ScrollController(),
                          child: Row(
                           children: [
                           for(int i=0;i<12;i++)
                             CoursItemWidget(),
                            
                        ],
                     )
                     ) ;
  }
}


class CoursItemWidget extends StatefulWidget {
  
   CoursItemWidget({super.key});

  @override
  State<CoursItemWidget> createState() => _CoursItemWidgetState();
}

class _CoursItemWidgetState extends State<CoursItemWidget> {
  @override
  Widget build(BuildContext context) {
    return   Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            height: 150.0,
                            width: 115,
                            decoration:  const BoxDecoration(
                             color:white,
                             borderRadius:  BorderRadius.all(
                               Radius.circular(
                                 16.0,
                               ),
                             ),
                           ),
                            child:  const Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                   CircleAvatar(
                                      radius: 33,
                                      backgroundColor: scaffoldbg,
                                      backgroundImage: NetworkImage(
                                      "https://img.freepik.com/free-vector/designer-girl-concept-illustration_114360-4455.jpg?w=2000"
                                     ),
                                   ),
                               Spacer(),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                     "Cours 1",
                                        style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500,
                                     ), 
                                   ),
                                 ],
                               ),


                               ]
                             ), 
                           );
  }
}