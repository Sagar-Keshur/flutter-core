import 'package:flutter_core/core/constants/app_colors.dart';
import 'package:flutter_core/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () => Get.back(id: 1),
        child: Icon(
          CupertinoIcons.back,
          size: 18.h,
          color: AppColors.lightTextColor,
        ),
      ).paddingOnly(bottom: defaultPadding / 2),
    );
  }
}
