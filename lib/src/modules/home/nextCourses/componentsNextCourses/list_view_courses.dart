import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/componentsNextCourses/components_courses.dart';

class ListViewCourses extends StatelessWidget {
  const ListViewCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20, // Número de itens na lista
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:  ComponentsCourses(
              pathImage: 'pathImage $index',
              starDate: 'starDate',
              course: 'VACINAÇÃO',
              description: 'description',
            ),
            onTap: () {
              // Ação ao clicar no item
              debugPrint('Clicou no item $index');
            },
          );
        },
      ),
    );
  }
}
