import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrm/routes/app_pages.dart';
import 'package:hrm/routes/app_routes.dart';
import 'package:hrm/services/translation_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        translations: TranslationService(),
        locale: TranslationService.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        getPages: AppPages.getPages,
        initialRoute: AppRoutes.signUp,
        theme: ThemeData(
          textTheme: GoogleFonts.inderTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
      ),
    );
  }
}
