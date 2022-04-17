import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elriady/translations/locale_keys.g.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  var myusername, mypassword;

  SignIn() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print('save');
    } else {
      print('uuuuuuuuuuuuu');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return const Text(
            "Something went wrong",
            style: TextStyle(fontSize: 48),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Container(
              height: double.infinity,
              child: ListView(
                //        padding: const EdgeInsets.symmetric(vertical: 80.0),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 50.0),
                          child: Center(
                              child: Image.asset(
                            'assets/images/logo.png',
                            width: 220,
                          ))),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 50),
                        child: Form(
                          key: formstate,
                          child: Column(
                            children: [
                              TextFormField(
                                onSaved: (val) {
                                  myusername = val;
                                },
                                validator: (val) {
                                  if (val!.length < 4) {
                                    return LocaleKeys.min_error.tr();
                                  }
                                  if (val.length > 20) {
                                    return LocaleKeys.max_error.tr();
                                  }
                                },
                                cursorColor: kDarkBuleColor,
                                style: const TextStyle(
                                    fontSize: 18, color: kDarkBuleColor),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: kDarkBuleColor,
                                  ),
                                  hintText: LocaleKeys.user_name.tr(),
                                  hintStyle: const TextStyle(
                                      fontSize: 15.0, color: kDarkBuleColor),
                                  fillColor: kDarkBuleColor,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              TextFormField(
                                onSaved: (val) {
                                  mypassword = val;
                                },
                                validator: (val) {
                                  if (val!.length < 4) {
                                    return LocaleKeys.min_error.tr();
                                  }
                                  if (val.length > 20) {
                                    return LocaleKeys.max_error.tr();
                                  }
                                },
                                cursorColor: kDarkBuleColor,
                                style: const TextStyle(
                                    fontSize: 18, color: kDarkBuleColor),
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: kDarkBuleColor,
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: kDarkBuleColor,
                                  ),
                                  hintText: LocaleKeys.password.tr(),
                                  hintStyle: const TextStyle(
                                    fontSize: 15.0,
                                    color: kDarkBuleColor,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    var myusername22 = await SignIn();
                                    if (myusername == "admin") {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              "adminhomepage");
                                    }
                                    if (myusername == "employee") {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              "employeehomepage");
                                    }
                                    if (myusername == "client") {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              "clienthomepage");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(colors: [
                                          kBuleColor,
                                          kDarkBuleColor,
                                          //               kGreenColor,
                                          //         kBuleColor,
                                        ]),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        LocaleKeys.signin.tr(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          //    fontStyle: FontStyle.italic
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed("forgetpassword");
                                },
                                child: Text(
                                  LocaleKeys.forget_password.tr(),
                                  style: TextStyle(color: kDarkBuleColor),
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              // Container(
                              // padding: const EdgeInsets.symmetric(
                              //     vertical: 5, horizontal: 5),
                              // child: Column(
                              //   children: [
                              //================
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      ' ${LocaleKeys.facebook.tr()} ',
                                      style: TextStyle(color: kDarkBuleColor),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 2.0, color: kDarkBuleColor),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text(
                                      '   ${LocaleKeys.google.tr()}   ',
                                      style: const TextStyle(
                                          color: kDarkBuleColor),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 2.0, color: kDarkBuleColor),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '  ${LocaleKeys.if_you_havent_account.tr()}  ',
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed("signup");
                                    },
                                    child: Text(
                                      LocaleKeys.click_here.tr(),
                                      style: const TextStyle(
                                          color: kDarkBuleColor),
                                    ),
                                  )
                                ],
                              ),
                              //   ],
                              // ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const Text(
          "Loading",
          style: TextStyle(fontSize: 48),
        );
      },
    );
  }
}
