import 'package:flutter/material.dart';
import '../widgets/feeds_widget.dart';

class AllProducts extends StatelessWidget {
  static const routeName = 'all-product';
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Products'),
        ),
        body: GridView.builder(
          // physics: physics,
          // shrinkWrap: shrinkWrap,
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0),
          itemBuilder: (context, index) => const FeedsWidget(),
        ));
  }
}
