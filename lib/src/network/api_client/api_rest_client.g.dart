// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiRestClient implements ApiRestClient {
  _ApiRestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getPhotos() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request(
        'https://jsonplaceholder.typicode.com/photos',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => PhotoResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}
