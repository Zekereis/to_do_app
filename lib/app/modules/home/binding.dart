import 'package:get/get.dart';
import 'package:to_do_app/app/data/providers/provider.dart';
import 'package:to_do_app/app/data/services/repository.dart';
import 'package:to_do_app/app/modules/home/controller.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(
            taskProvider: TaskProvider(),
        ),
        ),
    );
  }
}