import 'category_model.dart';
import 'package:flutter/material.dart';

class ProductsModel {
  int? id;
  String? title;
  int? price;
  String? description;
  CategoryModel? category;
  List<String>? images;

  ProductsModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price =  json['price'];
    description = json['description'];
    category = json['category'] != null
        ?  CategoryModel.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
  }

  static List<ProductsModel> getList(List prodData) {
    print('prodData ${prodData[1]}');
     return prodData.map((e) => ProductsModel.fromJson(e)).toList();
  }

 
}

