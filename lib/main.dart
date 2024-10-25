import 'package:flutter/material.dart';
import 'package:news_app/core/themes/app_theme.dart';
import 'package:news_app/presentation/router/router_imports.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final appRouter  = AppRouter();


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'News App',
      theme: AppTheme.light,
      darkTheme: AppTheme.light,
      routerConfig: appRouter.config(),
     
    );
  }
}

