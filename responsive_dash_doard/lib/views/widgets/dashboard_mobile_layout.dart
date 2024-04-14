import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/views/widgets/all_Excepencess_and_quick_invioces.dart';
import 'package:responsive_dash_doard/views/widgets/income_section.dart';
import 'package:responsive_dash_doard/views/widgets/mycards_and_transaction_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExcpenessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
