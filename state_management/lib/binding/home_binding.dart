import 'package:get/get.dart';
import 'package:state_management/controller.dart';
import 'package:state_management/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
