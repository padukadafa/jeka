import 'package:freezed_annotation/freezed_annotation.dart';
part 'community.freezed.dart';

@freezed
class Community with _$Community {
  const factory Community({
    required String name,
    required String desc,
    required String logo,
    String? xTwitter,
    String? instagram,
    String? location,
    @Default([]) List<String> tags,
    @Default([]) List<Map<String, dynamic>> members,
  }) = _Community;
}
