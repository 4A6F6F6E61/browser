import 'package:browser/models/tab_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:webview_all/webview_all.dart';

Color buttonColor = CupertinoColors.darkBackgroundGray.withAlpha(200);
Color iconColor = Color(0xC0BBBBBB);

class Index extends HookWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    final openTabs = useState<List<TabModel>>([TabModel(url: "https://www.duckduckgo.com/")]);
    final current = useState<int>(0);

    TabModel currentTab() => openTabs.value[current.value];

    return Scaffold(
      body: Stack(
        children: [
          Webview(url: currentTab().url),
          Positioned(
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).padding.bottom,
            child: LiquidGlassLayer(
              child: LiquidGlass(
                shape: LiquidRoundedSuperellipse(borderRadius: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        child: const Icon(CupertinoIcons.table),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CupertinoButton.filled(
                        color: buttonColor,
                        padding: const EdgeInsets.all(0),
                        borderRadius: BorderRadius.circular(40),
                        onPressed: () {},
                        child: SizedBox(
                          width: 70,
                          child: Icon(CupertinoIcons.add, color: iconColor),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CupertinoButton.filled(
                        color: buttonColor,
                        padding: const EdgeInsets.all(0),
                        borderRadius: BorderRadius.circular(40),
                        onPressed: () {},
                        child: Icon(CupertinoIcons.chevron_up, color: iconColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
