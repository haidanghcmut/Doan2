import 'package:chat_app/pages/frames/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Chat_app .";
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    print("WelcomeController is ready");
  }
}
