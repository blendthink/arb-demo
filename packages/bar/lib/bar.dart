library bar;

import 'package:flutter/material.dart';
import 'package:bar/gen/l10n/app_localizations.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Text(l.bar);
  }
}
