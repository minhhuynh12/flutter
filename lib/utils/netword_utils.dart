import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkUtils {
  static final String host = 'https://camships.com:3000';
  static final String endPoint = '/api/Members/login?include=user';

  static dynamic authenticateUser(String email, String password) async {
    var uri = host + endPoint;
    try {
      final response =
          await http.post(uri, body: {'username': email, 'password': password});

      final responseJson = json.decode(response.body);
      return responseJson;

    } catch (exception) {
      if (exception.toString().contains('SocketException')) {
        return 'NetworkError';
      } else {
        return null;
      }
    }
  }
}
