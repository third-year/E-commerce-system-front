import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();
  static void initData() {
    dio = Dio(BaseOptions(
        responseType: ResponseType.json,
        baseUrl: 'http://192.168.1.105:3000/api/',
        receiveDataWhenStatusError: true,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        }));
  }

  static Future getDataFromApi(
      {required String url,
       Map<String, dynamic>? query,
      String? token}) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData(
      {required String url,
      required Map<String, dynamic> data,
      Map<String, dynamic>? query,
         String?token,
     }) async {
    // Response response=await dio.post(url,data: data);
    return await dio.post(url, data: data, queryParameters: query);
  }
}
