import 'package:bol_app/ui_layer/pages/home_page.dart';
import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const NavigationBarWidget({super.key});

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // altura estándar de la AppBar
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  // Variables para el efecto hover
  bool _isHovered1 = false;
  bool _isHovered2 = false;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Texto 1 con hover y navegación
                MouseRegion(
                  onEnter: (_) => setState(() => _isHovered1 = true),
                  onExit: (_) => setState(() => _isHovered1 = false),
                  child: GestureDetector(
                    onTap: () {
                      // Redirige al hacer clic en el texto 1
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ), // Reemplaza con tu página
                      );
                    },
                    child: Text(
                      'Texto 1',
                      style: TextStyle(
                        color: _isHovered1
                            ? Colors.blue
                            : Colors.black, // Cambia de color al hacer hover
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                // Texto 2 con hover y navegación
                MouseRegion(
                  onEnter: (_) => setState(() => _isHovered2 = true),
                  onExit: (_) => setState(() => _isHovered2 = false),
                  child: GestureDetector(
                    onTap: () {
                      // Redirige al hacer clic en el texto 2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ), // Reemplaza con tu página
                      );
                    },
                    child: Text(
                      'Texto 2',
                      style: TextStyle(
                        color: _isHovered2
                            ? Colors.blue
                            : Colors.black, // Cambia de color al hacer hover
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text('Ingresar'),
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
