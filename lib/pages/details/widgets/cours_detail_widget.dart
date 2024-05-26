import 'package:flutter/material.dart';
import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/pages/widgets/badge_widget.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';



class CoursDayItemWidget extends StatefulWidget {
  final CoursModel cours;
  const CoursDayItemWidget({super.key,required this.cours});

  @override
  State<CoursDayItemWidget> createState() => _CoursDayItemWidgetState();
}

class _CoursDayItemWidgetState extends State<CoursDayItemWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(  
                           margin: const EdgeInsets.all(8),
                           height: 300.0,
                           width: 450,
                           decoration: const BoxDecoration(
                             color: white,
                             borderRadius: BorderRadius.all(
                               Radius.circular(
                                 16.0,
                               ),
                             ),
                           ),
                           child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                                     Stack(
                                     children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                           topLeft: Radius.circular(12.0),
                                             topRight: Radius.circular(12.0),
                                          ),
                                        child:  Image.network(
                                            widget.cours.icon,
                                            height: 180.0,
                                             width: double.maxFinite,
                                            fit: BoxFit.cover,
                                     ),

                                     ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10,
                                              top: 20.0,),
                                         child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                                              BadgeWidget(bgColor: scaffoldbg, textColor:white, text:  widget.cours.professor,width: 200,),
                                              BadgeWidget(bgColor: yellow, textColor:white, text: widget.cours.module),
                                         ]),
                                       )
                                       ,const SizedBox(
                                          height: 10.0,
                                        ),
                                      ],

                                      ),
                                     
                                        BadgeWidget(bgColor: yellow, textColor:white, text: widget.cours.module,width: 300,),
                                       const SizedBox(
                                          height: 10.0,
                                        ),
                                       const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                          BadgeWidget(bgColor: blue, textColor:white, text: "HT : 24H",),
                                          BadgeWidget(bgColor: blue, textColor:white, text: "HP : 24H",),
                                          BadgeWidget(bgColor: blue, textColor:white, text: "HR : 24H",),  
                                         ]),
                                      const SizedBox(
                                          height: 5.0,
                                        ),
                                   
                                     
                                     
                                       
                                     

                             ])
                             );
  }
}