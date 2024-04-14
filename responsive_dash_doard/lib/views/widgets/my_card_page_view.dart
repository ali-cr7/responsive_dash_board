import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/page%20index%20cubit/page_index_cubit.dart';
import 'package:responsive_dash_doard/views/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return BlocBuilder<PageIndexCubit, int>(
      builder: (context, pageIndex) {
        return ExpandablePageView.builder(
          controller: pageController,
          onPageChanged: (int page) {
            context.read<PageIndexCubit>().setPageIndex(page);
          },
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 4),
              child: MyCard(),
            );
          }),
          // scrollDirection: Axis.horizontal,
          // children: List.generate(
          //   3,
          //   (index) => const MyCard(),
          // ),
        );
      },
    );
  }
}
