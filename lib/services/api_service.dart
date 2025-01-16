import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_manager_application/models/task_model.dart';

class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TaskModel>> fetchTasks() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((task) => TaskModel.fromJson(task)).toList();
    } else {
      throw Exception('Failed to load tasks');
    }
  }
}
