import 'package:googleapis/people/v1.dart';
import 'package:chat_app/common/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/common/values/values.dart';
import 'package:chat_app/common/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInPage extends GetView<SignInController> {
  // logo
  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        "Chatty .",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp,
        ),
      ),
    );
  }

  // 第三方登录
  Widget _buildThirdPartyGoogleLogin() {
    return GestureDetector(
        child: Container(
          width: 295.w,
          height: 44.h,
          margin: EdgeInsets.only(bottom: 15.h),
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 40.w, right: 30.w),
                  child: Image.asset("assets/icons/google.png")),
              Container(
                child: Text(
                  "Sign in with Google",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          controller.handleSignIn("google");
        });
  }

  Widget _buildThirdPartyFacebookLogin() {
    return GestureDetector(
        child: Container(
          width: 295.w,
          height: 44.h,
          margin: EdgeInsets.only(bottom: 15.h),
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 40.w, right: 30.w),
                  child: Image.asset("assets/icons/facebook.png")),
              Container(
                child: Text(
                  "Sign in with Facebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          controller.handleSignIn("facebook");
        });
  }

  Widget _buildThirdPartyAppleLogin() {
    return GestureDetector(
        child: Container(
          width: 295.w,
          height: 44.h,
          margin: EdgeInsets.only(bottom: 15.h),
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 40.w, right: 30.w),
                  child: Image.asset("assets/icons/apple.png")),
              Container(
                child: Text(
                  "Sign in with Apple",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          controller.handleSignIn("apple");
        });
  }

  Widget _buildThirdPartyPhoneLogin() {
    return GestureDetector(
        child: Container(
          width: 295.w,
          height: 44.h,
          margin: EdgeInsets.only(bottom: 40.h),
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Sign in with phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          controller.handleSignIn("phone");
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildThirdPartyGoogleLogin(),
            _buildThirdPartyFacebookLogin(),
            _buildThirdPartyAppleLogin(),
            Container(
              margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  height: 2.h,
                  indent: 50,
                  color: AppColors.primarySecondaryElementText,
                )),
                Text("  or  "),
                Expanded(
                    child: Divider(
                  height: 2.h,
                  endIndent: 50,
                  color: AppColors.primarySecondaryElementText,
                )),
              ]),
            ),
            _buildThirdPartyPhoneLogin(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Already have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                      child: Text(
                        "Sign up here ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primaryElement,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                        ),
                      ),
                      onTap: () {
                        controller.handleSignIn("email");
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
