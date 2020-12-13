import 'dart:async';

import 'package:flutter/material.dart';
import 'package:satiate_task/choose_best_doctor.dart';

class Custom_Animation extends StatefulWidget {
  @override
  _Custom_AnimationState createState() => _Custom_AnimationState();
}

class _Custom_AnimationState extends State<Custom_Animation> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<Offset> _animation;
  double current_x=-1;
  double current_y=-1;
  double final_x=-1;
  double final_y=0;

  void initState()
  {
    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 4500));
    super.initState();
    _animationController.forward();
    _animation = Tween<Offset>(
      begin: const Offset(0.04, -1),
      end: const Offset(0.04, 0.33),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    ));
    Timer(Duration(seconds: 6),() =>  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => ChooseBestDoctor()),
    ));
  }

  void dispose()
  {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SlideTransition(
        position: _animation,
        child: Align(
            alignment: Alignment(current_x,current_y),
            child: Image.asset('assets/final_logo.png')),
      ),
    );
  }
}
