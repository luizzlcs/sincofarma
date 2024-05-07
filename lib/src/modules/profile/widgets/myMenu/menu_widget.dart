import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../../../theme/sincofarma_theme.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({
    super.key,
    required this.icon,
    required this.label,
  });
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      icon,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      label,
                      style: SincofarmaTheme.fonteSizeInter15px,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.1),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    PhosphorIcons.caretCircleRight(),
                    size: 27,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
