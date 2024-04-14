import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/income%20chart%20cubit/income_chart_cubit.dart';
import 'package:responsive_dash_doard/cubit/page%20index%20cubit/page_index_cubit.dart';
import 'package:responsive_dash_doard/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => ResponsiveDashBoard()));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageIndexCubit()),
        BlocProvider(create: (context) => IncomeChartCubit()),
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: const DashBoardView(),
      ),
    );
  }
}
