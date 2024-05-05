import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/nex_courses_app_bar_widget.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

import 'widgets/course_details_widget.dart';
import 'widgets/infor_course_widget.dart';
import 'widgets/select_class_widget.dart';

class AboutCoursePage extends StatelessWidget {
  const AboutCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments;
    String courseString = argument is String ? argument : argument.toString();

    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: sizeOf.width * 6,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NextCoursesAppBarWidget(
                arrowBack: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: SincofarmaTheme.whiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Center(
                  child: Text(
                    'Sobre o Curso',
                    style: SincofarmaTheme.titleStyle,
                  ),
                ),
              ),
              SizedBox(
                width: sizeOf.width,
                height: sizeOf.width * 1.7,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InforCourseWidget(
                        course: courseString,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 8),
                        child: SelectClassWidget(),
                      ),
                      const SizedBox(
                        height: 250,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: ExpansionPanelListExample(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
