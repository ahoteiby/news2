import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class ClientOrder extends StatefulWidget {
  @override
  _ClientOrderState createState() => _ClientOrderState();
}

class _ClientOrderState extends State<ClientOrder> {
  List notes = [
    {"name": " Time 9 AM", "location": " ٥ شارع نجيب الريحاني الدقي "},
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text("Orders",
                style: TextStyle(fontSize: 18, color: kdisColor)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("login");
              },
              icon: const Icon(Icons.exit_to_app),
              color: kdisColor,
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //     child: Icon(Icons.add),
        //     onPressed: () {
        //       Navigator.of(context).pushNamed("addnotes");
        //     }),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundImage),
                repeat: ImageRepeat.repeat),
          ),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "غسيل ماتور",
                          style: TextStyle(fontSize: 18, color: kdisColor),
                          //      style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("  "),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //====================
//   Checkbox(value: wash1, onChanged: onChanged)
                    // Checkbox(
                    //   checkColor: Colors.white,
                    //   //      fillColor: MaterialStateProperty.resolveWith(getColor),
                    //   //    value: isChecked,
                    //   onChanged: (bool? value) {
                    //     setState(() {
                    //       var wash1 = value!;
                    //     });
                    //   },
                    //   value: null,
                    // ),
                    //====================
                    Expanded(
                        flex: 2,
                        child: Image.asset(
                          'images/redcar.png',
                          fit: BoxFit.fill,
                          //         height: 50,
                        )),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: const [
                          Text(
                            " غسيل خارجي ",
                            style: TextStyle(fontSize: 18, color: kdisColor),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            " غسيل داخلي ",
                            style: TextStyle(fontSize: 18, color: kdisColor),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            " غسيل بخار ",
                            style: TextStyle(fontSize: 18, color: kdisColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "غسيل شنطه",
                          style: TextStyle(fontSize: 18, color: kdisColor),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text("  "),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "340",
                      style: TextStyle(fontSize: 28, color: kdisColor),
                    ),
                    Text(
                      "الاجمالي",
                      style: TextStyle(fontSize: 28, color: kdisColor),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //              padding: const EdgeInsets.symmetric(vertical: 10.0),
                      width: 150,
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
                          "Back",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      width: 150,
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
                          "Confirm",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    )
                  ],
                )
                //        const Expanded(flex: 1, child: Text(" "))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
