// import 'dart:js';

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_doard/models/drawer_item_model.dart';
import 'package:responsive_dash_doard/models/user_info_model.dart';
//import 'package:responsive_dash_doard/models/drawer_item_model.dart';
import 'package:responsive_dash_doard/utils/app_images.dart';
import 'package:responsive_dash_doard/views/widgets/active_and_inactive_drawer_item.dart';
//import 'package:responsive_dash_doard/views/widgets/drawer_item.dart';
//import 'package:responsive_dash_doard/views/widgets/drawer_item.dart';
import 'package:responsive_dash_doard/views/widgets/drawer_list_view.dart';
import 'package:responsive_dash_doard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: USerInfoListTile(
              userInfoModel: USerInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeow",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSettings)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
