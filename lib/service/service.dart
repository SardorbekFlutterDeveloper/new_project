import 'package:dio/dio.dart';

class MyApi {
  static String apiall= "dasturlash";
  static Future getAll() async {
    Response res = await Dio().get(
      "http://localhost:1337//api/$apiall?populate=*",
    );
    return res.data['data'];
  }

  static textStyleBold({required double size}) {}
}
