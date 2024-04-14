import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/all%20excpences%20cubit/all_excpences_cubit.dart';
import 'package:responsive_dash_doard/models/all_excpences_item_model.dart';
import 'package:responsive_dash_doard/utils/app_images.dart';
import 'package:responsive_dash_doard/views/widgets/all_excpences_item.dart';

class AllExcpencesItemsListView extends StatelessWidget {
  const AllExcpencesItemsListView({super.key});
  static const items = [
    AllExcpencesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExcpencesItemModel(
        image: Assets.imagesIncome,
        title: "income",
        date: "April 2022",
        price: r"$20,129"),
    AllExcpencesItemModel(
        image: Assets.imagesExpenses,
        title: "Excepnces",
        date: "April 2022",
        price: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllExcpencesCubit(),
      child: BlocBuilder<AllExcpencesCubit, AllExcpencesState>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<AllExcpencesCubit>().onItemTapped(0);
                  },
                  child: AllExcpencesItem(
                    isActive: state.activeIndex == 0,
                    itemModel: items[0],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<AllExcpencesCubit>().onItemTapped(1);
                  },
                  child: AllExcpencesItem(
                    isActive: state.activeIndex == 1,
                    itemModel: items[1],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<AllExcpencesCubit>().onItemTapped(2);
                  },
                  child: AllExcpencesItem(
                    isActive: state.activeIndex == 2,
                    itemModel: items[2],
                  ),
                ),
              )
            ],
          );
          // return Row(
          //   children: items.asMap().entries.map((e) {
          //     int index = e.key;
          //     var item = e.value;
          //     if (index == 1) {
          //       return Expanded(
          //         child: Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 12),
          //           child: GestureDetector(
          //               onTap: () {
          //                 context.read<AllExcpencesCubit>().onItemTapped(index);
          //               },
          //               child: AllExcpencesItem(
          //                   isActive: state.activeIndex == index,
          //                   itemModel: item)),
          //         ),
          //       );
          //     } else {
          //       return Expanded(
          //           child: BlocBuilder<AllExcpencesCubit, AllExcpencesState>(
          //         builder: (context, state) {
          //           return GestureDetector(
          //               onTap: () {
          //                 context.read<AllExcpencesCubit>().onItemTapped(index);
          //               },
          //               child:
          //                   AllExcpencesItem(isActive: true, itemModel: item));
          //         },
          //       ));
          //     }
          //   }).toList(),
          //   //// items
          //   //     .map((e) => Expanded(child: AllExcpencesItem(itemModel: e)))
          //   //     .toList(),
          // );
        },
      ),
    );
  }
}
