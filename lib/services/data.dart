import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio ;
  static init()
  {
    dio = Dio(BaseOptions(baseUrl: "http://192.168.43.3:8000/api/" , headers: {"Accept":"application/json"}));
  }
 static Future<Response> post({required String url , Map<String,dynamic>? body})
 {
return dio!.post(url, data: body);
 }

}