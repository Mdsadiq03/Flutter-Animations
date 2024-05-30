import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation<double> _sizeAnimation;
  late CurvedAnimation _curve;
  bool isFav = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    _colorAnimation = ColorTween(
      begin: Colors.grey[400],
      end: Colors.red,
    ).animate(_curve);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 35),
          weight: 50,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 35, end: 30),
          weight: 50,
        ),
      ],
    ).animate(_curve);

    
    // _controller.addListener(() {
    //   print(_controller.value);
    // });

    _controller.addStatusListener((status) { 
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
          ),
          onPressed: () {
            isFav ? _controller.reverse() : _controller.forward();
          },
        );
      },
      
    );
  }
}
