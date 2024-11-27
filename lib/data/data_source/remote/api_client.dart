import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/data_source/remote/api_constant.dart';
import 'package:news_app/data/data_source/remote/api_endpoint_url.dart';

import 'api_exception.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;
  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }
  //Getresponse
  Future<Response> getRequest({required String path}) async {
    try {
      debugPrint(
          "#########################API REQUEST ############################");
      debugPrint("REQUEST URL : ${baseOptions.baseUrl + path}");
      var response = await dio.get(ApiEndpointUrls.tags);
      debugPrint(
          "#########################API REsponse ############################");
      debugPrint("Status code : ${response.statusCode}");
      log("DATA : ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  //postresponse
  Future<Response> Postrequest(
      {required String path, required dynamic body}) async {
    // Map body ={
    //   'title' : 'earpod1',
    //   'slug' : 'earpod1',
    // };
    final options = Options(headers: {
      "Authorization": "Bearer 2157|Fab1koEeJxTMHECilK3M4FlYrxOBnKsYtLalqyob"
    });
    try {
      debugPrint(
          "#########################API REQUEST ############################");
      debugPrint("REQUEST URL : ${baseOptions.baseUrl + path}");
      var response = await dio.post(path, data: body, options: options);
      debugPrint(
          "#########################API REsponse ############################");
      debugPrint("Status code : ${response.statusCode}");
      log("DATA : ${response.data}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
