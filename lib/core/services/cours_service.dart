import 'package:flutter_corse/core/models/cours_model.dart';
import 'package:flutter_corse/core/services/api_constant.dart';
import 'package:dio/dio.dart';
class CoursService {
   static  final String url="$apiUrl/cours/status/${StatutCours.started.value}" ;
   static  Dio dio=Dio();
     Future<List<CoursModel>> findAll() async{ 
          final response= await dio.get(url);
          if (response.statusCode==200) {
               List<dynamic> datas=response.data["results"];
              List<CoursModel> courList=[];
              for (var map in datas) {
                  courList.add(CoursModel.fromMap(map));
              }
               return  courList;
           }else{
                 throw response;
           }
    }
  
}