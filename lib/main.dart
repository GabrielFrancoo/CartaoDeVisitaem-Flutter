import 'package:flutter/material.dart';

void main() {
  runApp(const CartaoVisitaVirtual());
}

class CartaoVisitaVirtual extends StatelessWidget {
  const CartaoVisitaVirtual({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cartão de visita virtual',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const CartaoVisitaVirtualPage(),
    );
  }
}

class CartaoVisitaVirtualPage extends StatelessWidget {
  const CartaoVisitaVirtualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Cartão de Visita',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 142, 196, 241),
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.blueAccent,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(16),
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D4D03AQEKLTINiFbT7A/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1703727786603?e=1753315200&v=beta&t=7rXDw0JZiwthDj8g2bhU2vdttTk-CMW5cetr97OESbo',
                  ),
                  radius: 75,
                ),
                SizedBox(height: 10),
                Text(
                  'Gabriel Franco',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Desenvolvedor de Sistemas',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Divider(
                  color: Colors.black45,
                  thickness: 2,
                  height: 30,
                ),
                Text(
                  'Hard Skils:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    SkillChip(skillName: 'HTML'),
                    SkillChip(skillName: 'CSS'),
                    SkillChip(skillName: 'JS'),
                    SkillChip(skillName: 'DART'),
                    SkillChip(skillName: 'C'),
                    SkillChip(skillName: 'C++'),
                    SkillChip(skillName: 'JAVA'),
                    SkillChip(skillName: 'FLUTTER'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String skillName;
  const SkillChip({super.key, required this.skillName});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        skillName,
        style: const TextStyle(color: Colors.black87),
      ),
      backgroundColor: Color.fromARGB(255, 221, 237, 252),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }
}