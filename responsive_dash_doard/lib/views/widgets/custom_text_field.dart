import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/utils/app_styles.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, this.hintText});
  final hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA))),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
