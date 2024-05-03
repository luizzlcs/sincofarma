import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import '../../../../../model/mock/dummy_data.dart';
import 'button_card_widget.dart';

class SelectClassWidget extends StatelessWidget {
  const SelectClassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    final controller = Injector.get<DummyData>();
    final dataCourse = controller.data;
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            width: sizeOf.width,
            height: 120,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 5,
                );
              },
              padding: const EdgeInsets.only(
                left: 5,
                top: 10,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: dataCourse.length,
              itemBuilder: (context, index) {
                return const SizedBox(
                  height: 80,
                  child: ButtonCardWidget(),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
