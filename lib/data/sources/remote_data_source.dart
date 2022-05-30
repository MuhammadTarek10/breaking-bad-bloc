import 'package:breaking_bad/data/responses/responses.dart';
import 'package:breaking_bad/data/web/app_api.dart';

abstract class RemoteDataSource {
  Future<AllCharactersResponse> getAllCharacters();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);
  @override
  Future<AllCharactersResponse> getAllCharacters() async {
    return await _appServiceClient.getAllCharacters();
  }
}
