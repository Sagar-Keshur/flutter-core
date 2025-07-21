import 'package:flutter/material.dart';
import 'package:flutter_core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/utils/stretch_scroll_behavior.dart';
import 'core/utils/utils.dart';
import 'routes/routes_name.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Utils.darkStatusBar();
  await Utils.screenPortrait();
  Utils.hideKeyboard();
  await GetStorage.init();
  runApp(const InterviewTaskApp());
}

class InterviewTaskApp extends StatelessWidget {
  const InterviewTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Interview Task',
          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,
          getPages: pages,
          initialRoute: RoutesName.splashView,
          scrollBehavior: ScrollBehaviorModified(),
          builder: (context, child) {
            final mediaQueryData = MediaQuery.of(context);
            final scale = mediaQueryData.textScaler.clamp(
              minScaleFactor: 1.0,
              maxScaleFactor: 1.14,
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: scale),
              child: child!,
            );
          },
        );
      },
    );
  }
}
