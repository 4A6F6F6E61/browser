import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_all/webview_all.dart';

class Index extends HookWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUrl = useState("https://www.duckduckgo.com/");
    return Scaffold(
      body: Stack(children: [Webview(url: currentUrl.value)]),
    );
  }
}
