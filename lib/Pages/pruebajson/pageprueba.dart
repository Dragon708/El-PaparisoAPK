import 'package:flutter/material.dart';
import 'package:paraisoperrunoapk/Pages/pruebajson/Productosrrrrr.dart';

class JsonParse extends StatefulWidget {
  const JsonParse({super.key});

  @override
  State<JsonParse> createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  late Future<List<User>> users;
  @override
  void initState() {
    super.initState();
    users = getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Container(
        color: Colors.white,
        child: FutureBuilder<List<User>>(
            future: users,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final users = snapshot.data;
                return listajson(users!);
              } else {
                return const Text('no user data');
              }
            }),
      ),
    );
  }

  Widget listajson(List<User> users) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              title: Text(user.nombre),
              subtitle: Text(user.titulo),
            ),
          );
        });
  }
}
