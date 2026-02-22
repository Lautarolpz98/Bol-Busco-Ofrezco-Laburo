import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const NavigationBarWidget({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo a la izquierda
            Image.asset(
              'assets/logo.png', // Asegúrate de tener tu logo en la carpeta assets
              width: 50,
            ),
            // Textos de botones en el medio
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Acción para el primer texto botón
                  },
                  child: Text('Texto 1', style: TextStyle(color: Colors.black)),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    // Acción para el segundo texto botón
                  },
                  child: Text('Texto 2', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            // Botones de Ingresar y Registrar a la derecha
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Acción para Ingresar
                  },
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Acción para Registrar
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text('Registrar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
