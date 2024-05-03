import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/search_button_widget.dart';
import '../../../../constants/images_constants.dart';
import 'custom_arc_home_widget.dart';

class NextCoursesAppBarWidget extends StatelessWidget {
  const NextCoursesAppBarWidget({
    super.key,
    this.arrowBack,
  });

  final Widget? arrowBack;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcHomeWidget(),
          size: const Size(double.infinity, 150),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: double.infinity,
              height: 160,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  children: [
                    SizedBox(
                      width: sizeOf.width * 0.93,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Container(
                                  child: arrowBack,
                                ),
                                Image.asset(
                                  width: 140,
                                  height: 50,
                                  ImagesConstants.logoCursoWhite,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      Image.asset(ImagesConstants.notification),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/profile/profile-page');
                                  },
                                  icon: Image.asset(
                                    ImagesConstants.profile,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const SearchButtonWidget(),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
