import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final assetsAudioPlayer = AssetsAudioPlayer();


   designFunction({required int soundnumber,required Color color})
  {
    return Expanded(
        child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(color)),
            onPressed: () {
              assetsAudioPlayer.open(Audio('assets/note$soundnumber.wav'));
              assetsAudioPlayer.play();
            },
            child: Text('')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              designFunction(soundnumber: 1, color:Colors.red),
              designFunction(soundnumber: 2, color:Colors.orange),
              designFunction(soundnumber: 3, color:Colors.yellow),
              designFunction(soundnumber: 4, color:Colors.green),
              designFunction(soundnumber: 5, color:Colors.teal),
              designFunction(soundnumber: 6, color:Colors.blue),
              designFunction(soundnumber: 7, color:Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
