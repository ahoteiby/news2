import 'package:flutter/material.dart';
import 'package:elriady/utilities/constant.dart';
import 'package:intl/intl.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elriady/translations/locale_keys.g.dart';
import 'package:get/get.dart';
import 'package:elriady/model/new_model.dart';
import 'package:elriady/controller/new_controller.dart';

class ClientHomePage extends GetWidget {
  NewController controller = Get.put(NewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text("order list",
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
        body: FutureBuilder(
            future: controller.getData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                Welcome data = snapshot.data;
                return ListView.builder(
                    itemCount: data.data.length,
                    itemBuilder: (context, int index) {
                      return Card(
                          elevation: 10,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(data.data[index].text),
                              Text(data.data[index].id),
                              //       Text(data.data[index].entities.urls.toString()),
                              //                Text(data.data[index].entities),
                            ],
                          ));
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            })

        // Container(
        //   child: Column(
        //     children: const [
        // ========================================
        //   arabic - english
        // =======================================
        // Container(
        //   height: 50,
        //   width: 300,
        //   //    width: double.infinity,
        //   child: ElevatedButton(
        //     onPressed: () async {
        //       Navigator.of(context).pushReplacementNamed("clientorder");
        //     },
        //     style: ElevatedButton.styleFrom(
        //         padding: EdgeInsets.zero,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(50))),
        //     child: Ink(
        //       decoration: BoxDecoration(
        //           gradient: const LinearGradient(colors: [
        //             kGreenColor,
        //             kBuleColor,
        //           ]),
        //           borderRadius: BorderRadius.circular(30)),
        //       child: Container(
        //         width: double.infinity,
        //         height: 50,
        //         alignment: Alignment.center,
        //         child: Text(
        //           LocaleKeys.new_order.tr(),
        //           style: const TextStyle(
        //             fontSize: 20,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 15),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     ElevatedButton(
        //       onPressed: () async {
        //         await context.setLocale(Locale('en'));
        //       },
        //       child: const Text(
        //         "English",
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () async {
        //         await context.setLocale(Locale('ar'));
        //       },
        //       child: const Text(
        //         "العربية",
        //       ),
        //     ),
        //   ],
        // ),
        //
        // =======================================
        // =======================================
        // =======================================
        // =======================================
        //        ],
        //      ),
        //    ),
        );
  }
}
