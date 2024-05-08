import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

class ExpandableWidget extends StatefulWidget {
  const ExpandableWidget({
    super.key,
    required this.info,
    required this.index,
  });

  final String info;
  final int index;

  @override
  State<ExpandableWidget> createState() => _ExpandableWidgetState();
}

class _ExpandableWidgetState extends State<ExpandableWidget> {
  bool _isExpanded = false;

  void _toggleState() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleState,
          child: Container(
            height: 60,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              border: const Border.symmetric(
                horizontal: BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              color: widget.index.isOdd
                  ? SincofarmaTheme.naturalBlueColor
                  : SincofarmaTheme.blueColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.info,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.expand_less_sharp
                          : Icons.add_circle_outline_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          const SizedBox(
            height: 16.0,
          ),
        if (_isExpanded)
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Text(
              'Conteúdo',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
      ],
    );
  }
}
