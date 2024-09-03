/*import 'package:dia_friend/save_glucose_level_screen/save_glucose_screen.dart';
import 'package:flutter/material.dart';
import 'package:dia_friend/save_glucose_level_screen/saveGlucose.dart';

class glucoseScreen extends StatefulWidget {
  const glucoseScreen({Key? key}) : super(key: key);
  @override
  _glucoseScreen createState() => _glucoseScreen();
}

class _glucoseScreen extends State<glucoseScreen> {
  TextEditingController _glucoseLevel = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Glucose Level'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          SaveGlucose(glucose: _glucose.text)),
                );
              },
              child: Text('Go to Welcome Page'))
        ],
      ),
    );
  }
}

class _glucose {}
*/