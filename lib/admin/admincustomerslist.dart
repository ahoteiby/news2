import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class AdminCustomersList extends StatefulWidget {
  @override
  _AdminCustomersListState createState() => _AdminCustomersListState();
}

class _AdminCustomersListState extends State<AdminCustomersList> {
  List notes = [
    {
      "name": " Basem",
      "location": " ٥  نجيب الريحاني الدقي ",
      "phone": "0100765758"
    },
    {"name": " Aly", "location": " ١٥ شارع نجيب محفوظ ", "phone": "0100765758"},
    {
      "name": " Adel",
      "location": " ٣٠ شارع الدقي الدقي ",
      "phone": "0100765758"
    },
    {
      "name": " Ahmed",
      "location": " ٥ شارع التحرير الدقي ",
      "phone": "0100765758"
    },
    {
      "name": " Amr",
      "location": " ٢٥ شارع الاعناب المهندسين ",
      "phone": "0100765758"
    },
    {
      "name": " Nader",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "0100765758"
    },
    {
      "name": " Nadia",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "0100765758"
    },
    {"name": " Badr", "location": " ٥ شارع نجيب محفوظ ", "phone": "0100765758"},
    {"name": " ali", "location": " ٥ شارع نجيب محفوظ ", "phone": "0100765758"},
    {
      "name": " Ismael",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "0100765758"
    },
    {
      "name": " Mohamed",
      "location": " ٥ شارع نجيب محفوظ ",
      "phone": "0100765758"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("adminhomepage");
                },
                icon: const Icon(Icons.home),
                color: kdisColor,
              ),
              const Center(
                child: Text("Orders List",
                    style: TextStyle(fontSize: 18, color: kdisColor)),
              ),
            ],
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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kBackgroundImage),
                repeat: ImageRepeat.repeat),
          ),
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
      // onTap: () {
      //   Navigator.of(context).pushReplacementNamed("emporderdetails");
      // },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: kFrontColor,
        child: Row(
          children: [
            // Expanded(
            //     flex: 2,
            //     child: Image.asset(
            //       'images/facebook.jpg',
            //       fit: BoxFit.fill,
            //       height: 50,
            //     )),
            Expanded(
              flex: 6,
              child: ListTile(
                leading: Text("${notes['phone']}"),
                title: Text("${notes['name']}"),
                subtitle: Text(
                  "${notes['location']}",
                  style: TextStyle(fontSize: 20.0),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
