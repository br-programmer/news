// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherData _$CurrentWeatherDataFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherData.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherData {
  @JsonKey(name: 'dt')
  int get currentTime => throw _privateConstructorUsedError;
  int get sunrise => throw _privateConstructorUsedError;
  int get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temperature => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double get windSpeed => throw _privateConstructorUsedError;
  List<WeatherData> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherDataCopyWith<CurrentWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDataCopyWith<$Res> {
  factory $CurrentWeatherDataCopyWith(
          CurrentWeatherData value, $Res Function(CurrentWeatherData) then) =
      _$CurrentWeatherDataCopyWithImpl<$Res, CurrentWeatherData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int currentTime,
      int sunrise,
      int sunset,
      @JsonKey(name: 'temp') double temperature,
      int pressure,
      int humidity,
      @JsonKey(name: 'wind_speed') double windSpeed,
      List<WeatherData> weather});
}

/// @nodoc
class _$CurrentWeatherDataCopyWithImpl<$Res, $Val extends CurrentWeatherData>
    implements $CurrentWeatherDataCopyWith<$Res> {
  _$CurrentWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? temperature = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherDataImplCopyWith<$Res>
    implements $CurrentWeatherDataCopyWith<$Res> {
  factory _$$CurrentWeatherDataImplCopyWith(_$CurrentWeatherDataImpl value,
          $Res Function(_$CurrentWeatherDataImpl) then) =
      __$$CurrentWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int currentTime,
      int sunrise,
      int sunset,
      @JsonKey(name: 'temp') double temperature,
      int pressure,
      int humidity,
      @JsonKey(name: 'wind_speed') double windSpeed,
      List<WeatherData> weather});
}

/// @nodoc
class __$$CurrentWeatherDataImplCopyWithImpl<$Res>
    extends _$CurrentWeatherDataCopyWithImpl<$Res, _$CurrentWeatherDataImpl>
    implements _$$CurrentWeatherDataImplCopyWith<$Res> {
  __$$CurrentWeatherDataImplCopyWithImpl(_$CurrentWeatherDataImpl _value,
      $Res Function(_$CurrentWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? temperature = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? weather = null,
  }) {
    return _then(_$CurrentWeatherDataImpl(
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherDataImpl implements _CurrentWeatherData {
  _$CurrentWeatherDataImpl(
      {@JsonKey(name: 'dt') required this.currentTime,
      required this.sunrise,
      required this.sunset,
      @JsonKey(name: 'temp') required this.temperature,
      required this.pressure,
      required this.humidity,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      required final List<WeatherData> weather})
      : _weather = weather;

  factory _$CurrentWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherDataImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int currentTime;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  @JsonKey(name: 'temp')
  final double temperature;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  final List<WeatherData> _weather;
  @override
  List<WeatherData> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'CurrentWeatherData(currentTime: $currentTime, sunrise: $sunrise, sunset: $sunset, temperature: $temperature, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDataImpl &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentTime,
      sunrise,
      sunset,
      temperature,
      pressure,
      humidity,
      windSpeed,
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDataImplCopyWith<_$CurrentWeatherDataImpl> get copyWith =>
      __$$CurrentWeatherDataImplCopyWithImpl<_$CurrentWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherData implements CurrentWeatherData {
  factory _CurrentWeatherData(
      {@JsonKey(name: 'dt') required final int currentTime,
      required final int sunrise,
      required final int sunset,
      @JsonKey(name: 'temp') required final double temperature,
      required final int pressure,
      required final int humidity,
      @JsonKey(name: 'wind_speed') required final double windSpeed,
      required final List<WeatherData> weather}) = _$CurrentWeatherDataImpl;

  factory _CurrentWeatherData.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherDataImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get currentTime;
  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  @JsonKey(name: 'temp')
  double get temperature;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(name: 'wind_speed')
  double get windSpeed;
  @override
  List<WeatherData> get weather;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherDataImplCopyWith<_$CurrentWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
