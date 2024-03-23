import 'package:flutter/material.dart';
import 'package:xd/main.dart';

void main() => runApp(pagInicio());

class pagInicio extends StatelessWidget {
  const pagInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inicio",
      home: PagePrin(),
    );
  }
}

class PagePrin extends StatelessWidget {
  const PagePrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
    );
  }
}