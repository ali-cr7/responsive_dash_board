import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_doard/views/widgets/custom_button.dart';
import 'package:responsive_dash_doard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer Name', hint: "type Customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: "type Customer email"))
          ],
        ),
        // SizedBox(
        //   height: 12,
        // ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item Name', hint: "type Customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: "USD"))
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton()),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: CustomButton(
              textColor: Color(0xFF4DB7F2),
              backgroundCOlor: Colors.transparent,
            )),
          ],
        )
      ],
    );
  }
}
