import 'package:autism_test_app/core/constants/constants.dart';
import 'package:autism_test_app/core/constants/locale_constants.dart';
import 'package:autism_test_app/core/constants/size_constants.dart';
import 'package:autism_test_app/router/router.dart';
import 'package:autism_test_app/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: LocaleConstants.supportedLocales,
      path: LocaleConstants.path,
      fallbackLocale: LocaleConstants.tr,
      child: ScreenUtilInit(
        designSize: SizeConstant.designSize,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => unFocus(context),
            child: const _MaterialApp(),
          );
        },
      ),
    );
  }

  void unFocus(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}

class _MaterialApp extends StatefulWidget {
  const _MaterialApp();

  @override
  State<_MaterialApp> createState() => __MaterialAppState();
}

class __MaterialAppState extends State<_MaterialApp> {
  @override
  void didChangeDependencies() {
    Intl.defaultLocale = context.locale.languageCode;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Provider.of<AppRouter>(context).config(),
      title: Constants.appName,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: theme,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling, boldText: false),
        child: child!,
      ),
    );
  }
}
