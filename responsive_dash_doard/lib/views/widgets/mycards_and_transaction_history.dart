//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/views/widgets/custom_background_container.dart';
//import 'package:responsive_dash_doard/views/widgets/income_chart.dart';
import 'package:responsive_dash_doard/views/widgets/income_section.dart';
import 'package:responsive_dash_doard/views/widgets/my_cards_section.dart';
import 'package:responsive_dash_doard/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        //  IncomeSection()
        ],
      ),
    );
  }
}
