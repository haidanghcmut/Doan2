import 'package:chat_app/pages/frames/welcome/controller.dart';
import 'package:get/get.dart';

import 'controller.dart';
class ContactBindings implements Bindings {
   @override
   void dependencies() {
      Get.lazyPut<ContactController>(() => ContactController());
   }
}