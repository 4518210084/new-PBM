import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_list_app/models/user.dart';

class ApiServices {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String users = '/users';

  static Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse(baseUrl + users));
    if (response.statusCode == 200) {
      List<User> users = [];
      List<dynamic> body = jsonDecode(response.body);
      for (var item in body) {
        users.add(User.fromJson(item));
      }
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
