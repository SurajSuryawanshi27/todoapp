import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/task.dart';

class TaskRepository {
  final String baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Task>> getTask() async {
    final response = await http.get(Uri.parse(baseUrl));
    if(response.statusCode == 200){
      return (jsonDecode(response.body) as List).map((task) => Task.fromJson(task)).toList();
    }else{
      throw Exception("Failed to load tasks");
    }
  }
}
