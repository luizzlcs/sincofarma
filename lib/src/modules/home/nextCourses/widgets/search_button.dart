import 'package:flutter/material.dart';

import '../../../../constants/images_constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: sizeOf.width * 0.7,
            height: 48.31,
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset(ImagesConstants.search),
              )),
            )),
        const SizedBox(
          width: 8.97,
        ),
        Container(
            width: sizeOf.width *0.2,
            height: 42.31,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                ImagesConstants.group,
                width: 33,
                height: 31,
              ),
            ))
      ],
    );
  }
}
