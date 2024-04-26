import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/modules/auth/Register/register_controller.dart';
import 'package:validatorless/validatorless.dart';
import 'package:brasil_fields/brasil_fields.dart';
import '../../../theme/sincofarma_theme.dart';
import '../widgets/auth_app_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final registerController = Injector.get<RegisterController>();
  final formKey = GlobalKey<FormState>();
  final cnpjEC = TextEditingController();
  final cpfEC = TextEditingController();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final confirmPasswordEC = TextEditingController();

  @override
  void dispose() {
    cnpjEC.dispose();
    cpfEC.dispose();
    nameEC.dispose();
    emailEC.dispose();
    passwordEC.dispose();
    confirmPasswordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: double.infinity, child: AuthAppBar()),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(7.92),
                constraints: BoxConstraints(maxWidth: sizeOf.width * 0.95),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Text(
                        'Cadastre-se e comece a aprender',
                        style: TextStyle(
                          color: SincofarmaTheme.blueColor,
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 31,
                      ),
                      TextFormField(
                        style:
                            const TextStyle(color: SincofarmaTheme.blackColor),
                        controller: cnpjEC,
                        validator: Validatorless.cnpj('Este CNPJ não é valido'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CnpjInputFormatter()
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            ImagesConstants.cnpj,
                            width: 28.61,
                            height: 28.61,
                          ),
                          label: const Text(
                            'CNPJ DA EMPRESA (CASO SEJA ASSOCIADO)',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.31,
                      ),
                      TextFormField(
                        style:
                            const TextStyle(color: SincofarmaTheme.blackColor),
                        controller: cpfEC,
                        validator: Validatorless.cnpj('Este CPF não é valido'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CpfInputFormatter()
                        ],
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            ImagesConstants.cpf,
                            width: 28.61,
                            height: 28.61,
                          ),
                          label: const Text(
                            'CPF)',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.31,
                      ),
                      TextFormField(
                        style:
                            const TextStyle(color: SincofarmaTheme.blackColor),
                        controller: nameEC,
                        validator:
                            Validatorless.required('Preenchimento obrigatório'),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            ImagesConstants.peopleName,
                            width: 28.61,
                            height: 28.61,
                          ),
                          label: const Text(
                            'Nome Completo)',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.31,
                      ),
                      TextFormField(
                        style:
                            const TextStyle(color: SincofarmaTheme.blackColor),
                        controller: emailEC,
                        validator: Validatorless.multiple([
                          Validatorless.required('Preenchimeto obrigatório'),
                          Validatorless.email('Este e-mail não é válido'),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            ImagesConstants.email,
                            width: 28.61,
                            height: 28.61,
                          ),
                          label: const Text(
                            'E-mail)',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14.31,
                      ),
                      Watch((_) {
                        return TextFormField(
                          style: const TextStyle(
                              color: SincofarmaTheme.blackColor),
                          controller: passwordEC,
                          validator: Validatorless.multiple([
                            Validatorless.required('Preenchimeto obrigatório'),
                            Validatorless.min(
                                6, 'Digite pelo menos seis caracteres'),
                          ]),
                          keyboardType: TextInputType.text,
                          obscureText: registerController.obscurePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                registerController.obscureToggle();
                              },
                              icon: registerController.obscurePassword
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                            prefixIcon: Image.asset(
                              ImagesConstants.block,
                              width: 28.61,
                              height: 28.61,
                            ),
                            label: const Text(
                              'Senha)',
                            ),
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 14.31,
                      ),
                      Watch(
                        (_) {
                          return TextFormField(
                            style: const TextStyle(
                                color: SincofarmaTheme.blackColor),
                            controller: confirmPasswordEC,
                            validator: Validatorless.multiple([
                              Validatorless.required(
                                  'Preenchimeto obrigatório'),
                              Validatorless.compare(
                                  passwordEC, 'As senhas não coincidem'),
                            ]),
                            keyboardType: TextInputType.text,
                            obscureText:
                                registerController.obscureConfirmPassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  registerController.obscureToggleConfirm();
                                },
                                icon: registerController.obscureConfirmPassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              ),
                              prefixIcon: Image.asset(
                                ImagesConstants.block,
                                width: 28.61,
                                height: 28.61,
                              ),
                              label: const Text(
                                'Confirme sua senha)',
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 24.73,
                      ),
                      SizedBox(
                        width: sizeOf.width * 0.8,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Cadastre-se',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Ao se inscrever, você concorda com nossos',
                          style: SincofarmaTheme.subTitleSmalldescricao,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Termo de Uso',
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Termo de uso');
                                  }),
                            const TextSpan(
                              text: ' e com a ',
                            ),
                            TextSpan(
                              text: 'Política de Privacidade.',
                              style: const TextStyle(
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Politica de privacidade');
                                },
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Já tem uma conta?',
                            style: SincofarmaTheme.titleSmallRegular,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/auth/login');
                            },
                            child: const Text(
                              'Faça login?',
                              style: SincofarmaTheme.titleSmallBold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
