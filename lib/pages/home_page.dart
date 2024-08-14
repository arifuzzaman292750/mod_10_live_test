import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        foregroundColor: Colors.white,
        title: const Text('Text Styling App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Flutter!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
