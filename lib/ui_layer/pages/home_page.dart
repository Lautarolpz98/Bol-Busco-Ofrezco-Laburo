import 'package:bol_app/ui_layer/widgets/navigator.dart';
import 'package:flutter/material.dart';

// Asegúrate de tener tu widget de navegación importado, por ejemplo:
// import 'navigation_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBarWidget(), // Tu widget de navegación personalizado
      body: Row(
        children: [
          // Lado izquierdo con el texto y las tarjetas
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '¿Quiénes somos?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      'Aquí va un texto breve sobre la empresa, misión, visión, etc.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 32),

                  // Card para "Doy laburo"
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Doy laburo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Aquí puedes poner una breve descripción sobre lo que significa dar trabajo o cualquier cosa relacionada.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Card para "Busco laburo"
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Busco laburo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Aquí puedes poner una breve descripción sobre lo que significa buscar trabajo o cualquier cosa relacionada.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Lado derecho con la imagen
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/your_image.jpg', // Reemplaza con la ruta de tu imagen
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
