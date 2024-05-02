import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/nex_courses_app_bar.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';
import 'componentsNextCourses/list_view_courses.dart';

class NextCoursesPage extends StatelessWidget {
  const NextCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: sizeOf.width * 6,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NextCoursesAppBar(),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Próximos cursos',
                  style: SincofarmaTheme.titleStyle,
                ),
              ),
              SizedBox(
                width: sizeOf.width * 1.2,
                height: sizeOf.width * 1.6,
                child: const ListViewCourses(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
