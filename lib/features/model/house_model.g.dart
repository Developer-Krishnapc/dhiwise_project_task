// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseStateImpl _$$HouseStateImplFromJson(Map<String, dynamic> json) =>
    _$HouseStateImpl(
      totalSaving: json['totalSaving'] as int? ?? 0,
      targetHousePrice: json['targetHousePrice'] as int? ?? 0,
      monthlyProjection: (json['monthlyProjection'] as num?)?.toDouble() ?? 0.0,
      monthlyContribution: (json['monthlyContribution'] as List<dynamic>?)
              ?.map((e) =>
                  MonthlyContributionState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MonthlyContributionState>[],
      targetDate: json['targetDate'] as String? ?? '',
    );

Map<String, dynamic> _$$HouseStateImplToJson(_$HouseStateImpl instance) =>
    <String, dynamic>{
      'totalSaving': instance.totalSaving,
      'targetHousePrice': instance.targetHousePrice,
      'monthlyProjection': instance.monthlyProjection,
      'monthlyContribution': instance.monthlyContribution,
      'targetDate': instance.targetDate,
    };

_$MonthlyContributionStateImpl _$$MonthlyContributionStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthlyContributionStateImpl(
      dateTime: json['dateTime'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
    );

Map<String, dynamic> _$$MonthlyContributionStateImplToJson(
        _$MonthlyContributionStateImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime,
      'amount': instance.amount,
    };
