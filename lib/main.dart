import 'package:exam_5/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/providers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(390, 844),
        child: MultiBlocProvider(
          providers:providers,
          child: MaterialApp.router(
            routerConfig: router,
          ),
        ));
  }
}
