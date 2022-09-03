import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'connections_status.dart';

class ConnectionStatusImpl implements ConnectionStatus {
  @override
  Future<bool> isConnected() async {
    final connections = [ConnectivityResult.mobile, ConnectivityResult.wifi];

    final connectivityResult = await Connectivity().checkConnectivity();

    if (connections.contains(connectivityResult)) {
      return checkInternetConnection();
    } else {
      return false;
    }
  }

  @override
  Future<bool> checkInternetConnection() async {
    final List<String> urls = [
      'www.amazon.com.br',
      'www.apple.com',
    ];

    final List<InternetAddress> responses = [];

    for (final address in urls) {
      try {
        final response = await InternetAddress.lookup(address)
            .timeout(const Duration(seconds: 15));

        if (response.isNotEmpty) {
          responses.addAll(response);
          break;
        }
      } on Exception catch (e) {
        debugPrint('No internet connection: $e');
      }
    }

    return responses.isNotEmpty;
  }
}
