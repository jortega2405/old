import 'package:flutter/material.dart';
import 'package:list_user/core/src/user_list/users_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Prueba de Ingreso',
          style: TextStyle(
            fontWeight: FontWeight.bold,     
            ),
          ),
        ),
        body: const UserList(),
      ),
    );
  }
}