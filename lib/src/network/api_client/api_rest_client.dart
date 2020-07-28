
import 'package:dio/dio.dart' hide Headers;
import 'package:domainchecker/src/models/network_data_models/photo/response/photo_response.dart';
// import 'package:domainchecker/src/constants/url_constant.dart';
import 'package:retrofit/retrofit.dart';

part 'api_rest_client.g.dart';

@RestApi(
  baseUrl: "",
)

abstract class ApiRestClient {
  factory ApiRestClient(Dio dio) = _ApiRestClient;

 /*Get User Detail Api*/
  @GET("https://jsonplaceholder.typicode.com/photos")
  Future<List<PhotoResponse>> getPhotos();

  // /*Login Api*/
  // @POST(UrlConstant.BASE_URL + UrlConstant.LOGIN)
  // @FormUrlEncoded()
  // Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  // /*Get User Detail Api*/
  // @GET(UrlConstant.BASE_URL + UrlConstant.USER_DETAIL)
  // Future<UserDetailResponse> getUserDetail();
}
