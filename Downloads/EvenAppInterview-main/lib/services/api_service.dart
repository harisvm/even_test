import 'package:EvenAppInterview/constants/request_type.dart';
import 'package:EvenAppInterview/constants/string_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ApiService {
  static ApiService? _apiService;
  late Dio _client;

  factory ApiService() {
    return _apiService ?? ApiService._internal();
  }

  ApiService._internal() {
    final baseOptions = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 6),
        responseType: ResponseType.json);
    _client = Dio(baseOptions);
  }

  Future request(RequestType type, String url, {dynamic body}) async {
    late Response response;

    try {
      switch (type) {
        case RequestType.GET:
          response = await _client.get(url);
          break;
        case RequestType.POST:
          response = await _client.post(url, data: body);
          break;
      }
      debugPrint('RESPONsE--$response');
      return response.data;
    } catch (e) {
      debugPrint('ERROR--$e');

      return null;
    }
  }
}
