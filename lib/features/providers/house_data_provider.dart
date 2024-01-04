import 'package:dhiwise_project/core/constants.dart';
import 'package:dhiwise_project/features/model/house_model.dart';
import 'package:dhiwise_project/features/providers/cloud_db_instance_provider.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'house_data_provider.g.dart';

@riverpod
class HouseDataNotifier extends _$HouseDataNotifier {
  @override
  HouseState build() {
    return const HouseState();
  }

  Future<void> fetchDataFromServer() async {
    final dbInstance = ref.read(firebaseDBProvider);
    await dbInstance
        .collection(Constants.houseCollection)
        .get()
        .then((value) async {
      for (var element in value.docs) {
        final data = element.data();
        List<MonthlyContributionState> contributionList = [];

        if (data.containsKey(Constants.contributions)) {
          List<dynamic> list = data[Constants.contributions];
          for (var element in list) {
            contributionList.add(MonthlyContributionState(
                amount: element[Constants.amount],
                dateTime: element[Constants.dateTime]));
          }
        }

        state = state.copyWith(
            totalSaving: data[Constants.totalSaving],
            targetHousePrice: data[Constants.targetAmount],
            targetDate: data[Constants.targetDate],
            monthlyContribution: contributionList,
            monthlyProjection: getMonthlyProjection(
                targetPrice: data[Constants.targetAmount],
                currentPrice: data[Constants.totalSaving],
                targetDateTime: data[Constants.targetDate],
                contributions: contributionList));
      }
    });
  }

  double getMonthlyProjection(
      {required int targetPrice,
      required int currentPrice,
      required String targetDateTime,
      required List<MonthlyContributionState> contributions}) {
    double remainingPrice = (targetPrice - currentPrice).toDouble();

    final remainingMonths = DateFormat('yyyy-MM-dd')
            .parse(targetDateTime)
            .difference(DateTime.now())
            .inDays /
        30;
    return remainingPrice / remainingMonths;
  }
}
