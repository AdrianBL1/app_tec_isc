import 'package:flutter/material.dart';

class GridViewMenu extends StatelessWidget {
  final List<GridItem> items = [
    GridItem('Misión', Icons.assignment, 'mision', Colors.blue),
    GridItem('Visión', Icons.visibility, 'vision', Colors.green),
    GridItem('Objetivo del programa', Icons.check_circle, 'objetivo', Colors.orange),
    GridItem('Campo de acción', Icons.location_on, 'campo', Colors.purple),
  ];

  GridViewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: [
          
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, items[index].routeName);
                  },
                  child: Card(
                    elevation: 5,
                    color: items[index].color,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(items[index].icon, color: Colors.white),
                          const SizedBox(height: 8),
                          Text(
                            items[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem {
  final String title;
  final IconData icon;
  final String routeName;
  final Color color;

  GridItem(this.title, this.icon, this.routeName, this.color);
}
