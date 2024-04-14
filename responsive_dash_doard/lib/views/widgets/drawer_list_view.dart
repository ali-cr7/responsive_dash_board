import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_doard/cubit/drawer%20cubit/drawer_item_cubit.dart';
import 'package:responsive_dash_doard/models/drawer_item_model.dart';
import 'package:responsive_dash_doard/utils/app_images.dart';
import 'package:responsive_dash_doard/views/widgets/drawer_item.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({Key? key}) : super(key: key);
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerItemCubit(),
      child: BlocBuilder<DrawerItemCubit, DrawerItemState>(
        builder: (context, state) {
          return SliverList.builder(
            itemCount: items.length,
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: GestureDetector(
                  onTap: () {
                    context.read<DrawerItemCubit>().onItemTapped(index);
                  },
                  child: DrawerItem(
                    drawerItemModel: items[index],
                    isActive: state.activeIndex == index,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
