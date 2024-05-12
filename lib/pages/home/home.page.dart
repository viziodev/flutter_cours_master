import 'package:flutter/material.dart';
import 'package:flutter_corse/core/providers/data_proviver.dart';
import 'package:flutter_corse/pages/home/widget/cours_day_widget.dart';
import 'package:flutter_corse/pages/home/widget/cours_widget.dart';
import 'package:flutter_corse/public/constants/colors.constant.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    // TODO: implement initState
       super.initState();
       initData();
     
  }
    void initData() async{
           // final dataProvider=Provider.of<DataProvider>(context,listen: false);
           // await  dataProvider.initData();
          //  print(dataProvider.coursList);
  }

    @override
  Widget build(BuildContext context) {
  //  final dataProvider=Provider.of<DataProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: scaffoldbg,
      body: SingleChildScrollView(
          child: Stack(
         children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 340,
            ),
            child: Container(
              color: containercolor,
              height: 1000,
            ),
          ),
           SafeArea(
             bottom: false,
             child: SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.only(
                   left: 20, right: 20, top: 40, bottom: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      RichText(
                        textScaleFactor: 0.5,
                        text: const TextSpan(
                    
                           style: TextStyle(
                             fontSize: 50,
                          ),
                           children: <TextSpan>[
                               TextSpan(
                                text: 'Bienvenue  ',
                                style: TextStyle(
                                color: white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                ), 
                               ),
                                TextSpan(
                                text: 'emploi du temps ',
                                  style: TextStyle(
                                  color: yellow,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ), 
                         ),
                             TextSpan(
                              
                             text: 'de la semaine 👋',
                              style: TextStyle(
                               color: white,
                               letterSpacing: 1,
                               fontWeight: FontWeight.bold,
                             ), 
                            ),
                           
                           ]
                          
                           )
                            
                           ),
                         const SizedBox(
                             height: 20.0,
                         ),

                        Container(
                        height: 60,
                         padding: const EdgeInsets.symmetric(
                         vertical: 6.0,
                         horizontal: 12.0,
                        ),
                        decoration: const BoxDecoration(
                          color: textfieldbg,
                          borderRadius: BorderRadius.all(
                           Radius.circular(6.0),
                           ),
                         ),
                          child: Center(
                           child: TextFormField(
                            keyboardType: TextInputType.name,
                           cursorColor: Colors.grey[400],
                           style: TextStyle(
                           color: Colors.grey[400],
                           fontSize: 18,
                           letterSpacing: 1,
                           fontWeight: FontWeight.w500,
                           ), 
                           autofocus: false,
                           initialValue: null,
                            decoration: InputDecoration.collapsed(
                             filled: true,
                             fillColor: Colors.transparent,
                             hintText: "Recherche Cours",
                               hintStyle: TextStyle(
                               color: Colors.grey[400],
                               letterSpacing: 1,
                               fontSize: 18,
                               fontWeight: FontWeight.w500,
                             ), 
                           
                                                     )
                           )

                          )
                     ), 
                      const SizedBox(
                     height: 20.0,
                   ), 
                     CoursWidget() ,
                     const SizedBox(
                     height: 20.0,
                     ),
                    const CoursDayWidget() 
                    
                 ],),
               ),
             ),

             
          ),
       
           
        ],
      )),
    );
  }
}