import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/income%20chart%20cubit/income_chart_cubit.dart';
import 'package:responsive_dash_doard/utils/app_styles.dart';

class DetailedIncomeChart extends StatelessWidget {
  const DetailedIncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: BlocBuilder<IncomeChartCubit, int>(
        builder: (context, activeIndex) {
          return PieChart(PieChartData(
            pieTouchData: PieTouchData(
                enabled: true,
                touchCallback: (p0, pietouchResponse) {
                  activeIndex =
                      pietouchResponse?.touchedSection?.touchedSectionIndex ??
                          -1;
                  context.read<IncomeChartCubit>().setActiveIndex(activeIndex);
                  //  log(activeIndex);
                  //   log(pietouchResponse!.touchedSection!.touchedSectionIndex);
                } // Disable built-in touch handling
                ),
            sectionsSpace: 0,
            sections: [
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
                title: activeIndex == 0 ? 'Design service' : '40%',
                titleStyle: AppStyles.styleMedium16(context)
                    .copyWith(color: activeIndex == 0 ? null : Colors.white),
                radius: activeIndex == 0 ? 60 : 50,
                value: 40,
                color: const Color(0xFF208BC7),
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
                titleStyle: AppStyles.styleMedium16(context)
                    .copyWith(color: activeIndex == 1 ? null : Colors.white),
                title: activeIndex == 1 ? 'Design product' : '25%',
                value: 25,
                radius: activeIndex == 1 ? 60 : 50,
                color: const Color(0xFF4DB7F2),
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
                titleStyle: AppStyles.styleMedium16(context)
                    .copyWith(color: activeIndex == 2 ? null : Colors.white),
                title: activeIndex == 2 ? 'Product royalti' : '20%',
                value: 20,
                radius: activeIndex == 2 ? 60 : 50,
                color: const Color(0xFF064060),
              ),
              PieChartSectionData(
                titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
                titleStyle: AppStyles.styleMedium16(context)
                    .copyWith(color: activeIndex == 3 ? null : Colors.white),
                title: activeIndex == 3 ? 'Other' : '22%',
                value: 22,
                radius: activeIndex == 3 ? 60 : 50,
                color: const Color(0xFFE2DECD),
              ),
            ],
          ));
        },
      ),
    );
  }
}
