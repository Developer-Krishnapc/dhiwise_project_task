// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HouseState _$HouseStateFromJson(Map<String, dynamic> json) {
  return _HouseState.fromJson(json);
}

/// @nodoc
mixin _$HouseState {
  int get totalSaving => throw _privateConstructorUsedError;
  int get targetHousePrice => throw _privateConstructorUsedError;
  double get monthlyProjection => throw _privateConstructorUsedError;
  List<MonthlyContributionState> get monthlyContribution =>
      throw _privateConstructorUsedError;
  String get targetDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseStateCopyWith<HouseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseStateCopyWith<$Res> {
  factory $HouseStateCopyWith(
          HouseState value, $Res Function(HouseState) then) =
      _$HouseStateCopyWithImpl<$Res, HouseState>;
  @useResult
  $Res call(
      {int totalSaving,
      int targetHousePrice,
      double monthlyProjection,
      List<MonthlyContributionState> monthlyContribution,
      String targetDate});
}

/// @nodoc
class _$HouseStateCopyWithImpl<$Res, $Val extends HouseState>
    implements $HouseStateCopyWith<$Res> {
  _$HouseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSaving = null,
    Object? targetHousePrice = null,
    Object? monthlyProjection = null,
    Object? monthlyContribution = null,
    Object? targetDate = null,
  }) {
    return _then(_value.copyWith(
      totalSaving: null == totalSaving
          ? _value.totalSaving
          : totalSaving // ignore: cast_nullable_to_non_nullable
              as int,
      targetHousePrice: null == targetHousePrice
          ? _value.targetHousePrice
          : targetHousePrice // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyProjection: null == monthlyProjection
          ? _value.monthlyProjection
          : monthlyProjection // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as List<MonthlyContributionState>,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseStateImplCopyWith<$Res>
    implements $HouseStateCopyWith<$Res> {
  factory _$$HouseStateImplCopyWith(
          _$HouseStateImpl value, $Res Function(_$HouseStateImpl) then) =
      __$$HouseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalSaving,
      int targetHousePrice,
      double monthlyProjection,
      List<MonthlyContributionState> monthlyContribution,
      String targetDate});
}

/// @nodoc
class __$$HouseStateImplCopyWithImpl<$Res>
    extends _$HouseStateCopyWithImpl<$Res, _$HouseStateImpl>
    implements _$$HouseStateImplCopyWith<$Res> {
  __$$HouseStateImplCopyWithImpl(
      _$HouseStateImpl _value, $Res Function(_$HouseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSaving = null,
    Object? targetHousePrice = null,
    Object? monthlyProjection = null,
    Object? monthlyContribution = null,
    Object? targetDate = null,
  }) {
    return _then(_$HouseStateImpl(
      totalSaving: null == totalSaving
          ? _value.totalSaving
          : totalSaving // ignore: cast_nullable_to_non_nullable
              as int,
      targetHousePrice: null == targetHousePrice
          ? _value.targetHousePrice
          : targetHousePrice // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyProjection: null == monthlyProjection
          ? _value.monthlyProjection
          : monthlyProjection // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value._monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as List<MonthlyContributionState>,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseStateImpl implements _HouseState {
  const _$HouseStateImpl(
      {this.totalSaving = 0,
      this.targetHousePrice = 0,
      this.monthlyProjection = 0.0,
      final List<MonthlyContributionState> monthlyContribution =
          const <MonthlyContributionState>[],
      this.targetDate = ''})
      : _monthlyContribution = monthlyContribution;

  factory _$HouseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseStateImplFromJson(json);

  @override
  @JsonKey()
  final int totalSaving;
  @override
  @JsonKey()
  final int targetHousePrice;
  @override
  @JsonKey()
  final double monthlyProjection;
  final List<MonthlyContributionState> _monthlyContribution;
  @override
  @JsonKey()
  List<MonthlyContributionState> get monthlyContribution {
    if (_monthlyContribution is EqualUnmodifiableListView)
      return _monthlyContribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyContribution);
  }

  @override
  @JsonKey()
  final String targetDate;

  @override
  String toString() {
    return 'HouseState(totalSaving: $totalSaving, targetHousePrice: $targetHousePrice, monthlyProjection: $monthlyProjection, monthlyContribution: $monthlyContribution, targetDate: $targetDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseStateImpl &&
            (identical(other.totalSaving, totalSaving) ||
                other.totalSaving == totalSaving) &&
            (identical(other.targetHousePrice, targetHousePrice) ||
                other.targetHousePrice == targetHousePrice) &&
            (identical(other.monthlyProjection, monthlyProjection) ||
                other.monthlyProjection == monthlyProjection) &&
            const DeepCollectionEquality()
                .equals(other._monthlyContribution, _monthlyContribution) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalSaving,
      targetHousePrice,
      monthlyProjection,
      const DeepCollectionEquality().hash(_monthlyContribution),
      targetDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseStateImplCopyWith<_$HouseStateImpl> get copyWith =>
      __$$HouseStateImplCopyWithImpl<_$HouseStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseStateImplToJson(
      this,
    );
  }
}

abstract class _HouseState implements HouseState {
  const factory _HouseState(
      {final int totalSaving,
      final int targetHousePrice,
      final double monthlyProjection,
      final List<MonthlyContributionState> monthlyContribution,
      final String targetDate}) = _$HouseStateImpl;

  factory _HouseState.fromJson(Map<String, dynamic> json) =
      _$HouseStateImpl.fromJson;

  @override
  int get totalSaving;
  @override
  int get targetHousePrice;
  @override
  double get monthlyProjection;
  @override
  List<MonthlyContributionState> get monthlyContribution;
  @override
  String get targetDate;
  @override
  @JsonKey(ignore: true)
  _$$HouseStateImplCopyWith<_$HouseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyContributionState _$MonthlyContributionStateFromJson(
    Map<String, dynamic> json) {
  return _MonthlyContributionState.fromJson(json);
}

/// @nodoc
mixin _$MonthlyContributionState {
  String get dateTime => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthlyContributionStateCopyWith<MonthlyContributionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyContributionStateCopyWith<$Res> {
  factory $MonthlyContributionStateCopyWith(MonthlyContributionState value,
          $Res Function(MonthlyContributionState) then) =
      _$MonthlyContributionStateCopyWithImpl<$Res, MonthlyContributionState>;
  @useResult
  $Res call({String dateTime, int amount});
}

/// @nodoc
class _$MonthlyContributionStateCopyWithImpl<$Res,
        $Val extends MonthlyContributionState>
    implements $MonthlyContributionStateCopyWith<$Res> {
  _$MonthlyContributionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyContributionStateImplCopyWith<$Res>
    implements $MonthlyContributionStateCopyWith<$Res> {
  factory _$$MonthlyContributionStateImplCopyWith(
          _$MonthlyContributionStateImpl value,
          $Res Function(_$MonthlyContributionStateImpl) then) =
      __$$MonthlyContributionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dateTime, int amount});
}

/// @nodoc
class __$$MonthlyContributionStateImplCopyWithImpl<$Res>
    extends _$MonthlyContributionStateCopyWithImpl<$Res,
        _$MonthlyContributionStateImpl>
    implements _$$MonthlyContributionStateImplCopyWith<$Res> {
  __$$MonthlyContributionStateImplCopyWithImpl(
      _$MonthlyContributionStateImpl _value,
      $Res Function(_$MonthlyContributionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? amount = null,
  }) {
    return _then(_$MonthlyContributionStateImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyContributionStateImpl implements _MonthlyContributionState {
  const _$MonthlyContributionStateImpl({this.dateTime = '', this.amount = 0});

  factory _$MonthlyContributionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyContributionStateImplFromJson(json);

  @override
  @JsonKey()
  final String dateTime;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'MonthlyContributionState(dateTime: $dateTime, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyContributionStateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyContributionStateImplCopyWith<_$MonthlyContributionStateImpl>
      get copyWith => __$$MonthlyContributionStateImplCopyWithImpl<
          _$MonthlyContributionStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyContributionStateImplToJson(
      this,
    );
  }
}

abstract class _MonthlyContributionState implements MonthlyContributionState {
  const factory _MonthlyContributionState(
      {final String dateTime,
      final int amount}) = _$MonthlyContributionStateImpl;

  factory _MonthlyContributionState.fromJson(Map<String, dynamic> json) =
      _$MonthlyContributionStateImpl.fromJson;

  @override
  String get dateTime;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$MonthlyContributionStateImplCopyWith<_$MonthlyContributionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
