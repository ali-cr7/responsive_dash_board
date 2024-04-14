import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/models/user_info_model.dart';
import 'package:responsive_dash_doard/utils/app_images.dart';
import 'package:responsive_dash_doard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    USerInfoModel(
        image: Assets.imagesAvatar1,
        title: "Mardani Andi",
        subTitle: "Mardani20@gmail"),
    USerInfoModel(
        image: Assets.imagesAvatar2,
        title: "Mardani Andi",
        subTitle: "Mardani20@gmail"),
    USerInfoModel(
        image: Assets.imagesAvatar3,
        title: "Mardani Andi",
        subTitle: "Mardani20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: USerInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: USerInfoListTile(
                userInfoModel: items[index],
              ),
            );
          }),
    );
  }
}
