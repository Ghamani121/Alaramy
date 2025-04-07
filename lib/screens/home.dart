import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AlarmHomePage extends StatefulWidget {
  const AlarmHomePage({super.key});

  @override
  State<AlarmHomePage> createState() => _AlarmHomePageState();
}

class _AlarmHomePageState extends State<AlarmHomePage> {
  final AudioPlayer _player = AudioPlayer();

  Future<void> _startAlarm() async {
    await _player.setReleaseMode(ReleaseMode.loop);
    await _player.play(AssetSource('assets/cloudscape.mp3'));
  }

  Future<void> _stopAlarm() async {
    await _player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess Alarm Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _startAlarm,
              child: const Text('Start Alarm'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _stopAlarm,
              child: const Text('Stop Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}
