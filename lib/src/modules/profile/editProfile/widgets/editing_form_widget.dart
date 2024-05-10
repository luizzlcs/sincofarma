import 'package:flutter/material.dart';

import '../../../../theme/sincofarma_theme.dart';

class EditingFormWidget extends StatelessWidget {
  const EditingFormWidget(
      {super.key, required this.hintText, required this.label});
  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextFormField(
          decoration: InputDecoration(
            hintText: label,

            labelStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black, // Use a cor desejada
              fontWeight: FontWeight.w700,
            ),

            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: SincofarmaTheme.greyColor, // Use a cor desejada
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: SincofarmaTheme.greyColor, // Use a cor desejada
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: SincofarmaTheme.greyColor, // Use a cor desejada
                width: 2,
              ),
            ),

            filled: false,
            fillColor: SincofarmaTheme.whiteColor, // Use a cor desejada
          ),
        ),
        const SizedBox(
          height: 19,
        ),


      ],
    );
  }
}
