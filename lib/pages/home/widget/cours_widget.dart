import 'package:flutter/material.dart';
import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/pages/details/detail_cours.page.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';


class CoursWidget extends StatelessWidget {
    final List<CoursModel> coursList;
     const CoursWidget({super.key,required this.coursList});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < coursList.length; i++) CoursItemWidget(cours:coursList[i] ,),
          ],
        ));
  }
}

class CoursItemWidget extends StatefulWidget {
  CoursModel cours;
  CoursItemWidget({super.key,required this.cours});

  @override
  State<CoursItemWidget> createState() => _CoursItemWidgetState();
}

class _CoursItemWidgetState extends State<CoursItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 150.0,
      width: 115,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 33,
              backgroundColor: scaffoldbg,
              backgroundImage: NetworkImage(
                    widget.cours.icon
                  ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                         MaterialPageRoute(builder: (context) => DetailCours(cours: widget.cours,)),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    height: 40,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: textfieldbg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10.0,
                        ),
                      ),
                    ),
                    child:  Text(
                       widget.cours.module,
                      style: const TextStyle(
                        color: white,
                        fontSize: 14,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
