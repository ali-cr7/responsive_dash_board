import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/views/widgets/all_excpences.dart';
import 'package:responsive_dash_doard/views/widgets/quick_invoive.dart';

class AllExcpenessAndQuickInvoiceSection extends StatelessWidget {
  const AllExcpenessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExcpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
