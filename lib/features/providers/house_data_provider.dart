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
    List<MonthlyContributionState> contributionList = [];
    final dbInstance = ref.read(firebaseDBProvider);
    await dbInstance
        .collection(Constants.houseCollection)
        .get()
        .then((value) async {
      for (var element in value.docs) {
        final data = element.data();

        int totalContribution = 0;

        if (data.containsKey(Constants.contributions)) {
          List<dynamic> list = data[Constants.contributions];

          for (var element in list) {
            totalContribution += element[Constants.amount] as int;
            contributionList.add(MonthlyContributionState(
                amount: element[Constants.amount],
                dateTime:
                    DateFormat('yyyy-MM-dd').parse(element[Constants.dateTime]),
                type: element[Constants.contributionType]));
          }
        }

        state = state.copyWith(
            totalSaving: totalContribution,
            targetHousePrice: data[Constants.targetAmount],
            targetDate: data[Constants.targetDate],
            monthlyContribution: contributionList,
            monthlyProjection: getMonthlyProjection(
                targetPrice: data[Constants.targetAmount],
                targetDateTime: data[Constants.targetDate],
                totoalContribution: totalContribution));

        calculateContributionType(contributionList);
      }
    });
  }

  void calculateContributionType(
      List<MonthlyContributionState> contributionList) {
    int salaryContribution = 0;
    int bonusContribution = 0;
    int otherContribution = 0;

    for (var element in contributionList) {
      if (element.type == Constants.salary) {
        salaryContribution += element.amount;
      } else if (element.type == Constants.bonus) {
        bonusContribution += element.amount;
      } else {
        otherContribution += element.amount;
      }
    }
    state = state.copyWith(
        totolBonusContribution: bonusContribution,
        totalSalaryContribution: salaryContribution,
        totalOtherContribution: otherContribution);
  }

  double getMonthlyProjection(
      {required int targetPrice,
      required String targetDateTime,
      required int totoalContribution}) {
    double remainingPrice = (targetPrice - totoalContribution).toDouble();

    final remainingMonths = DateFormat('yyyy-MM-dd')
            .parse(targetDateTime)
            .difference(DateTime.now())
            .inDays /
        30;
    return remainingPrice / remainingMonths;
  }
}
