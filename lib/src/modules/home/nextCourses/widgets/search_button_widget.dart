import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import '../../../../constants/images_constants.dart';
import '../next_courses_controller.dart';
import 'search_form_controller.dart';

class SearchButtonWidget extends StatefulWidget {
  const SearchButtonWidget({super.key});

  @override
  State<SearchButtonWidget> createState() => _SearchButtonWidgetState();
}

class _SearchButtonWidgetState extends State<SearchButtonWidget> with SearchFormController {
  final controller = Injector.get<NextCoursesController>();

  @override
  void dispose() {
    disposeForm();
    super.dispose();
  }

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
            controller: filteredCourseEC,
            onChanged: (value) {
              controller.filterCourses(value);
            },
            decoration: InputDecoration(
              hintText: 'Procurar cursos...',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Image.asset(ImagesConstants.search),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8.97,
        ),
        Container(
            width: sizeOf.width * 0.2,
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
