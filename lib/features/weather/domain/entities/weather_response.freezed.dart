// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  CurrentWeatherData get current => throw _privateConstructorUsedError;
  List<WeatherDaily> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      CurrentWeatherData current,
      List<WeatherDaily> daily});

  $CurrentWeatherDataCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? current = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherData,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDaily>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherDataCopyWith<$Res> get current {
    return $CurrentWeatherDataCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lon,
      String timezone,
      CurrentWeatherData current,
      List<WeatherDaily> daily});

  @override
  $CurrentWeatherDataCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? current = null,
    Object? daily = null,
  }) {
    return _then(_$WeatherResponseImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherData,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDaily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  _$WeatherResponseImpl(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.current,
      required final List<WeatherDaily> daily})
      : _daily = daily;

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final CurrentWeatherData current;
  final List<WeatherDaily> _daily;
  @override
  List<WeatherDaily> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'WeatherResponse(lat: $lat, lon: $lon, timezone: $timezone, current: $current, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, timezone, current,
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  factory _WeatherResponse(
      {required final double lat,
      required final double lon,
      required final String timezone,
      required final CurrentWeatherData current,
      required final List<WeatherDaily> daily}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get timezone;
  @override
  CurrentWeatherData get current;
  @override
  List<WeatherDaily> get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
