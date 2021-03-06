import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/presentation/dashboard/dashboard.dart';
import 'package:m_constructions/presentation/start/login.dart';
import 'package:m_constructions/presentation/start/sign_up.dart';
import 'package:m_constructions/presentation/start/splash_screen.dart';

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Named Routes Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => LoginScreen(),
          '/signup': (context) => const SignScreen(),
          '/home': (context) => const Dashboard(),
        },
      ),
    );
  }
}
