import 'package:chat_app/common/values/colors.dart';
import 'package:chat_app/pages/contact/widgets/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';

class ContactPage extends GetView<ContactController> {
  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.transparent,
      // elevation: 0,
        title: Text(
          "Contact",
          style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ContactList(),
    );
  }
}

