import 'package:get/get.dart';
import 'package:voicechat/controller/homepageController.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomePageController());
  }
}


//hello world
// how are you
//what are you doing 
