import 'package:flutter/material.dart';

class Identidad extends StatelessWidget {
  const Identidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identidad'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildIdentidadCard(),
          _buildEspecialidadCard(),
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

  Widget _buildIdentidadCard() {
    return const Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Identidad',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Misión:\nFormar recurso humano integral en el área de ingeniería en sistemas computacionales, con actitud crítica, analítica, creativa e innovadora con valores éticos y humanos que satisfagan las necesidades del entorno social y laboral, contribuyendo en el desarrollo científico y tecnológico.\n',
            ),
            Text(
              'Visión:\nSer reconocido como un programa con alto nivel académico comprometido con la investigación, desarrollo científico, tecnológico, económico y social encaminado hacia las tendencias de las tecnologías de información y telecomunicaciones de vanguardia mundial para el desarrollo de habilidades y aptitudes que faciliten a sus egresados la incursión en el mercado laboral nacional e internacional.\n',
            ),
            Text(
              'Objetivo del programa:\nFormar profesionistas líderes con visión estratégica y amplio sentido ético; capaces de diseñar, desarrollar, implementar y administrar tecnología computacional para aportar soluciones innovadoras en beneficio de la sociedad; en un contexto global, multidisciplinario y sostenible.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEspecialidadCard() {
    return const Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Campo de especialidad “Computo Movil Inteligente”',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Objetivo de la Especialidad:\n“Formar Profesionales en Ingeniería en Sistemas Computacionales con una visión innovadora y sólida en el desarrollo de aplicaciones orientada a servicios para dispositivos móviles para proponer diferentes alternativas de solución acordes a las necesidades y problemáticas de la región.”',
            ),
          ],
        ),
      ),
    );
  }
}