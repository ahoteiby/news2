import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class AdminAddEmployee extends StatefulWidget {
  const AdminAddEmployee({Key? key}) : super(key: key);

  @override
  _AdminAddEmployeeState createState() => _AdminAddEmployeeState();
}

class _AdminAddEmployeeState extends State<AdminAddEmployee> {
  var myusername, myemail, mypassword, password2;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundImage), repeat: ImageRepeat.repeat),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // =========================================
                // Logo
                // =========================================
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 50.0),
                    child: Center(
                        child: Image.asset(
                      'images/logo.png',
                      width: 220,
                    ))),
                // =========================================
                // Page Fields
                // =========================================
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 50),
                  child: Form(
                    key: formstate,
                    child: Column(
                      children: [
                        // =========================================
                        // User Name Field
                        // =========================================
                        TextFormField(
                          onSaved: (val) {
                            myusername = val;
                          },
                          validator: (val) {
                            if (val!.length > 20) {
                              return " User Name max 20 character   ";
                            }
                            if (val.length < 4) {
                              return " User Name min 5 character   ";
                            }
                            return null;
                          },
                          cursorColor: kFrontColor,
                          style:
                              const TextStyle(fontSize: 18, color: kdisColor),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: kFrontColor,
                              ),
                              hintText: "User Name",
                              hintStyle:
                                  TextStyle(fontSize: 15.0, color: kdisColor),
                              fillColor: kFrontColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kFrontColor))),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // =========================================
                        // email Field
                        // =========================================
                        TextFormField(
                          onSaved: (val) {
                            myemail = val.toString();
                          },
                          validator: (val) {
                            if (val!.length > 100) {
                              return " email max 100 character   ";
                            }
                            if (val.length < 4) {
                              return " email min 5 character   ";
                            }
                            return null;
                          },
                          cursorColor: kFrontColor,
                          style:
                              const TextStyle(fontSize: 18, color: kdisColor),
                          decoration: const InputDecoration(
                              fillColor: kFrontColor,
                              prefixIcon: Icon(
                                Icons.email,
                                color: kFrontColor,
                              ),
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(fontSize: 15.0, color: kdisColor),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: kFrontColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kFrontColor))),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // =========================================
                        // password Field
                        // =========================================
                        TextFormField(
                          onSaved: (val) {
                            mypassword = val.toString();
                          },
                          validator: (val) {
                            if (val!.length > 20) {
                              return " password max 20 character   ";
                            }
                            if (val.length < 4) {
                              return " password min 5 character   ";
                            }
                            return null;
                          },
                          cursorColor: kFrontColor,
                          style:
                              const TextStyle(fontSize: 18, color: kdisColor),
                          obscureText: true,
                          decoration: const InputDecoration(
                              fillColor: kFrontColor,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: kFrontColor,
                              ),
                              hintText: "Password",
                              hintStyle:
                                  TextStyle(fontSize: 15.0, color: kdisColor),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 20, color: kFrontColor)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kFrontColor))),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // =========================================
                        // password confirmation Field
                        // =========================================
                        //                      TextFormField(
                        //                        onSaved: (val) {
                        //                          password2 = val.toString();
                        //                        },
                        //                        validator: (val) {
                        //                          if (val != mypassword) {
                        //                            return " password not match   ";
                        //                          }
                        // //                         return null;
                        //                        },
                        //                        cursorColor: kFrontColor,
                        //                        style:
                        //                            const TextStyle(fontSize: 18, color: kdisColor),
                        //                        obscureText: true,
                        //                        decoration: const InputDecoration(
                        //                            fillColor: kFrontColor,
                        //                            prefixIcon: Icon(
                        //                              Icons.lock,
                        //                              color: kFrontColor,
                        //                            ),
                        //                            hintText: " Confirm Password",
                        //                            hintStyle:
                        //                                TextStyle(fontSize: 15.0, color: kdisColor),
                        //                            border: OutlineInputBorder(
                        //                                borderSide: BorderSide(
                        //                                    width: 20, color: kFrontColor)),
                        //                            enabledBorder: OutlineInputBorder(
                        //                                borderSide: BorderSide(color: kFrontColor))),
                        //                      ),
                        // =========================================
                        // Sign Up Button
                        // =========================================
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kFrontColor),
                              ),
                              onPressed: () async {},
                              child: Text(
                                "Add Employee",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            )),
                        // =========================================
                        // Back to Login Page Button
                        // =========================================
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kFrontColor),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed("adminhomepage");
                              },
                              child: Text(
                                "Back",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            )),
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
}
