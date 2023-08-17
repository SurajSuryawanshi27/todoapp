

part of 'task.dart';

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
  id: json['id'] as int,
  userId: json['userId'] as int,
  title: json['title'] as String,
  isComplete: json['completed'] as bool? ?? false,
);

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'completed': instance.isComplete,
};