import 'package:flutter/material.dart';
import 'package:app_tec_isc/widgets/matricula.dart';
import 'package:app_tec_isc/widgets/gridview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          // Imagen
          const Image(
            image: AssetImage('assets/isc.jpg'),
            width: 500,
          ),

          //Title
          const Title(),

          //Button Section
          const ButtonSection(),

          const SizedBox(height: 20),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'perfiles_page');
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0098FA),
                shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Perfil',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'identidad_page');
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0098FA),
                shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(),
              child: Text('Identidad',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'mapa_page');
            },
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0098FA),
                shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(),
              child: Text('Mapa',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ),

          // GridViewMenu
          const SizedBox(height: 20),
          //const GridMenu(),
          const SizedBox(height: 20),

          //Description
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Matrícula',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              )),

          const Text(
            'Consulta las materias a los largo de la Carrera',
            style: TextStyle(color: Colors.white70),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 20),

          const Matricula(),

          const SizedBox(height: 20),

          const CustomButtonGradient(
              destino: 'form_page',
              icon: Icons.send_rounded,
              text: 'Suscribete al Boletín del TEC'),

          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridViewMenu(),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ingeniería en Sistemas Computacionales',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Formando Ingenieros de clase Mundial',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Oferta académica',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.school, text: 'Escolarizado'),
          CustomButton(icon: Icons.schedule_outlined, text: 'Abierto'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

class CustomButtonGradient extends StatelessWidget {
  final String text;
  final IconData icon;
  final String destino;

  const CustomButtonGradient(
      {super.key,
      required this.text,
      required this.destino,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
          //Handle button press event
          onPressed: () {
            Navigator.pushNamed(context, destino);
          },
          //Contents of the button
          style: ElevatedButton.styleFrom(
            //Change font size
            foregroundColor: Colors.red,
            backgroundColor: Colors.yellow,
            textStyle: const TextStyle(
              fontSize: 22,
            ),
            //Set the padding on all sides to 30px
            padding: const EdgeInsets.all(15),
          ),
          icon: Icon(icon), //Button icon
          label: Text(text)),
    );
  } //Button label
}
