import 'package:flutter/material.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';

class SeanceList extends StatelessWidget {
  const SeanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
           children: [
            for (int i = 0; i < 7; i++) const SeanceItem(),
          ],
        ));
  }
}

class SeanceItem extends StatelessWidget {
  const SeanceItem({super.key});
  @override
  Widget build(BuildContext context) {
    return   Container(
                        margin: const EdgeInsets.all(2),
                        height: 175,
                        decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Row(children: [
                          SizedBox(
                              height: double.infinity,
                              width: 110,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  child: Image.network(
                                    'https://thumbs.dreamstime.com/b/flat-illustration-woman-data-analyst-business-digital-marketing-perfect-landing-page-website-content-media-social-vector-189608980.jpg',
                                    height: 220.0,
                                    width: double.maxFinite,
                                    fit: BoxFit.cover,
                                  ))),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(4.0),
                                          padding: const EdgeInsets.all(2.0),
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
                                          child: const Text(
                                            "Baila Wane",
                                            style: TextStyle(
                                              color: white,
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(2.0),
                                          padding: const EdgeInsets.all(2.0),
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
                                          child: const Text(
                                            "HE : 24H",
                                            style: TextStyle(
                                              color: white,
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "12-02-2024",
                                          style: TextStyle(
                                            color: textfieldbg,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          "9h-17h",
                                          style: TextStyle(
                                            color: textfieldbg,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                     Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                         ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                               backgroundColor: yellow ,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          child:  const Text('Absence',style: TextStyle(
                                            color: white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),),
                                        ),
                                       const  SizedBox(width: 10,),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                               backgroundColor: textfieldbg ,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          child:  const Text('Emarger',style: TextStyle(
                                            color: white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),),
                                        )
                                      ],
                                    )
                                  ]))
                        ]));
  }
}