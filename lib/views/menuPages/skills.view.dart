import 'package:flutter/material.dart';

skillsView() => Center(
      child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(12.0),
          children: [
            const Center(
                child: Text(
              'My Current Skills',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Times New Roman',
                color: Colors.white,
              ),
            )),
            const Divider(),
            Card(
                child: Column(children: [
              const Divider(),
              const Text(
                'Coding',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Center(child: _skillCard('Flutter', 0.5)),
              Center(child: _skillCard('JavaScript', 0.35)),
              Center(child: _skillCard('C#', 0.65))
            ])),
            Card(
                child: Column(children: [
              const Divider(),
              const Text(
                'Languages',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Center(child: _skillCard('Brazilian Portuguese', 1)),
              Center(child: _skillCard('English', 0.6)),
            ]))
          ]),
    );

_skillCard(String skill, double level) => Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
      side: BorderSide(
        color: Colors.black.withOpacity(0.5),
        width: 2,
      ),
    ),
    child: ListTile(
      title: Center(
          child: Text(
        skill,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
      )),
      subtitle: LinearProgressIndicator(
        color: Colors.blue,
        value: level,
        minHeight: 12,
      ),
    ));
