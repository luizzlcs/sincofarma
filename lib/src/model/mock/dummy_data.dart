import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/model/mock/dummy_model.dart';

class DummyData {
  var data = [
    DummyModel(
      course: 'Vacinação',
      description:
          'Programa de Formação e Habilitação de Vacinação para Farmacêuticos, visa capacitar profissionais da área para atuarem como vacinadores. Atende todas as exigências do CFF e Mec.',
      imagePath: ImagesConstants.vaccination,
      startDate: '01 e 02 de Março',
    ),
    DummyModel(
      course: 'Primeiros Socorros',
      description:
          'Capacitar o profissional que trabalha no atendimento de farmácia/drogaria, para que possa ter noções, segurança e muitas vezes percepção antecipada.',
      imagePath: ImagesConstants.firstAid,
      startDate: '11 de Março ',
    ),
    DummyModel(
      course: 'Injetáveis',
      description:
          'Curso é destinado para profissionais da saúde, para a  capacitação das habilidades das Técnicas de Aplicação de Medicamentos, conforme as regulamentações da ANVISA.',
      imagePath: ImagesConstants.injectable,
      startDate: '09 de Março',
    ),
    DummyModel(
      course: 'Auriculoterapia',
      description:
          'Auriculoterapia é uma técnica terapêutica derivada da acupuntura, com origem na medicina tradicional chinesa, que tem como foco a estimulação de pontos específicos.',
      imagePath: ImagesConstants.auriculotherapy,
      startDate: '02 de Abril ',
    ),
    DummyModel(
      course: 'Assistência Farmacêutica',
      description:
          'É com enorme satisfação que anunciamos o lançamento do Curso de Assistência Farmacêutica da Unova! Um curso online gratuito que promete ser um divisor de águas na sua carreira profissional.',
      imagePath: ImagesConstants.pharmaceutical,
      startDate: '03 de Junho ',
    ),
  ];
}
// 