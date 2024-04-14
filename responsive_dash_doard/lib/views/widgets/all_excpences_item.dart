import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/models/all_excpences_item_model.dart';
//import 'package:responsive_dash_doard/utils/app_images.dart';
//import 'package:responsive_dash_doard/utils/app_styles.dart';
import 'package:responsive_dash_doard/views/widgets/active_and_inactive_excpences_item.dart';
///import 'package:responsive_dash_doard/views/widgets/all_excpences_item_header.dart';

class AllExcpencesItem extends StatelessWidget {
  const AllExcpencesItem(
      {super.key, required this.itemModel, required this.isActive});
  final AllExcpencesItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExcpencesItem(itemModel: itemModel)
        : InActiveExcpencesItem(itemModel: itemModel);
  }
}
