library foo;

import 'package:flutter/material.dart';
import 'package:foo/gen/l10n/app_localizations.dart';

class FooWidget extends StatelessWidget {
  const FooWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Text(l.foo);
  }
}
