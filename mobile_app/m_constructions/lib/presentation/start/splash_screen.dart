import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/application/app/app_state_provider.dart';
import 'package:m_constructions/presentation/start/login.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Timer(Duration(seconds: 3), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
      });
    }, const []);

    final isSubmitting =
        ref.watch(appStateNotifierProvider.select((value) => value.token));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SVAM",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "CONSTRUCTIONS",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                letterSpacing: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
