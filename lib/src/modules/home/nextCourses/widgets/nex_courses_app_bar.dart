import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/widgets/search_button.dart';
import '../../../../constants/images_constants.dart';
import 'custom_arc_home.dart';

class NextCoursesAppBar extends StatelessWidget {
  const NextCoursesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: CustomArcHome(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        SizedBox(
                          child: Image.asset(
                            width: 126,
                            height: 50,
                            ImagesConstants.logoCursoWhite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset(ImagesConstants.notification),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/profile/profile-page');
                              },
                              icon: Image.asset(
                                ImagesConstants.profile,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const SearchButton(),
                    
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
