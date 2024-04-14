import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_doard/views/widgets/all_Excepencess_and_quick_invioces.dart';
//import 'package:responsive_dash_doard/views/widgets/all_excpences.dart';
import 'package:responsive_dash_doard/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_doard/views/widgets/income_section.dart';
import 'package:responsive_dash_doard/views/widgets/mycards_and_transaction_history.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExcpenessAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        MyCardAndTransactionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection())
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
