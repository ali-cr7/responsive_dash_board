import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_doard/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_doard/views/widgets/income_chart.dart';
import 'package:responsive_dash_doard/views/widgets/income_details.dart';
import 'package:responsive_dash_doard/views/widgets/income_section_body.dart';
import 'package:responsive_dash_doard/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomSectionBody(),
        ],
      ),
    );
  }
}
