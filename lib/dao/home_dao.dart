import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xiecheng_app/model/home_model.dart';
const URL = "http://www.devio.org/io/flutter_app/json/home_page.json";
class HomeDao{
  static Future<HomeModel> feture() async{
    final response = await http.get(URL);
    if(response.statusCode==200){
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(result);
    }
  }
}