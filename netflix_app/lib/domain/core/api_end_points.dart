import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/hot_and_new/models/hot_and_new_resp.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/movie/week?api_key=$apiKey";
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const hotAndNewMovie = '$kBaseUrl/discover/movie?api_key=$apiKey';
  static const hotAndNewTv = '$kBaseUrl/discover/tv?api_key=$apiKey';
}
