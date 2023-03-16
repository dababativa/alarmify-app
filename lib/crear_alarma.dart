import 'package:first_app/MyMinutes.dart';
import 'package:first_app/alarmas.dart';
import 'package:flutter/material.dart';

class CreateAlarm extends StatelessWidget {
  const CreateAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear alarma'),
        backgroundColor: const Color(0xFF003D5B),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 1.2,
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 12,
                  builder: (context, index) => MyMinutes(
                    mins: index + 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 70,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 1.2,
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) => MyMinutes(
                    mins: index,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 70,
              child: ListWheelScrollView(
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 1.2,
                physics: const FixedExtentScrollPhysics(),
                children: const [
                  Center(
                    child: Text(
                      'AM',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      'PM',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Alarms()),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFEEE5E9))),
              child: const Text('Crear'),
            )
          ],
        ),
      ),
    );
  }
}
