import 'package:breaking_bad/app/constants.dart';
import 'package:breaking_bad/data/responses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("/api/characters")
  Future<AllCharactersResponse> getAllCharacters();
}
