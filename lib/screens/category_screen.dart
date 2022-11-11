import 'package:flutter/material.dart';
import '../widgets/category_widget.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName='cat-screen';
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:const  Text('Category'),),body: GridView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0),
                    itemBuilder: (context, index) => const CategoryWidget(),
                  ),);
  }
}