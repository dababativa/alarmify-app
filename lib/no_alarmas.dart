import 'package:first_app/MyMinutes.dart';
import 'package:first_app/alarmas.dart';
import 'package:first_app/configuracion.dart';
import 'package:flutter/material.dart';

class NoAlarms extends StatelessWidget {
  const NoAlarms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear alarma'),
        backgroundColor: const Color(0xFF003D5B),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Crear alarmas',
              style: TextStyle(fontSize: 40),
            ),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  // title: const Text(''),
                  content: Container(
                    height: 100,
                    child: Column(
                      children: const [
                        Text(
                          'Para poder crear alarmas debes primero configurar las imagenes a comparar',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('¿Deseas realizarlo ahora?'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFEEE5E9))),
                      child: const Text('NO',
                          style: TextStyle(color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Configuration()),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFEEE5E9))),
                      child: const Text(
                        'SI',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              child: const Text(
                '+',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
