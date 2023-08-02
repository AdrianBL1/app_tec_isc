import 'package:flutter/material.dart';

class PerfilesView extends StatelessWidget {
  const PerfilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfiles'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildPerfilCard(
            title: 'Perfil de Ingreso',
            content: [
              'Habilidad en el razonamiento lógico matemático de problemas que impliquen el diseño, planteamiento y solución de problemas reales cotidianos.',
              'Gusto por las nuevas tendencias en computación y tecnología de información.',
              'Disposición permanente al autoaprendizaje.',
              'Habilidad de comunicación oral y escrita.',
              'Habilidad y responsabilidad para trabajar en equipo.',
              'Creatividad.',
            ],
          ),
          _buildPerfilCard(
            title: 'Perfil de Egreso',
            content: [
              'Implementa aplicaciones computacionales para solucionar problemas de diversos contextos, integrando diferentes tecnologías, plataformas o dispositivos.',
              'Diseña, desarrolla y aplica modelos computacionales para solucionar problemas, mediante la selección y uso de herramientas matemáticas.',
              'Diseña e implementa interfaces para la automatización de sistemas de hardware y desarrollo del software asociado.',
              'Coordina y participa en equipos multidisciplinarios para la aplicación de soluciones innovadoras en diferentes contextos.',
              'Diseña, implementa y administra bases de datos optimizando los recursos disponibles, conforme a las normas vigentes de manejo y seguridad de la información.',
              'Desarrolla y administra software para apoyar la productividad y competitividad de las organizaciones cumpliendo con estándares de calidad.',
              'Evalúa tecnologías de hardware para soportar aplicaciones de manera efectiva.',
              'Detecta áreas de oportunidad empleando una visión empresarial para crear proyectos aplicando las Tecnologías de la Información y Comunicación.',
              'Diseña, configura y administra redes de computadoras para crear soluciones de conectividad en la organización, aplicando las normas y estándares vigentes.',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPerfilCard({required String title, required List<String> content}) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content.map((item) => _buildListItem(item)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, size: 14.0, color: Colors.green),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}