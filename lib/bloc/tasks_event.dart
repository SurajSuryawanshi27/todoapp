part of 'tasks_bloc.dart';

@immutable
abstract class TasksEvent extends Equatable{
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class GetTasks extends TasksEvent{}

class LoadTask extends TasksEvent{
  final List<Task> tasks;

  const LoadTask({this.tasks = const<Task>[]});

  @override
  List<Object> get props => [tasks];
}

class AddTask extends TasksEvent{
  final Task task;

  const AddTask({required this.task});

  @override
  List<Object> get props => [task];
}

class UpdateTask extends TasksEvent{
  final Task task;

  const UpdateTask({required this.task});

  @override
  List<Object> get props => [task];
}

class DeleteTask extends TasksEvent{
  final Task task;

  const DeleteTask({required this.task});

  @override
  List<Object> get props => [task];
}