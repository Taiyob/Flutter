import 'dart:convert';
import 'dart:math';
import 'package:flutter_basics/api/response_object.dart';
import 'package:http/http.dart';

class NetworkCaller {
  static Future<ResponseObject> postRequest(
      String url, Map<String, dynamic> body,
      {bool formSignIn = false}) async {
    try {
      final Response response =
          await post(Uri.parse(url), body: jsonEncode(body), headers: {
            'Content-type' : 'application/json',
          });
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        return ResponseObject(isSuccess: true, statusCode: 200, responseBody: decodedResponse);
      }  else {
        return ResponseObject(
            isSuccess: false,
            statusCode: -1,
            responseBody: '',
            errorMessage: e.toString());
      }
    } catch (e) {
      return ResponseObject(
          isSuccess: false,
          statusCode: -1,
          responseBody: '',
          errorMessage: e.toString());
    }
  }
}
