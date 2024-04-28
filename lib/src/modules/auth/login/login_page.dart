import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:sincofarma/src/constants/images_constants.dart';
import 'package:sincofarma/src/modules/auth/widgets/auth_app_bar.dart';
import 'package:validatorless/validatorless.dart';

import '../../../helpers/messages.dart';
import '../../../theme/sincofarma_theme.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final controller = Injector.get<LoginController>();

  final FocusNode buttonEnterFocus = FocusNode();

  @override
  void initState() {
    messageListener(controller);
    effect(() {
      if (controller.logged) {
        // Navigator.of(context).pushReplacementNamed('/home');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    buttonEnterFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: AuthAppBar(),
            ),
            const SizedBox(
              height: 100,
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
                      BorderedText(
                        strokeWidth: 2,
                        strokeColor: SincofarmaTheme.blackColor,
                        child: const Text(
                          'Entre para continuar',
                          style: TextStyle(
                            color: SincofarmaTheme.blueColor,
                            fontFamily: 'Inter',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        style:
                            const TextStyle(color: SincofarmaTheme.blackColor),
                        controller: emailEC,
                        validator: Validatorless.multiple([
                          Validatorless.required('E-mail obrigatório'),
                          Validatorless.email('E-mail inválido')
                        ]),
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(
                            ImagesConstants.peopleName,
                            width: 28.61,
                            height: 28.61,
                          ),
                          label: const Text('CPF ou E-mail'),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Watch(
                        (_) {
                          return TextFormField(
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(buttonEnterFocus);
                            },
                            style: const TextStyle(
                                color: SincofarmaTheme.blackColor,
                                fontFamily: 'Inter',
                                fontSize: 18),
                            obscureText: controller.obscurePassword,
                            controller: passwordEC,
                            validator:
                                Validatorless.required('Senha obrigatória'),
                            decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                ImagesConstants.block,
                                width: 28.61,
                                height: 28.61,
                              ),
                              label: const Text('Senha'),
                              suffixIcon: IconButton(
                                onPressed: () => controller.obscureToggle(),
                                icon: controller.obscurePassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 6.94,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Esqueceu sua senha?',
                              style: SincofarmaTheme.titleSmallBold),
                        ),
                      ),
                      const SizedBox(
                        height: 59,
                      ),
                      SizedBox(
                        width: sizeOf.width * 0.8,
                        height: 48,
                        child: ElevatedButton(
                          focusNode: buttonEnterFocus,
                          onPressed: () {
                            final valid =
                                formKey.currentState?.validate() ?? false;

                            if (valid) {
                              controller.login(emailEC.text, passwordEC.text);
                              Navigator.of(context)
                                  .pushReplacementNamed('/home/next-courses');
                            }
                          },
                          child: const Text(
                            'Entrar',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Não tem uma conta?',
                            style: SincofarmaTheme.titleSmallRegular,
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacementNamed('/auth/register'),
                            child: const Text(
                              'Cadastre-se?',
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
