// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'template.dart';

class BottomSheetTemplate extends TokenTemplate {
  const BottomSheetTemplate(super.blockName, super.fileName, super.tokens, {
    super.colorSchemePrefix = '_colors.',
  });

  @override
  String generate() => '''
class _${blockName}DefaultsM3 extends BottomSheetThemeData {
  _${blockName}DefaultsM3(this.context)
    : super(
      elevation: ${elevation("md.comp.sheet.bottom.docked.standard.container")},
      modalElevation: ${elevation("md.comp.sheet.bottom.docked.modal.container")},
      shape: ${shape("md.comp.sheet.bottom.docked.container")},
    );

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;

  @override
  Color? get backgroundColor => ${componentColor("md.comp.sheet.bottom.docked.container")};

  @override
  Color? get surfaceTintColor => ${componentColor("md.comp.sheet.bottom.docked.container.surface-tint-layer")};

  @override
  Color? get shadowColor => Colors.transparent;
}
''';
}
