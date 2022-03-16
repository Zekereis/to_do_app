import 'package:to_do_app/app/data/models/task.dart';
import 'package:to_do_app/app/data/providers/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writetasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}