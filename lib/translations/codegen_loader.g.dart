// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    "user_name": "User Name",
    "new_order": "New Order",
    "order_list": "Order List",
    "signin": "Sign In",
    "password": "Password",
    "forget_password": "Forget Password",
    "facebook": "Facebook",
    "google": "Google",
    "if_you_havent_account": "If you haven't account",
    "click_here": "Click here",
    "min_error": "Min 5 character",
    "max_error": "Max 20 character"
  };
  static const Map<String, dynamic> ar = {
    "user_name": "اسم المستخدم",
    "new_order": "طلبية جديدة",
    "order_list": "قائمة طلباتي",
    "signin": "دخول",
    "password": "كلمة المرور",
    "forget_password": "استرجاع كلمة المرور",
    "facebook": "فيسبوك",
    "google": "جوجل",
    "if_you_havent_account": "اذا لم يكن لديك حساب",
    "click_here": "اضغط هنا",
    "min_error": "لا يقل عن خمسة حروف",
    "max_error": "لا يزيد عن ٢٠ حرف"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en": en,
    "ar": ar
  };
}
