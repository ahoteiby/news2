import 'package:easy_localization/easy_localization.dart';
import 'screens/animatedsplashscreen.dart';
import 'package:flutter/material.dart';
import 'admin/adminaddemployee.dart';
import 'admin/admincustomerslist.dart';
import 'admin/adminhomepage.dart';
import 'admin/adminorderslist.dart';
import 'auth/signup.dart';
import 'auth/login.dart';
import 'auth/forgetpassword.dart';
import 'client/clienthomepage.dart';
import 'client/clientorder.dart';
import 'employee/empfinish.dart';
import 'employee/emporderdetails.dart';
import 'utilities/constant.dart';
import 'employee/employeehomepage.dart';
import 'translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      home: AnimatedSplashScreen(),
      theme: ThemeData(
          primaryColor: kFrontColor,
          //        buttonColor: kFrontColor,
          textTheme: const TextTheme(headline6: TextStyle(fontSize: 20))),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "employeehomepage": (context) => EmployeeHomePage(),
        "forgetpassword": (context) => ForgetPassword(),
        "emporderdetails": (context) => EmpOrderDetails(),
        "empfinish": (context) => EmpFinish(),
        "clienthomepage": (context) => ClientHomePage(),
        "clientorder": (context) => ClientOrder(),
        "adminhomepage": (context) => AdminHomePage(),
        "adminorderlist": (context) => AdminOrderList(),
        "adminaddemployee": (context) => AdminAddEmployee(),
        "admincustomerslist": (context) => AdminCustomersList()
      },
    );
  }
}
