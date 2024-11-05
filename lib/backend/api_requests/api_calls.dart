import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Weather API Group Code

class WeatherAPIGroup {
  static String getBaseUrl() => 'https://weatherapi-com.p.rapidapi.com';
  static Map<String, String> headers = {
    'x-rapidapi-key': '19429bd1cemsh8647da8d2e19c97p1bd9acjsnccd2b1d68b76',
    'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
  };
  static RealtimeWeatherCall realtimeWeatherCall = RealtimeWeatherCall();
}

class RealtimeWeatherCall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    final baseUrl = WeatherAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Realtime Weather',
      apiUrl: '${baseUrl}/current.json?q=${place}&lang=pt_br',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-key': '19429bd1cemsh8647da8d2e19c97p1bd9acjsnccd2b1d68b76',
        'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {
        'lang': "pt",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? locationname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.name''',
      ));
  int? currenthumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.humidity''',
      ));
  int? currentconditioncode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.condition.code''',
      ));
  double? currentwindkph(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.wind_kph''',
      ));
  double? currenttempc(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.temp_c''',
      ));
  String? currentcondtiontext(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.current.condition.text''',
      ));
}

/// End Weather API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
