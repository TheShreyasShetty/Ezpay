import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  String _baseUrl = 'http://flutter.bslmeiyu.com/api';

  //mvc - Model View Control pattern
  Future<List<dynamic>> getUsers() async {
    var apiUrl = '/billinfo';

    http.Response response = await http.get(
      Uri.parse(_baseUrl+apiUrl)
    );

    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);
    return Future.delayed(Duration(seconds: 5),
        ()=> list.map((e) => e).toList()
        // get functions is used instead of return
    );
  }
}