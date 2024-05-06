import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/nex_courses_app_bar_widget.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';
import 'widgets/expandableInfo/listview_expandable_widget.dart';
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
      body: Column(
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
            height: 20,
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
            width: double.infinity,
            height: sizeOf.width * 1.52,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InforCourseWidget(
                      course: courseString,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 6, right: 8),
                      child: SelectClassWidget(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 7, left: 20, right: 20),
                      child: SizedBox(
                        height: 300,
                        child: ListviewExpandableWidget(),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 316,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Clique aqui e Inscreva-se',
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
