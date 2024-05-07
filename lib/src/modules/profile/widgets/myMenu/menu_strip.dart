import 'package:flutter/material.dart';

import '../../../../theme/sincofarma_theme.dart';

class MenuStrip extends StatelessWidget {
  const MenuStrip({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 27,
      decoration: const BoxDecoration(
        color: SincofarmaTheme.lightGreyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 26),
        child: Text(
          label,
          style: SincofarmaTheme.fonteSizeInter12px,
        ),
      ),
    );
  }
}
