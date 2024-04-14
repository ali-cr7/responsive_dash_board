import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/utils/app_styles.dart';
import 'package:responsive_dash_doard/views/widgets/range_options.dart';

class AllExcpencesHeader extends StatelessWidget {
  const AllExcpencesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Excpenses",
          style: AppStyles.styleSemiBold20(
            context,
          ),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
