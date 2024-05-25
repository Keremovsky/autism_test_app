import 'dart:async';
import 'dart:developer';

import 'package:autism_test_app/core/constants/network_constants.dart';
import 'package:autism_test_app/core/enums/network_keys_enum.dart';
import 'package:autism_test_app/core/extensions/response_extension.dart';
import 'package:autism_test_app/core/models/failure_model/failure_model.dart';
import 'package:autism_test_app/core/services/connectivity/connectivity_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

part 'i_network_service.dart';

// TODO: Add messages for failure cases
class NetworkService implements INetworkService {
  late Dio _dio;
  late ConnectivityService _connectivityService;

  factory NetworkService() => _instance;
  static final NetworkService _instance = NetworkService._init();

  NetworkService._init() {
    _dio = Dio();
    _connectivityService = ConnectivityService();
  }

  @override
  void setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  void setHeaders(Map<NetworkHeaderKeys, String> headers) {
    headers.forEach((key, value) {
      _dio.options.headers[key.name] = value;
    });
  }

  @override
  void setHeader(NetworkHeaderKeys key, String value) {
    _dio.options.headers[key.name] = value;
  }

  @override
  void removeHeader(NetworkHeaderKeys key) {
    _dio.options.headers.remove(key.name);
  }

  @override
  void setToken(String token) {
    _dio.options.headers[NetworkConstants.authorization] = token;
  }

  @override
  void removeToken() {
    _dio.options.headers.remove(NetworkConstants.authorization);
  }

  @override
  Future<Either<FailureModel, Response<Map<String, dynamic>>>> get(String url) async {
    return await _doRequest(() => _dio.get(url));
  }

  @override
  Future<Either<FailureModel, Response<Map<String, dynamic>>>> post(
    String url, {
    required dynamic data,
  }) async {
    return await _doRequest(() => _dio.post(url, data: data));
  }

  Future<Either<FailureModel, Response<Map<String, dynamic>>>> _doRequest(
      AsyncValueGetter<Response<Map<String, dynamic>>> operation) async {
    try {
      if (await _connectivityService.isConnected) {
        final result = await operation();

        if (!result.isSuccess) {
          log(result.data.toString());
          return Left(FailureModel.responseError(result.data?["message"] as String? ?? ""));
        }

        return Right(result);
      } else {
        return const Left(FailureModel.noConnection(""));
      }
    } on TimeoutException {
      return const Left(FailureModel.connectionTimedOut(""));
    } on DioException catch (e) {
      log(e.message ?? "");
      return const Left(FailureModel.responseError(""));
    } catch (e) {
      log(e.toString());
      return const Left(FailureModel.unknownError(""));
    }
  }
}
