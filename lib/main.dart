import 'package:browser/router.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      routerConfig: router,
    );
  }
}
