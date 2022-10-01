import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_screen.freezed.dart';
part 'home_screen.g.dart';

@freezed
class HomeImage with _$HomeImage {
  const factory HomeImage({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'webformatURL') required String? webFormatURL,
  }) = _HomeImage;

  factory HomeImage.fromJson(Map<String, dynamic> json) =>
      _$HomeImageFromJson(json);
}
