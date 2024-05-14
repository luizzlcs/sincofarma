import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

import '../home/nextCourses/widgets/custom_app_bar_widget.dart';

class AboutSincofarmaPage extends StatelessWidget {
  const AboutSincofarmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SizedBox(
        height: sizeOf.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarWidget(),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Sobre a Educativa',
                  style: SincofarmaTheme.titleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 23),
                child: SizedBox(
                  height: sizeOf.height * .75,
                  child: const SingleChildScrollView(
                    child: Text(
                      textAlign: TextAlign.left,
                      '''A Educativa é uma plataforma de cursos online sediada em Natal-RN. Ela oferece uma variedade de cursos para aprimorar habilidades e conhecimentos em diversas áreas. Vamos explorar o que a Educativa tem a oferecer:

 ✅ Advogados e Jurídico:
      🌟 Cursos para advogados, estudantes de direito e profissionais do setor jurídico.
      🌟 Tópicos incluem legislação, prática jurídica, ética e muito mais.
\n✅ Tecnologia da Informação (TI):
      🌟Cursos abrangendo várias áreas de TI, como redes, segurança cibernética, administração de sistemas e desenvolvimento de software.
      🌟Aprenda sobre as últimas tendências e ferramentas no mundo da tecnologia.
\n ✅ Engenharia de Software:
      🌟 Explore os princípios da engenharia de software, metodologias ágeis, design de software e boas práticas de desenvolvimento.
      🌟Prepare-se para criar soluções eficientes e escaláveis.
\n ✅Linguagens de Programação:
\n A Educativa oferece cursos em várias linguagens de programação, incluindo:
      🌟 Dart
      🌟 Flutter
      🌟 Python
      🌟 NodeJS
      🌟 React
      🌟 JavaScript
      🌟 Java
      🌟 Aprenda a programar, desenvolver aplicativos e sites.
\n ✅ Curso de Português e Matemática:
      🌟 Aprimore suas habilidades em língua portuguesa e matemática.
      🌟Ideal para estudantes, profissionais e qualquer pessoa interessada em reforçar essas bases essenciais.
\n ✅ Certificados e Reconhecimento:
      🌟 Os certificados da Educativa são chancelados por uma universidade e reconhecidos pelo mercado.
      🌟 Aproveite a oportunidade de aprender com teoria e prática em um ambiente que valoriza o conhecimento.
\n Lembre-se de que a Educativa está sempre atualizando sua oferta de cursos para atender às necessidades dos alunos. Explore os cursos disponíveis e comece a aprimorar suas habilidades hoje mesmo!
\n Para mais informações, você pode visitar o site da Educativa e explorar os cursos disponíveis.

''',

                      style: TextStyle(
                        color: SincofarmaTheme.blackColor,
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
