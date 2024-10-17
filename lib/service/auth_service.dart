import 'package:dio/dio.dart';

class AuthService{
  Dio dio = Dio();

  Future<String?>? login(String username, String password) async {
    try{
      final response = await dio.post(
        'http://10.97.22.202:8282/api/v1/auth/login',
        data: {
          'username': username,
          'password' : password
        }
      );

      if(response.statusCode == 200){
        String token = response.data['token'];
        return token;
      }else{
        return null;
      }
    }catch(e){
      print("Error during login: $e");
      return null;
    }
  }
}