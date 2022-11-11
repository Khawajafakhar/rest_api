import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final IconData icon;
  final Function function;

  AppBarIcons({required this.icon, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        function();
      },
        child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon),
      ),
    ));
  }
}
