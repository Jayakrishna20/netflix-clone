import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/search/models/search_repo/search_repo.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchRepo>> searchMovies({
    required String movieQuery,
  });
}
