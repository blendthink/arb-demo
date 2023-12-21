import 'package:bar/bar.dart';
import 'package:bar/l10n.dart' as bar_l10n;
import 'package:flutter/material.dart';
import 'package:foo/foo.dart';
import 'package:foo/l10n.dart' as foo_l10n;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        ...bar_l10n.AppLocalizations.localizationsDelegates,
        ...foo_l10n.AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: [
        ...bar_l10n.AppLocalizations.supportedLocales,
        ...foo_l10n.AppLocalizations.supportedLocales,
      ],
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FooWidget(),
            BarWidget(),
          ],
        ),
      ),
    );
  }
}
