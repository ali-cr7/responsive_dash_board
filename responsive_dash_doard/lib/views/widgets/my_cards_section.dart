import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_doard/utils/app_styles.dart';
import 'package:responsive_dash_doard/views/widgets/dots_indicatior.dart';
import 'package:responsive_dash_doard/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardsPageView(),
        const SizedBox(
          height: 20,
        ),
        const DotsIndicator(),
      ],
    );
  }
}
