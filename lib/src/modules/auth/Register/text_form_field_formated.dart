import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';


Widget preview() {
  return const TextFormFieldFormated();
}

class TextFormFieldFormated extends StatelessWidget {
  const TextFormFieldFormated({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: Validatorless.multiple([
            Validatorless.required('CPF é obrigatório'),
            Validatorless.cpf('Este CPF não é válido')
          ]),
          keyboardType: TextInputType.number,
          inputFormatters: [CpfInputFormatter()],
          decoration: const InputDecoration(
            label: Text(
              'CPF',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ),
        TextFormField(
          validator: Validatorless.required(
            'Preenchimento obrigatório',
          ),
          decoration: const InputDecoration(
            label: Text(
              'Nome Completo)',
            ),
          ),
        ),
        TextFormField(
          validator: Validatorless.multiple([
            Validatorless.required('Preenchimeto obrigatório'),
            Validatorless.email('Este e-mail não é válido'),
          ]),
          decoration: const InputDecoration(
            label: Text(
              'E-mail)',
            ),
          ),
        ),
        TextFormField(
          validator: Validatorless.multiple([
            Validatorless.required('Preenchimeto obrigatório'),
            Validatorless.min(6, 'Digite pelo menos seis caracteres'),
          ]),
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.visibility)),
            label: const Text(
              'Senha)',
            ),
          ),
        ),
      ],
    );
  }
}
