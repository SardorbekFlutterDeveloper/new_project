import 'package:dio/dio.dart';

class MyApi {
  static String service = "dasturlash";
  static Future getAll() async {
    Response res = await Dio().get(
      "http://localhost:1337//api/$service?populate=*",
    );
    return res.data['data'];
  }
}
