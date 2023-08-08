import 'package:flutter/material.dart';
import 'package:chat_app/common/middlewares/middlewares.dart';

import 'package:get/get.dart';

import '../../pages/contact/index.dart';
import '../../pages/frames/welcome/index.dart';
import '../../pages/frames/sign_in/index.dart';
import '../../pages/message/index.dart';
import '../../pages/message/chat/index.dart';
import '../../pages/message/voicecall/index.dart';
import '../../pages/profile/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // about boot up the app
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    ),
    // sign in
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
/*
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
    */

    // Contact page
    GetPage(name: AppRoutes.Contact, page: () =>  ContactPage(), binding: ContactBindings()),

    //  Messenger page
    GetPage(name: AppRoutes.Message, page: () => MessagePage(), binding: MessageBinding(),middlewares: [
       RouteAuthMiddleware(priority: 1),
     ],),

    //proflie section
    GetPage(name: AppRoutes.Profile, 
    page: () =>  ProfilePage(), 
    binding: ProfileBindings()),
    
    // Chat page
    GetPage(name: AppRoutes.Chat, page: () => ChatPage(), binding: ChatBinding()),
    // voice call page
    GetPage(name: AppRoutes.VoiceCall, page: () => VoiceCallViewPage(), binding: VoiceCallViewBinding()),
/*
    GetPage(name: AppRoutes.Photoimgview, page: () => PhotoImgViewPage(), binding: PhotoImgViewBinding()),
*/
  /*  GetPage(name: AppRoutes.VideoCall, page: () => VideoCallPage(), binding: VideoCallBinding()),
  */
  ];
}
