
import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/custom_app_bar_widget.dart';
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
          CustomAppBarWidget(
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
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Center(
              child: Text(
                'Sobre o Curso',
                style: SincofarmaTheme.titleStyle,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
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
                       Padding(
                        padding: const EdgeInsets.only(top: 7, left: 16, right: 11),
                        child: SizedBox(
                          height: sizeOf.width * 0.65,
                          child: const ListviewExpandableWidget(),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            width: 316,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Clique aqui e Inscreva-se',
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
