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
      //degradado
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 173, 217, 253),
              const Color.fromARGB(255, 157, 222, 226),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        //degradado
        child: Row(
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
                        '''BOL (Busco / Ofrezco Laburo) es una plataforma que conecta personas que necesitan trabajar con quienes buscan contratar servicios en su comunidad.
Creamos un entorno simple, directo y confiable para generar oportunidades reales de empleo local.''',
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
                              'Oportunidades Cercanas',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Conectamos vecinos con vecinos. Creemos que muchas oportunidades están más cerca de lo que imaginamos, solo necesitan visibilidad',
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
                              'Confianza y Transparencia',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Implementamos un sistema de reputación que promueve responsabilidad, cumplimiento y relaciones laborales más seguras.',
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        '¿Nuestro Objetivo?',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        '''Queremos que cualquier persona pueda acceder a oportunidades laborales de manera simple, justa y transparente.
Buscamos transformar la forma en que se consigue trabajo, poniendo a las personas en el centro.''',
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
                              'Trabajo al Alcance de Todos',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Reducimos barreras tecnológicas para que publicar o encontrar empleo sea rápido y accesible, sin importar la experiencia digital',
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
                              'Crecer Juntos',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Aspiramos a integrar herramientas que impulsen el desarrollo económico, la formalización voluntaria y el crecimiento profesional sostenible.',
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
          ],
        ),
      ),
    );
  }
}
