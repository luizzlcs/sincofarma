import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    // const appBar = kToolbarHeight;

    print('altura: ${mediaQuery.size.height}');
    print('largura: ${mediaQuery.size.width}');
    print('appBar: $kToolbarHeight');
    print('top: $statusBar');

    return Scaffold(
        appBar: AppBar(
          title: const Text('Editar Pefil'),
        ),
        body: Column(
          children: [
            Container(
              height: heightBody * .50,
              color: Colors.red,
            ),
            Container(
              height: heightBody * .50,
              color: Colors.blue,
            )
          ],
        ));
  }
}
