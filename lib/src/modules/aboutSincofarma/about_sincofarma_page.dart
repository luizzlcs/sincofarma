

import 'package:flutter/material.dart';
import 'package:sincofarma/src/theme/sincofarma_theme.dart';

import '../home/nextCourses/widgets/custom_app_bar_widget.dart';

class AboutSincofarmaPage extends StatelessWidget {
  const AboutSincofarmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return  Scaffold(
      body: SizedBox(
        height: sizeOf.height,
        child:  SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarWidget(
                 
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Sobre o Sincofarma',
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
                      '''O Sincofarma/SP é o sindicato do Comércio Varejista de Produtos Farmacêuticos do estado de São Paulo. É o órgão oficial do patronal que representa todas as empresas com Farmácias ou Drogarias no estado de São Paulo nas negociações salariais e convenções coletivas de trabalho.
                              \nO Sincofarma SP é o primeiro órgão oficial do Patronal das Farmácias e Drogarias no Brasil.
                              \nOs serviços disponíveis aos associados são: Assuntos Regulatórios, PCMSO Programa de Controle de Medicina da Saúde Ocupacional, Assessoria Jurídica e tambémCursos de Capacitação, com diversos cursos disponíveis. Os cursos atualmente são a grande vitrine do Sincofarma. 
                              \nOs certificados são chancelados por uma Universidade e receberam Melhores Boas Práticas em 2023 pela CNC. 
                              \nSão oportunidades de capacitação para trabalhar com soluções burocráticas da vigilância e fiscalizações, toda parte técnica das empresa e um universo de possibilidade de aprendizado com teoria e prática em um local apropriado que representa as Farmácias e Drogarias. 
                              \nO Sincofarma tem a sua sede no centro da cidade de São Paulo, próximo à praça da República, mesmo em frente ao órgão da Vigilância Sanitária Central, a Covisa.
                              \nÉ filiado à Fecomercio SP, Federação do Comércio de Bens, Serviços e Turismo de SP. É o primeiro sindicato patronal das farmácias do Brasil, iniciando suas atividades em 1931. 
                              \nNa Presidência está Natanael Aguiar Costa, em seu quarto mandato.''',
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
