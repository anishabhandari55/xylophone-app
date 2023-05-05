import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Column(children: [
      differentsound(number: 1, name: 'Owl', color: Colors.red.shade300),
      differentsound(number: 2, name: 'Dog', color: Colors.orange.shade300),
      differentsound(number: 3, name: 'CatI', color: Colors.yellow.shade300),
      differentsound(number: 4, name: 'CatII', color: Colors.blue.shade300),
      differentsound(number: 5, name: 'Bull', color: Colors.green.shade300),
      differentsound(number: 6, name: 'Elephant', color: Colors.indigo.shade300),
      differentsound(number: 7, name: 'Bird', color: Colors.grey.shade500),
    ],)
    
    
     ));
    
  }

  Expanded differentsound({required int number, required String name, required Color color}) {
    return Expanded(
      child: Container(
        height: 30.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: color,
        ),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),

        child: TextButton(
          
          onPressed: () {
        AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$number.wav"),
      showNotification: true,
    );
      },
      child: Text('$name',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontFamily: 'Castoro',
        fontWeight: FontWeight.bold,
      ),
      ),),
      ),
    );
  }
}