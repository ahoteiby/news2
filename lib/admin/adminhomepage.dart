import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:elriady/auth/forgetpassword.dart';

class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  var myusername;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundImage), repeat: ImageRepeat.repeat),
        ),
        child: ListView(
          //        padding: const EdgeInsets.symmetric(vertical: 80.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FutureBuilder(
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
                      return const Text(
                        "firebase connected 11111",
                        style: TextStyle(fontSize: 28, color: Colors.blue),
                      );
                    }
                    // Otherwise, show something whilst waiting for initialization to complete
                    return const Text(
                      "",
                      style: TextStyle(fontSize: 48),
                    );
                  },
                ),
                // Container(
                //     padding: const EdgeInsets.symmetric(vertical: 10.0),
                //     width: double.infinity,
                //     child: ElevatedButton(
                //       style: ButtonStyle(
                //         backgroundColor:
                //             MaterialStateProperty.all<Color>(kFrontColor),
                //       ),
                //       onPressed: () {
                //         if (myusername == "admin") {
                //           Navigator.of(context)
                //               .pushReplacementNamed("clienthomepage");
                //         }
                //         if (myusername == "employee") {
                //           Navigator.of(context)
                //               .pushReplacementNamed("employeehomepage");
                //         }
                //         if (myusername == "client") {
                //           Navigator.of(context)
                //               .pushReplacementNamed("employeehomepage");
                //         }
                //         Navigator.of(context)
                //             .pushReplacementNamed("clienthomepage");
                //         //   .pushReplacementNamed("employeehomepage");
                //       },
                //       child: Text(
                //         "Sign in",
                //         style: Theme.of(context).textTheme.headline6,
                //       ),
                //     )),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 50),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(kFrontColor),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("adminorderlist");
                            },
                            child: Text(
                              "Orders List",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(kFrontColor),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("admincustomerslist");
                              //   .pushReplacementNamed("employeehomepage");
                            },
                            child: Text(
                              "Customers List",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(kFrontColor),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("clienthomepage");
                              //   .pushReplacementNamed("employeehomepage");
                            },
                            child: Text(
                              "Employee Activities",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(kFrontColor),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("adminaddemployee");
                            },
                            child: Text(
                              "Add Employee",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          )),
                    ],
                  ),
                ),
                // Container(
                //     padding:
                //         const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                //     child: Center(child: Image.asset('images/elogo.png'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
