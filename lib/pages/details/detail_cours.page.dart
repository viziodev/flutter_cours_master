import 'package:flutter/material.dart';
import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/pages/details/widgets/cours_detail_widget.dart';
import 'package:flutter_corse/pages/widgets/seance_list_widget.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';

class DetailCours extends StatelessWidget {
    static String routeName="/detail";
    final CoursModel cours;
    const DetailCours({super.key,required this.cours});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldbg,
        body: SingleChildScrollView(
            child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: Container(
              color: containercolor,
             height: double.maxFinite-200,
            ),
          ),
          SafeArea(
              bottom: false,
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 40, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                          textScaleFactor: 0.5,
                          text:  TextSpan(
                              style: const TextStyle(
                                fontSize: 50,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Cours de :${cours.module}",
                                  style: const TextStyle(
                                    color: yellow,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ])),
                        const SizedBox(height: 16,),
                         Center(child: CoursDayItemWidget(cours: cours,)),
                        const SizedBox(
                        height: 16.0,
                        ),
                      const Text(
                         "😍 Les Seances du cours",
                          style: TextStyle(
                          color: black,
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          ),
                      ),
                      const SizedBox(height: 20,),
                      const SeanceList()
                      
                    ],
                  )))
        ])

            //
            ));
  }
}
