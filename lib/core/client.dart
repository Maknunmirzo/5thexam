import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http://192.168.9.174:8888/api/v1"));

  Future<List<dynamic>> fetchRealEstates() async {
    var response = await dio.get("/real-estates");
    List<dynamic> data = response.data;
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception("something went wrong");
    }
  }


}




