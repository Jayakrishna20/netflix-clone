// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "original_title") required String? originalTitle,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) => _$DownloadsFromJson(json);
}
