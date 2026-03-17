import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  final EdgeInsets boxPadding = const EdgeInsets.all(16);
  final SizedBox gapSmall = const SizedBox(height: 10);
  final SizedBox gapMedium = const SizedBox(height: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 122, 243),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1A1A2E),
              Color(0xFF16213E),
              Color(0xFF0F3460),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: boxPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Container(
                  padding: boxPadding,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueGrey.shade700,
                        Colors.blueGrey.shade900,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.network(
                    'https://picsum.photos/300',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                gapSmall,

                Container(
                  padding: boxPadding,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF8E2DE2),
                        Color(0xFF4A00E0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "What image is that",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                gapMedium,

                Container(
                  padding: boxPadding,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFB75E),
                        Color(0xFFED8F03),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildIconText(Icons.fastfood, "Food"),
                      buildIconText(Icons.landscape, "Scenery"),
                      buildIconText(Icons.people, "People"),
                    ],
                  ),
                ),

                gapMedium,

                Container(
                  padding: boxPadding,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF11998E),
                        Color(0xFF38EF7D),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Counter here: $counter",
                        style: const TextStyle(color: Colors.white),
                      ),

                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: incrementCounter,
                          borderRadius: BorderRadius.circular(8),
                          splashColor: Colors.white.withOpacity(0.3),
                          hoverColor: Colors.white.withOpacity(0.2),

                          child: Ink(
                            decoration: BoxDecoration(
                              color: Colors.tealAccent, // 🔥 NO gradient
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(Icons.add, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconText(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}