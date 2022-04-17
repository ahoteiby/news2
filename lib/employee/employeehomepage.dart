import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

import 'emporderdetails.dart';

class EmployeeHomePage extends StatefulWidget {
  @override
  _EmployeeHomePageState createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  List notes = [
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 9 AM",
      "location": " ٥ شارع نجيب الريحاني الدقي ",
      "phone": "01005554444",
      "photo": "aa1.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 9 AM",
      "location": " ١٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa2.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 9 AM",
      "location": " ٣٠ شارع الدقي الدقي ",
      "phone": "01005554444",
      "photo": "aa3.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 10 AM",
      "location": " ٥ شارع التحرير الدقي ",
      "phone": "01005554444",
      "photo": "aa4.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 12 AM",
      "location": " ٢٥ شارع الاعناب المهندسين ",
      "phone": "01005554444",
      "photo": "aa1.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 12 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa3.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 12 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa2.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 1 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa4.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 1 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa2.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 5 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa3.jpg"
    },
    {
      "name": "Ahmed Zakaria",
      "DateTime": " Time 6 AM",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "01005554444",
      "photo": "aa1.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: kBackgroundColor2,
        appBar: AppBar(
          backgroundColor: kBackgroundColor2,
          title: const Center(
            child: Text("Orders List",
                style: TextStyle(fontSize: 18, color: Colors.white)),
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
        body: Container(
          child: Container(
            child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, i) {
                  return Container(
                      key: Key('$i'),
                      child: ListNotes(
                        notes: notes[i],
                      ));
                }),
          ),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  ListNotes({this.notes});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed("emporderdetails");
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(45),
        // ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kCardTopColor,
                kCardBottomColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("images/aa1.jpg"),
                      // AssetImage(notes['photo']),
                    ),
                  ),
                ],
              ),
              Container(
                //           margin: const EdgeInsets.symmetric(vertical: 30.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "${notes['name']}",
                                style: const TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              child: const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Vehicle ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "${notes['location']}",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            ),

                            // ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Phone ",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "${notes['phone']}",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          ),

                          // ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              child: Text(
                                "Date & Time",
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ),
                            // Text("${notes['location']}", style:  TextStyle(fontSize: 14.0, color: Colors.white),
                            // ),
                            Container(
                              child: Text(
                                "${notes['DateTime']}",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
// children: [
// const Expanded(
// //                flex: 1,
// child: Text(
// "Vehicle",
// style:
// TextStyle(fontSize: 12.0, color: Colors.grey),
// ),
// ),
// Expanded(
// //                  flex: 2,
// child: Text(
// "${notes['location']}",
// style: const TextStyle(
// fontSize: 14.0, color: Colors.white),
// textDirection: TextDirection.rtl,
// ),
// ),
// ],
// ),
