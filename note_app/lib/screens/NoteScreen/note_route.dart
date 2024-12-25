import 'package:flutter/material.dart';

class NoteRoute extends StatefulWidget {
  const NoteRoute({super.key});

  @override
  State<NoteRoute> createState() => _NoteRouteState();
}

class _NoteRouteState extends State<NoteRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Take note'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Feature in development',
              ),
            ],
          ),
        ));
  }
}
