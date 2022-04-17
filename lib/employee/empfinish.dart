import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class EmpFinish extends StatefulWidget {
  @override
  _EmpFinishState createState() => _EmpFinishState();
}

class _EmpFinishState extends State<EmpFinish> {
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
        child: ListView(
          children: [
            const SizedBox(
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
                        const Text(
                          "Services Selected",
                          style: TextStyle(color: kGreenFont, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 300,
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
                        const SizedBox(
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
                                    'Finish',
                                    style: TextStyle(
                                      fontSize: 20,
                                      //    fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed("emporderdetails");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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
