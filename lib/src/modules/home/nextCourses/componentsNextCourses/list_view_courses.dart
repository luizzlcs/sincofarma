import 'package:flutter/material.dart';
import 'package:sincofarma/src/modules/home/nextCourses/componentsNextCourses/components_courses.dart';

class ListViewCourses extends StatelessWidget {
  const ListViewCourses({super.key});
  @override
  Widget build(BuildContext context) {
    var description =
        'Programa de Formação e Habilitação de Vacinação para Farmacêuticos, visa capacitar profissionais da área para atuarem como vacinadores. Atende todas as exigências do CFF e Mec.';
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20, // Número de itens na lista
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: true,
            title: ComponentsCourses(
              pathImage: 'pathImage $index',
              starDate: 'starDate',
              course: 'VACINAÇÃO',
              description: description,
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
