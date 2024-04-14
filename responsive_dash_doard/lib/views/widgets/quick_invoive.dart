import 'package:flutter/material.dart';
//import 'package:responsive_dash_doard/utils/app_styles.dart';
import 'package:responsive_dash_doard/views/widgets/custom_background_container.dart';
//import 'package:responsive_dash_doard/views/widgets/custom_text_field.dart';
import 'package:responsive_dash_doard/views/widgets/latest_transactiom.dart';
//import 'package:responsive_dash_doard/views/widgets/latest_transaction_listview.dart';
import 'package:responsive_dash_doard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_doard/views/widgets/quick_invoice_header.dart';
//import 'package:responsive_dash_doard/views/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
