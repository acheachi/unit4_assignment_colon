import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile - John Achilles V. Colon',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOHN ACHILLES V. COLON'),
      ),
      body: Container(
        color: Colors.blue[100],
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            const Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'John Achilles V. Colon',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Bachelor of Science in Information Technology Student',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Spacer(),

            GridView.count(
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              crossAxisCount: 1,
              childAspectRatio: 23 / 1, 
              children: const <Widget>[
                InfoDisplay(icon: Icons.cake, title: 'Birthdate', data: '   May 25, 2004'),
                InfoDisplay(icon: Icons.location_on, title: 'Address', data: '   Mandurriao, Iloilo City, Philippines'),
                InfoDisplay(icon: Icons.school, title: 'Education', data: '   West Visayas State University'),
                InfoDisplay(icon: Icons.email, title: 'Email', data: '   johnachilles.colon@wvsu.edu.ph'),
                InfoDisplay(icon: Icons.phone_android, title: 'Phone Number', data: '   +639951531689'),
                InfoDisplay(icon: Icons.info, title: 'Hobbies', data: '   Volleyball, Pokemon, Reading, Watching Anime'),
              ],
            ),
            const SizedBox(height: 20),
            const Spacer(),

            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Biography',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(height: 8), 
                            Text(
                              'My name is John Achilles V. Colon, a Bachelor of Science in Information Technology student in West Visayas State University. '
                              'I am 20 years old and I was born on May 25, 2004 at Iloilo Mission Hospital. My hobbies include reading about new technologies and updates on the tech industry. '
                              'In my free time, I either play old Pokemon games, play volleyball, or watch whatever anime is trending currently.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
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

class InfoDisplay extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  const InfoDisplay({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4), 
      child: Container(
        padding: const EdgeInsets.all(7), 
        decoration: BoxDecoration(
          color: Colors.blue[50], 
          border: Border.all(color: Colors.blue), 
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28, color: Colors.blue),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    data,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}