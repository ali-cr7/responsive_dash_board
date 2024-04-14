import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/page%20index%20cubit/page_index_cubit.dart';
import 'package:responsive_dash_doard/views/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, this.curentPageIndex});
  final int? curentPageIndex;
  @override
  Widget build(BuildContext context) {
    final pageIndex = context.watch<PageIndexCubit>().state;
    print('DotsIndicator rebuilt with pageIndex: $pageIndex');
    return BlocConsumer<PageIndexCubit, int>(
      listener: (context, pageIndex) {
        // TODO: implement listener
      },
      builder: (context, pageIndex) {
        return Row(
          children: List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: CustomDOtIndicatior(isActive: index == pageIndex),
                  )),
        );
      },
    );
  }
}
