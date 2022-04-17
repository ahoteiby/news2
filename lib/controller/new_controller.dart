import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:elriady/model/new_model.dart';

class NewController extends GetxController {
  getData() async {
    // var headers = {
    //   'Authorization':
    //       'Bearer AAAAAAAAAAAAAAAAAAAAAJ1iZgEAAAAACvta9ZpM8dCrnXhqfq9GVfk%2FsjU%3D02MakgCQZchjXiX0kPj2OnHyhJJnLxIuklZYcPsinP0DyHcFo1
    // };
    var headers = {
      'Authorization':
          'Bearer AAAAAAAAAAAAAAAAAAAAAJ1iZgEAAAAACvta9ZpM8dCrnXhqfq9GVfk%2FsjU%3D02MakgCQZchjXiX0kPj2OnHyhJJnLxIuklZYcPsinP0DyHcFo1',
      'Cookie': 'guest_id=v1%3A164580382326801642'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://api.twitter.com/2/users/737231175979302912/tweets?max_results=20&tweet.fields=entities'));
    //request.headers.addAll(headers);
    http.Response response = await http.get(request.url, headers: headers);
    print('hhhhhhhhhhh');
//    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      try {
        // print('adel');
        // print(await response.stream.bytesToString());
        print(await response.body);
        return Welcome.fromJson(jsonDecode(response.body));
      } catch (e) {
        Get.snackbar("error", e.toString());
        print(response.reasonPhrase);
      }
    }
  }
}
