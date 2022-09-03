import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

HttpClientAdapter getAdapter() => DefaultHttpClientAdapter()
  ..onHttpClientCreate = (client) => client..badCertificateCallback = (cert, host, port) => true;
