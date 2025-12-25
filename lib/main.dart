import 'package:flutter/material.dart';
import 'package:planty_app/routers/router.dart';
import 'package:planty_app/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Planty - Mobile Dev Test',
      theme: AppThemes.light,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
