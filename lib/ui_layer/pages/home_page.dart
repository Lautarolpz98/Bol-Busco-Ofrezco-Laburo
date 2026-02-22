import 'package:bol_app/ui_layer/widgets/navigator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBarWidget(),
      body: Center(child: Text('contenido principal')),
    );
  }
}
