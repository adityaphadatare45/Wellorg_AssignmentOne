import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String name;
  final String email;

  const UserTile({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}
