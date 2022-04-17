import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';

class AdminOrderList extends StatefulWidget {
  @override
  _AdminOrderListState createState() => _AdminOrderListState();
}

class _AdminOrderListState extends State<AdminOrderList> {
  List notes = [
    {"name": " Time 9 AM", "location": " ٥ شارع نجيب الريحاني الدقي "},
    {"name": " Time 9 AM", "location": " ١٥ شارع نجيب محفوظ "},
    {"name": " Time 9 AM", "location": " ٣٠ شارع الدقي الدقي "},
    {"name": " Time 10 AM", "location": " ٥ شارع التحرير الدقي "},
    {"name": " Time 12 AM", "location": " ٢٥ شارع الاعناب المهندسين "},
    {"name": " Time 12 AM", "location": " ٥ شارع نجيب محفوظ "},
    {"name": " Time 12 AM", "location": " ٥ شارع نجيب محفوظ "},
    {"name": " Time 1 AM", "location": " ٥ شارع نجيب محفوظ "},
    {"name": " Time 1 AM", "location": " ٥ شارع نجيب محفوظ "},
    {"name": " Time 5 AM", "location": " ٥ شارع نجيب محفوظ "},
    {"name": " Time 6 AM", "location": " ٥ شارع نجيب محفوظ "}
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
      onTap: () {
        Navigator.of(context).pushReplacementNamed("emporderdetails");
      },
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
                title: Text("${notes['name']}"),
                subtitle: Text(
                  "${notes['location']}",
                  style: TextStyle(fontSize: 20.0),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

//          Expanded(
//              flex: 1,
//              child: IconButton(icon: Icon(Icons.delete), onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
