import 'package:chat_app/pages/frames/email_login/index.dart';
import 'package:chat_app/pages/frames/forgot/index.dart';
import 'package:chat_app/pages/frames/phone/index.dart';
import 'package:chat_app/pages/frames/register/index.dart';
import 'package:chat_app/pages/frames/send_code/index.dart';
import 'package:chat_app/pages/message/photoview/binding.dart';
import 'package:chat_app/pages/message/photoview/view.dart';
import 'package:chat_app/pages/message/videocall/index.dart';
import 'package:chat_app/pages/message/voicecall/index.dart';
import 'package:chat_app/pages/profile/index.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/common/middlewares/middlewares.dart';
import 'package:chat_app/pages/contact/index.dart';
import 'package:chat_app/pages/message/chat/index.dart';
import 'package:chat_app/pages/message/index.dart';
import 'package:chat_app/pages/frames/sign_in/index.dart';
import 'package:chat_app/pages/frames/welcome/index.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // 免登陆
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),

    // 需要登录
    // GetPage(
    //   name: AppRoutes.Application,
    //   page: () => ApplicationPage(),
    //   binding: ApplicationBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(priority: 1),
    //   ],
    // ),

    // 最新路由
    GetPage(name: AppRoutes.EmailLogin, page: () => EmailLoginPage(), binding: EmailLoginBinding()),
    GetPage(name: AppRoutes.Register, page: () => RegisterPage(), binding: RegisterBinding()),
    GetPage(name: AppRoutes.Forgot, page: () => ForgotPage(), binding: ForgotBinding()),
    GetPage(name: AppRoutes.Phone, page: () => PhonePage(), binding: PhoneBinding()),
    GetPage(name: AppRoutes.SendCode, page: () => SendCodePage(), binding: SendCodeBinding()),
    // 首页
    GetPage(name: AppRoutes.Contact, page: () => ContactPage(), binding: ContactBindings()),
    //消息
    GetPage(name: AppRoutes.Message, page: () => MessagePage(), binding: MessageBinding(),middlewares: [
       RouteAuthMiddleware(priority: 1),
     ],),
    //我的
    GetPage(name: AppRoutes.Profile, page: () => ProfilePage(), binding: ProfileBindings()),
    //聊天详情
    GetPage(name: AppRoutes.Chat, page: () => ChatPage(), binding: ChatBinding()),

    GetPage(name: AppRoutes.Photoimgview, page: () => PhotoImgViewPage(), binding: PhotoImgViewBinding()),
    GetPage(name: AppRoutes.VoiceCall, page: () => VoiceCallViewPage(), binding: VoiceCallViewBinding()),
    GetPage(name: AppRoutes.VideoCall, page: () => VideoCallPage(), binding: VideoCallBinding()),
  ];






}
