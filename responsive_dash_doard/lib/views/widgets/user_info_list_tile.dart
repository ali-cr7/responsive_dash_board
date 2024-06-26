import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_doard/models/user_info_model.dart';
//import 'package:responsive_dash_doard/utils/app_images.dart';
import 'package:responsive_dash_doard/utils/app_styles.dart';

class USerInfoListTile extends StatelessWidget {
  const USerInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final USerInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
