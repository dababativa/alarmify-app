import 'package:first_app/crear_alarma.dart';
import 'package:flutter/material.dart';

class Alarms extends StatelessWidget {
  const Alarms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alarmas'),
        backgroundColor: const Color(0xFF003D5B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      '10:02 AM',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      'Despertador',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Switch(
                  value: true,
                  onChanged: (value) => {},
                  activeColor: const Color(0xFF003D5B),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
