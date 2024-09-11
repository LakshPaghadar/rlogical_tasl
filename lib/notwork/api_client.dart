import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dummy_api_call_retrofit/locator/locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../core/exception/dio_exception_util.dart';

class ApiClient {
  late Dio _client;
  static Future<void> provideDio() async {
    locator.registerSingleton(ApiClient());
  }

  ApiClient() {
    _client = Dio()
      ..options = BaseOptions(
        baseUrl: "http://developer.kuwaiterp.com/ERPMobileAPI/api",
        responseType: ResponseType.plain,
        headers: {
          'content-type': 'text/plain',
          'contentType': 'text/plain',
          'responseType': 'text/plain',
        },
      );
    _client.interceptors.add(PrettyDioLogger());
  }

  Future<dynamic> get(String url, {body}) async {
    var responseJson;
    try {
      final response = await _client.get(url, queryParameters: body);
      responseJson = returnResponse(response);
    } on DioException catch (e) {
      DioExceptionUtil.handleError(e);
    }
    return responseJson;
  }

  Future post(String url, {body}) async {
    var responseJson;
    try {
      final response = await _client.post<String>(
        url,
        data: body,
      );
      responseJson = returnResponse(response);
    } on DioException catch (e, st) {
      debugPrintStack(stackTrace: st);
      DioExceptionUtil.handleError(e);
    }
    return responseJson;
  }

  dynamic returnResponse(Response response) {
    final mapData = jsonDecode((response.data));
    return mapData;
  }
}

final client = locator<ApiClient>();
