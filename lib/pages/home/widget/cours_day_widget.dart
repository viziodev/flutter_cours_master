import 'package:flutter/material.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';

class CoursDayWidget extends StatelessWidget {
  const CoursDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         for(int i=0;i<12;i++)
                           const CoursDayItemWidget()

                        ])
                         ) ;
  }
}

class CoursDayItemWidget extends StatefulWidget {
  const CoursDayItemWidget({super.key});

  @override
  State<CoursDayItemWidget> createState() => _CoursDayItemWidgetState();
}

class _CoursDayItemWidgetState extends State<CoursDayItemWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(  
                           margin: const EdgeInsets.all(8),
                           height: 400.0,
                           width: 320,
                           decoration: const BoxDecoration(
                             color: white,
                             borderRadius: BorderRadius.all(
                               Radius.circular(
                                 16.0,
                               ),
                             ),
                           ),
                           child:  Column(
                             children: [
                                     Stack(
                                     children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                           topLeft: Radius.circular(12.0),
                                             topRight: Radius.circular(12.0),
                                          ),
                                        child:  Image.network(
                                            'https://static.vecteezy.com/system/resources/thumbnails/004/580/539/small_2x/ui-ux-programmer-flat-design-illustration-vector.jpg',
                                            height: 220.0,
                                             width: double.maxFinite,
                                            fit: BoxFit.cover,
                                     ),

                                     ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                           Padding(
                                              padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 160.0,
                                              ),
                                             child: Container(
                                               padding: const EdgeInsets.all(8.0),
                                              height: 40,
                                              width: 120,
                                              alignment: Alignment.center,
                                               decoration: const BoxDecoration(
                                               color: yellow,
                                               borderRadius: BorderRadius.all(
                                               Radius.circular(
                                                 16.0,
                                               ),
                                             ),
                                            
                                             ),
                                             child: 
                                                 const Text(" Dev Mobile", 
                                                 style:  TextStyle( color: white,
                                                   fontSize: 16,
                                                   letterSpacing: 1,
                                                   fontWeight: FontWeight.bold,
                                                   ),),
                                                   
                                             
                                            ),
                                            
                                           ),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                              left: 20,
                                              top: 160.0,
                                              ),
                                             child: Container(
                                                padding: const EdgeInsets.all(8.0),
                                              height: 40,
                                              width: 110,
                                              alignment: Alignment.center,
                                               decoration: const BoxDecoration(
                                               color: blue,
                                               borderRadius: BorderRadius.all(
                                               Radius.circular(
                                                 16.0,
                                               ),
                                             ),
                                            
                                             ),
                                            
                                             child: 
                                                 const Text("HE : 24H", 
                                                 style:  TextStyle( 
                                                  color: white,
                                                   fontSize: 16,
                                                   letterSpacing: 1,
                                                   fontWeight: FontWeight.bold,
                                                   ),),
                                                   
                                             
                                            ),
                                            
                                           ),
                                           
                                         ],
                                       )
                                       ,const SizedBox(
                                          height: 5.0,
                                        ),
                                       

                                      ],

                                      ),
                                      const Text("Profeseur : Baila Wane", 
                                             style:  TextStyle( color: black,
                                               fontSize: 16,
                                               letterSpacing: 1,
                                               fontWeight: FontWeight.bold,
                                      ),),
                                      const SizedBox(
                                          height: 5.0,
                                        ),
                                      Container(
                                        padding:const EdgeInsets.all(8),
                                        width: double.maxFinite,
                                        child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry", 
                                               maxLines: 10,
                                               style:  TextStyle( color: black,
                                                 fontSize: 16,
                                                 letterSpacing: 1,
                                                 fontWeight: FontWeight.w300,
                                        ),),
                                      ),

                             ])
                             );
  }
}