import 'package:flutter/material.dart';

class Matricula extends StatelessWidget {
  const Matricula({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: const Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_one),
                title: Text('1er Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Cálculo Diferencial'),
                    subtitle: Text('ACF-0901'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Fundamentos de Programación'),
                    subtitle: Text('AED-1285'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Fundamentos de Investigación'),
                    subtitle: Text('ACC-0906'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.numbers),
                    title: Text('Matemáticas Discretas'),
                    subtitle: Text('AEF-1041'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.task),
                    title: Text('Taller de Administración'),
                    subtitle: Text('SCH-10246'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.people),
                    title: Text('Taller de Ética'),
                    subtitle: Text('ACA-0907'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_two),
                title: Text('2do Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Cálculo Integral'),
                    subtitle: Text('ACF-0902'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Programación Orientada a Objetos'),
                    subtitle: Text('AED-1286'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.calculate),
                    title: Text('Probabilidad y Estadística'),
                    subtitle: Text('AEF-1052'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.science),
                    title: Text('Química'),
                    subtitle: Text('AEC-1058'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Algebra Lineal'),
                    subtitle: Text('ACF-0903'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.calculate),
                    title: Text('Contabilidad Financiera'),
                    subtitle: Text('AEC-1008'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_3),
                title: Text('3er Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Cálculo Vectorial'),
                    subtitle: Text('ACF-0904'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.view_comfortable_rounded),
                    title: Text('Estructura de Datos'),
                    subtitle: Text('AED-1026'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.fitbit_sharp),
                    title: Text('Física General'),
                    subtitle: Text('SCF-1006'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.numbers),
                    title: Text('Investigación de Operaciones'),
                    subtitle: Text('SCC-1013'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.bubble_chart),
                    title: Text('Sistemas Operativos'),
                    subtitle: Text('AEC-1061'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.business_sharp),
                    title: Text('Cultura Empresarial'),
                    subtitle: Text('SCC-1005'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.nature),
                    title: Text('Desarrollo Sustentable'),
                    subtitle: Text('ACD-0908'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_4),
                title: Text('4to Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.warning),
                    title: Text('Ecuaciones Diferenciales'),
                    subtitle: Text('ACF-0905'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Lenguajes y Autómatas I'),
                    subtitle: Text('SCD-1015'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.window),
                    title: Text('Tópicos Avanzados de Programación'),
                    subtitle: Text('SCD-1027'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.data_object_sharp),
                    title: Text('Fundamentos de Bases de Datos'),
                    subtitle: Text('AEF-1031'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.task),
                    title: Text('Taller de Sistemas Operativos'),
                    subtitle: Text('SCA-1026'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.electric_bolt),
                    title: Text('Principios Eléctricos y Aplicaciones Digitales'),
                    subtitle: Text('SCD-1018'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_5),
                title: Text('5to Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Lenguajes y Autómatas II'),
                    subtitle: Text('SCD-1016'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Fundamentos de Telecomunicaciones'),
                    subtitle: Text('AEC-1034'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Taller de Bases de Datos'),
                    subtitle: Text('SCA-1025'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.numbers),
                    title: Text('Simulación'),
                    subtitle: Text('SCD-1022'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.task),
                    title: Text('Fundamentos de Ingeniería de Software'),
                    subtitle: Text('SCC-1007'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Arquitectura de Computadoras'),
                    subtitle: Text('SCD-1003'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.calculate),
                    title: Text('Métodos Numéricos'),
                    subtitle: Text('SCC-1017'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.looks_6),
                title: Text('6to Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Programación Lógica y Funcional'),
                    subtitle: Text('SCC-1019'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.computer),
                    title: Text('Redes de Computadora'),
                    subtitle: Text('SCD-1021'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Administración de Bases de Datos'),
                    subtitle: Text('SCB-1001'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.numbers),
                    title: Text('Graficación'),
                    subtitle: Text('SCC-1010'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.task),
                    title: Text('Ingeniería de Software'),
                    subtitle: Text('SCD-1011'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.interests),
                    title: Text('Lenguajes de Interfaz'),
                    subtitle: Text('SCC-1014'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.seven_k),
                title: Text('7mo Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.blur_circular_outlined),
                    title: Text('Inteligencia Artificial'),
                    subtitle: Text('SCC-1012'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.broadcast_on_personal_outlined),
                    title: Text('Conmutación y Enrutamiento de Redes de Datos'),
                    subtitle: Text('SCD-1004'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.web),
                    title: Text('Programación Web'),
                    subtitle: Text('AEB-1055'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.phone_android),
                    title: Text('Desarrollo de aplicaciones móviles'),
                    subtitle: Text('CDB-1901'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.science),
                    title: Text('Fundamentos a la ciencia de datos'),
                    subtitle: Text('CDD-1902'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Taller de Investigación I'),
                    subtitle: Text('ACA-0909'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.broadcast_on_home_outlined),
                    title: Text('Sistemas Programables'),
                    subtitle: Text('SCC-1023'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.eight_k),
                title: Text('8vo Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.account_balance_sharp),
                    title: Text('Gestión de Proyectos de Software'),
                    subtitle: Text('SCG-1009'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.insert_chart_outlined_outlined),
                    title: Text('Administración de Redes'),
                    subtitle: Text('SCA-1002'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.web),
                    title: Text('Desarrollo web avanzado'),
                    subtitle: Text('CDB-1905'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.phone_android),
                    title: Text('Desarrollo de aplicaciones móviles avanzadas'),
                    subtitle: Text('CDB-1903'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.science),
                    title: Text('Ciencia de datos'),
                    subtitle: Text('CDD-1904'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Taller de Investigación II '),
                    subtitle: Text('ACA-0910'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: ExpansionTile(
                leading: Icon(Icons.nine_k),
                title: Text('9no Semestre'),
                children: <Widget>[
                  ListTile(  
                    leading: Icon(Icons.star),
                    title: Text('Residencias Profesionales'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.person_add_alt_1_sharp),
                    title: Text('Servicios Social'),
                  ),
                  ListTile(  
                    leading: Icon(Icons.book),
                    title: Text('Otros créditos'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
