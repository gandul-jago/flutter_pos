import 'package:dio/dio.dart';
import 'package:flutter_pos/core/api_client.dart';
import 'package:flutter_pos/data/models/menu_resto_model.dart';

class MenuRestoRepository extends ApiClient{
  // nanti buat delete, update, create, klo mau
  Future<List<MenuRestoModel>> getAllMenuResto() async{

    try {
      var response = await dio.get('menu-resto');
      debugPrint('GET ALL Menu Resto : ${response.data}');
      List list = response.data;
      List<MenuRestoModel> listMenuResto = list
          .map((element) => MenuRestoModel.fromJson(element))
          .toList();
      return listMenuResto;
    } on DioException catch (e) {
      throw Exception(e);
    }
    }
  }
