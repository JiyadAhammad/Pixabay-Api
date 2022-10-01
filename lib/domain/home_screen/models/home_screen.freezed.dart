// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeImage _$HomeImageFromJson(Map<String, dynamic> json) {
  return _HomeImage.fromJson(json);
}

/// @nodoc
mixin _$HomeImage {
// ignore: invalid_annotation_target
  @JsonKey(name: 'webformatURL')
  String? get webFormatURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeImageCopyWith<HomeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeImageCopyWith<$Res> {
  factory $HomeImageCopyWith(HomeImage value, $Res Function(HomeImage) then) =
      _$HomeImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'webformatURL') String? webFormatURL});
}

/// @nodoc
class _$HomeImageCopyWithImpl<$Res> implements $HomeImageCopyWith<$Res> {
  _$HomeImageCopyWithImpl(this._value, this._then);

  final HomeImage _value;
  // ignore: unused_field
  final $Res Function(HomeImage) _then;

  @override
  $Res call({
    Object? webFormatURL = freezed,
  }) {
    return _then(_value.copyWith(
      webFormatURL: webFormatURL == freezed
          ? _value.webFormatURL
          : webFormatURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeImageCopyWith<$Res> implements $HomeImageCopyWith<$Res> {
  factory _$$_HomeImageCopyWith(
          _$_HomeImage value, $Res Function(_$_HomeImage) then) =
      __$$_HomeImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'webformatURL') String? webFormatURL});
}

/// @nodoc
class __$$_HomeImageCopyWithImpl<$Res> extends _$HomeImageCopyWithImpl<$Res>
    implements _$$_HomeImageCopyWith<$Res> {
  __$$_HomeImageCopyWithImpl(
      _$_HomeImage _value, $Res Function(_$_HomeImage) _then)
      : super(_value, (v) => _then(v as _$_HomeImage));

  @override
  _$_HomeImage get _value => super._value as _$_HomeImage;

  @override
  $Res call({
    Object? webFormatURL = freezed,
  }) {
    return _then(_$_HomeImage(
      webFormatURL: webFormatURL == freezed
          ? _value.webFormatURL
          : webFormatURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeImage implements _HomeImage {
  const _$_HomeImage(
      {@JsonKey(name: 'webformatURL') required this.webFormatURL});

  factory _$_HomeImage.fromJson(Map<String, dynamic> json) =>
      _$$_HomeImageFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'webformatURL')
  final String? webFormatURL;

  @override
  String toString() {
    return 'HomeImage(webFormatURL: $webFormatURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeImage &&
            const DeepCollectionEquality()
                .equals(other.webFormatURL, webFormatURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(webFormatURL));

  @JsonKey(ignore: true)
  @override
  _$$_HomeImageCopyWith<_$_HomeImage> get copyWith =>
      __$$_HomeImageCopyWithImpl<_$_HomeImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeImageToJson(
      this,
    );
  }
}

abstract class _HomeImage implements HomeImage {
  const factory _HomeImage(
      {@JsonKey(name: 'webformatURL')
          required final String? webFormatURL}) = _$_HomeImage;

  factory _HomeImage.fromJson(Map<String, dynamic> json) =
      _$_HomeImage.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'webformatURL')
  String? get webFormatURL;
  @override
  @JsonKey(ignore: true)
  _$$_HomeImageCopyWith<_$_HomeImage> get copyWith =>
      throw _privateConstructorUsedError;
}
