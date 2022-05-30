import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/sources/remote_data_source.dart';
import 'package:breaking_bad/data/web/error_handler.dart';
import 'package:breaking_bad/data/web/failure.dart';
import 'package:breaking_bad/data/mapper.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, List<Character>>> getAllCharacters();
}

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;

  RepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<Character>>> getAllCharacters() async {
    try {
      final response = await _remoteDataSource.getAllCharacters();
      return Right(response.toModel());
    } catch (error) {
      return Left(ErrorHandler.handle(error).failure);
    }
  }
}
