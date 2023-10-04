// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDaily _$WeatherDailyFromJson(Map<String, dynamic> json) {
  return _WeatherDaily.fromJson(json);
}

/// @nodoc
mixin _$WeatherDaily {
  @JsonKey(name: 'dt')
  int get currentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  Temperature get temperature => throw _privateConstructorUsedError;
  List<WeatherData> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyCopyWith<WeatherDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyCopyWith<$Res> {
  factory $WeatherDailyCopyWith(
          WeatherDaily value, $Res Function(WeatherDaily) then) =
      _$WeatherDailyCopyWithImpl<$Res, WeatherDaily>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int currentTime,
      @JsonKey(name: 'temp') Temperature temperature,
      List<WeatherData> weather});

  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class _$WeatherDailyCopyWithImpl<$Res, $Val extends WeatherDaily>
    implements $WeatherDailyCopyWith<$Res> {
  _$WeatherDailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? temperature = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res> get temperature {
    return $TemperatureCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDailyImplCopyWith<$Res>
    implements $WeatherDailyCopyWith<$Res> {
  factory _$$WeatherDailyImplCopyWith(
          _$WeatherDailyImpl value, $Res Function(_$WeatherDailyImpl) then) =
      __$$WeatherDailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int currentTime,
      @JsonKey(name: 'temp') Temperature temperature,
      List<WeatherData> weather});

  @override
  $TemperatureCopyWith<$Res> get temperature;
}

/// @nodoc
class __$$WeatherDailyImplCopyWithImpl<$Res>
    extends _$WeatherDailyCopyWithImpl<$Res, _$WeatherDailyImpl>
    implements _$$WeatherDailyImplCopyWith<$Res> {
  __$$WeatherDailyImplCopyWithImpl(
      _$WeatherDailyImpl _value, $Res Function(_$WeatherDailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? temperature = null,
    Object? weather = null,
  }) {
    return _then(_$WeatherDailyImpl(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDailyImpl implements _WeatherDaily {
  _$WeatherDailyImpl(
      {@JsonKey(name: 'dt') required this.currentTime,
      @JsonKey(name: 'temp') required this.temperature,
      required final List<WeatherData> weather})
      : _weather = weather;

  factory _$WeatherDailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDailyImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int currentTime;
  @override
  @JsonKey(name: 'temp')
  final Temperature temperature;
  final List<WeatherData> _weather;
  @override
  List<WeatherData> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'WeatherDaily(currentTime: $currentTime, temperature: $temperature, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDailyImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentTime, temperature,
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDailyImplCopyWith<_$WeatherDailyImpl> get copyWith =>
      __$$WeatherDailyImplCopyWithImpl<_$WeatherDailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDailyImplToJson(
      this,
    );
  }
}

abstract class _WeatherDaily implements WeatherDaily {
  factory _WeatherDaily(
      {@JsonKey(name: 'dt') required final int currentTime,
      @JsonKey(name: 'temp') required final Temperature temperature,
      required final List<WeatherData> weather}) = _$WeatherDailyImpl;

  factory _WeatherDaily.fromJson(Map<String, dynamic> json) =
      _$WeatherDailyImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get currentTime;
  @override
  @JsonKey(name: 'temp')
  Temperature get temperature;
  @override
  List<WeatherData> get weather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDailyImplCopyWith<_$WeatherDailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
