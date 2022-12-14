import 'package:flutter/material.dart';
import '../widgets/users_widget.dart';

class UsersScreen extends StatelessWidget {
  static const routeName='users-screen';
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView.builder(itemCount: 10,
        itemBuilder: (context, index) => const Userswidget(),
      ),
    );
  }
}
