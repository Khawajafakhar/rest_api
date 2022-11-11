import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rest_api/consts/global_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            'https://placeimg.com/640/480/any',
            fit: BoxFit.cover,
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Container(
                color: lightBackgroundColor.withOpacity(0.5),
                child: const Text(
                  'Shoes',
                  style: TextStyle(fontSize: 24),
                )))
      ]),
    );
  }
}
