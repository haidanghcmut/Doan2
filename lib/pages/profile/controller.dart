
import 'package:chat_app/pages/profile/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../common/routes/names.dart';
import '../../common/store/user.dart';

class ProfileController extends GetxController {
  ProfileController();
  final title = "Chat_app Welcome";
  final state = ProfileState();


  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
