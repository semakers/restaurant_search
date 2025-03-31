import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

// Use this for creating a Dio instance that handles a bad certificate callback

Dio createDio() {
  final dio = Dio();
  (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    final client = HttpClient();
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };
  return dio;
}
