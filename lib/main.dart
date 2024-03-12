import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Image.asset(
          "lib/assets/image/Kungfusao.jpg",
          height: 500,
          fit: BoxFit.fitHeight,
        )
      ]),
    );
  }
}
