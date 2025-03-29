import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_24/core/routing/app_router.dart';
import 'package:news_24/core/routing/routes.dart';
import 'package:news_24/core/theme/app_theme.dart';
import 'package:news_24/generated/l10n.dart';

class NewsApp extends StatelessWidget {
  final AppRouter appRouter;
  const NewsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),

      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,


        initialRoute: Routes.signUp,


        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
