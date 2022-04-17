import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class EmpOrderDetails extends StatefulWidget {
  @override
  _EmpOrderDetailsState createState() => _EmpOrderDetailsState();
}

class _EmpOrderDetailsState extends State<EmpOrderDetails> {
  List notes = [
    {"item": " Bodywash ", "price": "Le 20"},
    {"item": " Interior Cleaning ", "price": "Le 30"},
    {"item": " Engine  Cleaning", "price": "Le 40"},
    {"item": " Steam wash ", "price": "Le 20"},
    {"item": " Body Polish ", "price": "Le 30"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Center(
          child: Center(
            child: Text("Order Details",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("login");
            },
            icon: const Icon(Icons.exit_to_app),
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage(kBackgroundImage), repeat: ImageRepeat.repeat),
        // ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booked by",
                          style: TextStyle(color: kGreenFont, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ahmed Mokhtar",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "01005441111",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(color: kGreenFont, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Nagib Mahfouz St., dokki",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date & Time",
                          style: TextStyle(color: kGreenFont, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "21 Nov, 2021",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "10:00 AM",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Services Selected",
                          style: TextStyle(color: kGreenFont, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
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
                        Row(
                          children: const [
                            Expanded(
                              //                 flex: 3,
                              child: Text(
                                "Total Amount",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Expanded(
                                //                      flex: 1,
                                child: Text(
                              "Le 140",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: 200,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      kGreenColor,
                                      kBuleColor,
                                    ]),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Start',
                                    style: TextStyle(
                                      fontSize: 20,
                                      //    fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed("empfinish");
                              },
                              // child: Text(
                              //   "Start",
                              //   style: Theme.of(context).textTheme.headline5,
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                  //         Expanded(flex: 4, child: Image.asset('images/map.jpg')),
                  // Expanded(
                  //   // height: MediaQuery.of(context).size.height * .5,
                  //   child: ListView.builder(
                  //       itemCount: notes.length,
                  //       itemBuilder: (context, i) {
                  //         return Container(
                  //             key: Key('$i'),
                  //             child: ListNotes(
                  //               notes: notes[i],
                  //             ));
                  //       }),
                  // ),
                  // Expanded(
                  //     child: Row(
                  //   textDirection: TextDirection.ltr,
                  //   children: const [
                  //     Expanded(
                  //       child: Text(
                  //         "الاجمالي",
                  //         textDirection: TextDirection.rtl,
                  //         style: TextStyle(
                  //             color: Colors.greenAccent, fontSize: 40),
                  //       ),
                  //     ),
                  //     SizedBox(width: 10),
                  //     Expanded(
                  //         child: Text(
                  //       "340",
                  //       textDirection: TextDirection.rtl,
                  //       style:
                  //           TextStyle(color: Colors.greenAccent, fontSize: 40),
                  //     )),
                  //     SizedBox(width: 30)
                  //   ],
                  // )),
                  // Expanded(
                  //     child: Container(
                  //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style: ButtonStyle(
                  //       backgroundColor:
                  //           MaterialStateProperty.all<Color>(kFrontColorLight),
                  //     ),
                  //     onPressed: () {
                  //       Navigator.of(context)
                  //           .pushReplacementNamed("employeehomepage");
                  //     },
                  //     child: Text(
                  //       "Finish",
                  //       style: Theme.of(context).textTheme.headline5,
                  //     ),
                  //   ),
                  // )),
                ],
              ),
            ),
          ],
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
    return Container(
      height: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            //        flex: 3,
            child: ListTile(
              title: Text(
                "${notes['item']}",
                //   textDirection: TextDirection.rtl,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                //
              ),
            ),
          ),
          Expanded(
            //        flex: 1,
            child: ListTile(
              title: Text(
                "${notes['price']}",
                //      textDirection: TextDirection.rtl,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                //
              ),
            ),
          ),
        ],
      ),
    );
  }
}
