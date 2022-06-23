import 'package:flutter/material.dart';

aboutMeView() => Padding(
    padding: const EdgeInsets.all(12),
    child: Stack(children: [
      Align(
        alignment: Alignment.topRight,
        child: Image.asset(
          "lib/assets/img/image.png",
          fit: BoxFit.contain,
        ),
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'About Me',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'New Times Roman',
                  color: Colors.white),
            ),
            Text(
              '   C# Unity3d game developer moving to web development with dart flutter,\n\n'
              'Since 2016 working on game design.\n\n'
              '   looking for new technologies, I started studying dart flutter in 2020,\n\n'
              'currently studying Flutter Framework, Dart lang, API integration,\n\n'
              'MVC architecture and clean code concepts.',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'New Times Roman',
                  color: Colors.grey),
            )
          ]),
    ]));
