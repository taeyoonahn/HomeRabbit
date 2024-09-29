import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:home_rabbit/data/data_source/house_data_source.dart';
import 'package:home_rabbit/presentation/view_model/router_view_model.dart';
import 'package:provider/provider.dart';
import 'package:home_rabbit/di/provider_di.dart';

import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  final providers = await providerDi();
  MobileAds.instance.initialize();
  await HouseDataSource.init();
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routerViewModel = context.read<RouterViewModel>();
    final GoRouter goRouter = routerViewModel.goRouter;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'HomeRabbit',
      theme: ThemeData(fontFamily: 'Pretendard',),
      routerConfig: goRouter,
    );
  }
}