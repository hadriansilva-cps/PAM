import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = TextEditingController(text: "");
    final passowordController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("Login"),
          Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  TextField(
                    controller: usuarioController,
                    decoration: const InputDecoration(
                      labelText: "Usuario",
                    ),
                  ),
                  TextField(
                    controller: passowordController,
                    decoration: const InputDecoration(
                      labelText: "Senha",
                    ),
                    obscureText: true,
                  ),
                  Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 10, bottom: 5),
                      child: ElevatedButton(
                          onPressed: () {
                            final usuario = usuarioController.text;
                            final senha = passowordController.text;
                            var message = "Credenciais inválidas!";

                            if (usuario == "admin" && senha == "102030") {
                              message = "Seja bem vindo, administrador ";
                            }
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message),
                              ),
                            );
                          },
                          child: const Text("Entrar"))),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Esqueci a senha"),
                      Text("Cadastrar"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
