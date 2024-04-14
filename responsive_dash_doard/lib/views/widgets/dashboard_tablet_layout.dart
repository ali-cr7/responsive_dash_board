import 'package:flutter/material.dart';
//import 'package:responsive_dash_doard/views/widgets/all_Excepencess_and_quick_invioces.dart';
import 'package:responsive_dash_doard/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_doard/views/widgets/dashboard_mobile_layout.dart';
//import 'package:responsive_dash_doard/views/widgets/income_sectiom.dart';
//import 'package:responsive_dash_doard/views/widgets/mycards_and_transaction_history.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
