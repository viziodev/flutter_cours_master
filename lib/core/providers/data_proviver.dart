import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/core/services/cours_service.dart';


class DataProvider  with ChangeNotifier{
     List<CoursModel> _coursList=[];
     List<CoursModel> get coursList=>_coursList;
      Future<void>  findAllCours() async{ 
      try {
           CoursService coursService=CoursService();
            List<CoursModel> data= await  coursService.findAll();
              _coursList.clear();
              _coursList.addAll(data);
              //  print(_coursList);
      }  on Response catch (e) {
              print("Erreur :${e.statusCode}");
    }
     }

      Future<void> initData() async {
          await Future.wait([
             findAllCours(),
         ]);
  }
  

}