import 'package:flutter/material.dart';
import 'package:user_list_app/models/user.dart';
import 'package:user_list_app/services/api_services.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: FutureBuilder<List<User>>(
        future: ApiServices.getUsers(),
        builder: (context, snapshot) {
          final users = snapshot.data;

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: users!.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text(user.id.toString())),
                    title: Text('${user.name} (${user.username})'),
                    subtitle: Text(user.email!),
                  ),
                );
              },
            );
          }
          return const Center(child: Text('No users found'));
        },
      ),
    );
  }
}
