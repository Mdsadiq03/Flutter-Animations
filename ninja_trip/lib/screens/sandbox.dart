import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 250;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => setState(
                () => _margin = 50,
              ),
              child: const Text('Animate Margin'),
            ),
            ElevatedButton(
              onPressed: () => setState(
                () => _width = 400,
              ),
              child: const Text('Animate Width'),
            ),
            ElevatedButton(
              onPressed: () => setState(
                () => _color = Colors.purple,
              ),
              child: const Text('Animate Color'),
            ),
            ElevatedButton(
              onPressed: () => setState(
                () => _opacity = 0,
              ),
              child: const Text('Animate Opacity'),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: Text(
                'hide me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
