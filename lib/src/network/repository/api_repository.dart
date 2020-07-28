import 'package:dio/dio.dart';
import 'package:domainchecker/src/models/network_data_models/photo/response/photo_response.dart';
// import 'package:dio/dio.dart' as dio;
import 'package:domainchecker/src/network/api_client/api_rest_client.dart';

class ApiRepository {
  ApiRestClient apiRestClient;

  ApiRepository() {
    Dio _dio = Dio();
    _dio.options.headers["Content-Type"] = "application/json";
    apiRestClient = ApiRestClient(_dio);
  }

  Future<List<PhotoResponse>> getPhotos() async {
    List<PhotoResponse> photoResponse = await apiRestClient.getPhotos();
    return photoResponse;
  }

  // Future<List<ShiftResponse>> getShift() async {
  //   List<ShiftResponse> shiftResponse = await apiRestClient.getShift();
  //   return shiftResponse;
  // }

  // Future<List<ShiftWUResponse>> getAllShift() async {
  //   List<ShiftWUResponse> shiftResponse = await apiRestClient.getAllShift();
  //   return shiftResponse;
  // }

  // Future<ReportResponse> createReport(
  //     String bonNumber, double price, File image) async {
  //   Dio _dio = Dio();
  //   _dio.options.headers["Content-Type"] = "application/json";
  //   _getToken().then((result) {
  //     _dio.options.headers["Authorization"] = result;
  //   });

  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   FormData formData = FormData.fromMap({
  //     "bon_number": bonNumber,
  //     "price": price,
  //     "image": await MultipartFile.fromFile(image.path, filename: image.path),
  //   });
  //   final Response<Map<String, dynamic>> _result = await _dio.request(
  //       'http://192.168.1.50:8000/api/report/',
  //       queryParameters: queryParameters,
  //       options: RequestOptions(
  //           method: 'POST',
  //           extra: _extra,
  //           contentType: 'application/x-www-form-urlencoded',
  //           baseUrl: ""),
  //       data: formData);
  //   final value = ReportResponse.fromJson(_result.data);
  //   return value;
  // }

}
