import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'income_chart_state.dart';

class IncomeChartCubit extends Cubit<int> {
  IncomeChartCubit() : super(-1); // Initial active index (no section selected)

  void setActiveIndex(int index) {
    emit(index);
  }
}
