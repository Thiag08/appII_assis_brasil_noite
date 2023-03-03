import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Charmander #004"),
        leading: Image.asset("assets/logo.png"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                  "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda."),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // 1° Linha
                    Row(
                      children: [
                        // 1° Linha - 1° Coluna
                        Column(
                          children: [
                            titleText(
                              text: "Altura",
                              context: context,
                            ),
                          ],
                        ),
                        // 1° Linha - 2° Coluna
                        const Column(
                          children: [],
                        ),
                      ],
                    ),
                    // 2° Linha
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } // Build

  Text titleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}
