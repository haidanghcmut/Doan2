import 'package:chat_app/common/entities/contact.dart';
import 'package:get/get.dart';

class ContactState {
  var count = 0.obs;
  RxList<ContactItem> contactList = <ContactItem>[].obs;
}
