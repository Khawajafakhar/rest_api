import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rest_api/consts/api_strings.dart';
import '../models/product_model.dart';

class APIHandler {
  static Future<List<ProductsModel>> getAllProducts() async {
    var url = Uri.https(BASE_URL, 'api/v1/products');
    var response = await http.get(url);

    //  print('response ${json.decode(response.body)}');
    var data = json.decode(response.body);
    List temp=[];
     for(var e in data){
     // print('e $e');
      temp.add(e);
     }
     return ProductsModel.getList(temp);
  }
}
