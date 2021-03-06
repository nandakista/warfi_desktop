import 'dart:io';

import 'package:desktop_base/app/app_config.dart';
import 'package:desktop_base/app/app_constant.dart';
import 'package:desktop_base/app/app_service.dart';
import 'package:desktop_base/database/hive/app_database.dart';
import 'package:desktop_base/database/hive/dao/product_dao.dart';
import 'package:desktop_base/database/hive/entity/product/product_entity.dart';
import 'package:desktop_base/features/main_page.dart';
import 'package:desktop_base/features/product/add_product/add_product_provider.dart';
import 'package:desktop_base/features/product/list_product/list_product_provider.dart';
import 'package:desktop_base/features/test_page.dart';
import 'package:desktop_base/features/transaction/history_in/history_in_provider.dart';
import 'package:desktop_base/helper/general_function.dart';
import 'package:desktop_base/helper/scroll_helper.dart';
import 'package:desktop_base/themes/app_theme.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setMinWindowSize(const Size(550, 600));
  HttpOverrides.global = MyHttpOverrides();
  await AppServices.init();
  await HiveDB.init();
  AppConfig.init(Flavors.PRODUCTION);
  runApp(const MyApp());
}

class MyApp extends fluent.StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddProductProvider()),
        ChangeNotifierProvider(create: (context) => ListProductProvider().init()),
        ChangeNotifierProvider(create: (context) => HistoryInProvider()),
      ],
        child: fluent.FluentApp(
          title: AppConst.appName,
          debugShowCheckedModeBanner: false,
          scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
          theme: AppTheme.fluent(theme: ThemeConf.LIGHT),
          darkTheme: AppTheme.fluent(theme: ThemeConf.DARK),
          themeMode: ThemeMode.system,
          home: const MainPage(),
          // home: TestPage(),
        )
    );
  }
}
