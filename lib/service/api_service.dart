import 'package:dio/dio.dart';

class ApiService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();
    dio.options.headers['content-Type'] = 'application/json';
    return await dio
        .get(url,
            options: Options(responseType: ResponseType.json, method: "GE"))
        .then((value) {
      return value;
    });
  }
}
