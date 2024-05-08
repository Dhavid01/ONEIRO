import 'package:flutter/material.dart';
import 'package:oneiro/core/router/router.dart';
import 'package:oneiro/core/services/navigation_service.dart';
import 'package:oneiro/core/utils/locator.dart';
import 'package:oneiro/views/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(),
      home: const Home(),
    );
  }
}
