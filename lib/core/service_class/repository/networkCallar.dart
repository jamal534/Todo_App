import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../model/network_response.dart';

class NetworkCaller {
  final int timeoutDuration = 80;

  //>>>>>>>>>>>>>>>>> ResgisterUser<<<<<<<<<<<<<<<<//

  Future<ResponseData> registerUserMultipart(
      String url, {
        required Map<String, String> fields,
      }) async {
    try {
      final request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll(fields);
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  //>>>>>>>>>>>>>>>>>>>>>> Post Request <<<<<<<<<<<<<<<<<<<<<<<//

  Future<ResponseData> postRequest(
      String url, {
        Map<String, dynamic>? body,
      }) async {

    try {
      final Response response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-type': 'application/json',
        },
        body: jsonEncode(body),
      ).timeout(Duration(seconds: timeoutDuration));

      return _handleResponse(response);
    } on TimeoutException {
      return _handleError(TimeoutException('Request timed out'));
    } catch (e) {
      return _handleError(e);
    }
  }

  //>>>>>>>>>>>>>>>>>>>>>> Handle response <<<<<<<<<<<<<<<<<<<<<<<//

  ResponseData _handleResponse(Response response) {
    log('Response Status: ${response.statusCode}');
    log('Response Body: ${response.body}');

    try {
      final decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ResponseData(
          isSuccess: true,
          statusCode: response.statusCode,
          responseData: decodedResponse,
          errorMessage: '',
        );
      } else {
        String errorMessage = decodedResponse['message'] ?? 'An unknown error occurred';
        if (response.statusCode == 400 && decodedResponse.containsKey('errorSources')) {
          errorMessage = _extractErrorMessages(decodedResponse['errorSources']);
        }
        return ResponseData(
          isSuccess: false,
          statusCode: response.statusCode,
          responseData: decodedResponse,
          errorMessage: errorMessage,
        );
      }
    } catch (e) {
      return ResponseData(
        isSuccess: false,
        statusCode: 500,
        responseData: response.body,
        errorMessage: 'Failed to parse server response.',
      );
    }
  }
  String _extractErrorMessages(dynamic errorSources) {
    if (errorSources is List) {
      return errorSources
          .map((error) => error['message'] ?? 'Unknown error')
          .join(', ');
    }
    return 'Validation error';
  }
  ResponseData _handleError(dynamic error) {
    log('Request Error: $error', name: 'NetworkCaller Error');
    if (error is http.ClientException) {
      return ResponseData(
        isSuccess: false,
        statusCode: 500,
        responseData: null,
        errorMessage: 'Network error occurred. Please check your connection.',
      );
    } else if (error is TimeoutException) {
      return ResponseData(
        isSuccess: false,
        statusCode: 408,
        responseData: null,
        errorMessage: 'Request timeout. Please try again later.',
      );
    } else {
      return ResponseData(
        isSuccess: false,
        statusCode: 500,
        responseData: null,
        errorMessage: 'Unexpected error occurred.',
      );
    }
  }
}