import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Traducere(),
  ));
}

class Traducere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'TRADUCERE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title})
      : title = title,
        super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  late String localFilePath;
  List<String> mytext = [
    'ce_faci(romana)',
    'ce_faci(germana)',
    'cum_esti?(romana)',
    'cum_esti?(germana)',
    'ma_numesc(romana)',
    'ma_numesc(germana)',
    'salut(romana)',
    'salut(germana)',
    'sunt_bine(romana)',
    "sunt_bine(germana)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.blue[800]),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: mytext.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {
              switch (mytext[index]) {
                case 'ce_faci(romana)':
                  {
                    audioCache.play('ce_faci(romana).mp3');
                  }
                  break;

                case 'ce_faci(germana)':
                  {
                    audioCache.play('ce_faci(germana).mp3');
                  }
                  break;
                case 'cum_esti?(romana)':
                  {
                    audioCache.play('ccum_esti?(romana).mp3');
                  }
                  break;

                case 'cum_esti?(germana)':
                  {
                    audioCache.play('cum_esti?(germana).mp3');
                  }
                  break;

                case 'ma_numesc(romana)':
                  {
                    audioCache.play('ma_numesc(romana).mp3');
                  }
                  break;

                case 'ma_numesc(germana)':
                  {
                    audioCache.play('ma_numesc(germana).mp3');
                  }
                  break;

                case 'salut(romana)':
                  {
                    audioCache.play('salut(romana).mp3');
                  }
                  break;

                case 'salut(germana)':
                  {
                    audioCache.play('salut(germana).mp3');
                  }
                  break;
                case 'sunt_bine(romana)':
                  {
                    audioCache.play('sunt_bine(romana).mp3');
                  }
                  break;

                case 'sunt_bine(germana)':
                  {
                    audioCache.play('sunt_bine(germana).mp3');
                  }
                  break;
              }
            },
            child: Text(
              mytext[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue[800], fontSize: 20.0),
            ),
          );
        },
      ),
    );
  }
}
