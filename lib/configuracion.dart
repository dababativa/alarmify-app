import 'package:first_app/crear_alarma.dart';
import 'package:flutter/material.dart';

class Configuration extends StatelessWidget {
  const Configuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        backgroundColor: const Color(0xFF003D5B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Toma fotos de 10 objetos que tengas a la disposición en tu casa. Debes tomarles una foto despues entonces no los pierdas.',
                  textAlign: TextAlign.center,
                ),
                const Icon(
                  Icons.camera_alt,
                  size: 100,
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFEEE5E9))),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAlarm()),
                  ),
                  child: const Text(
                    'Tomar fotos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
