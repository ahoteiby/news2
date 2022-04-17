import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(kBackgroundImage), repeat: ImageRepeat.repeat),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Center(
                    child: Image.asset(
                  'images/logo.png',
                  width: 220,
                ))),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      cursorColor: kFrontColor,
                      style: const TextStyle(fontSize: 18, color: kdisColor),
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
                              borderSide:
                                  BorderSide(width: 20, color: kFrontColor)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kFrontColor))),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(kFrontColor),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed("login");
                          },
                          child: Text(
                            "Send",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
