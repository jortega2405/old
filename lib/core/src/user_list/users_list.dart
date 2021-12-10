import 'package:flutter/material.dart';


class UserList extends StatefulWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class User {
   String name, username;
   User(this.name, this.username);
 }

class _UserListState extends State<UserList> {
   late bool loading;
   late List<User> users;
  
  @override
  void initState() {
    // TODO: implement initState
     users = [];
     loading = true;
     _loadUsers();
    super.initState();
  }

 


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
        title: Text(users[index].name),
        subtitle: Text(users[index].username),
        leading: const Icon(Icons.supervised_user_circle_outlined),
        );
      },
      itemCount: 100,
    );
  }
}

void _loadUsers() async {
  

}
 