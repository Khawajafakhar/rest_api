import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Userswidget extends StatelessWidget {
  const Userswidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListTile(
      leading: Image.network(
        'https://placeimg.com/640/480/any',
        height: size.height * 0.15,
        width: size.width * 0.15,
      ),
      title: const Text('Name'),
      subtitle: const Text('email@email.com'),
      trailing: const Text('User role'),
    );
  }
}
