import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import '../../../../constants/app_images.dart';
import '../next_courses_controller.dart';
import 'search_form_controller.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> with SearchFormController {
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
                icon: Image.asset(AppImages.search),
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
                AppImages.group,
                width: 33,
                height: 31,
              ),
            ))
      ],
    );
  }
}
