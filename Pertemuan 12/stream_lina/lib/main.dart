import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream - Lina',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Untuk ColorStream
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  // Untuk NumberStream
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  // Method untuk warna
  void changeColor() {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    super.initState();

    // Warna berjalan otomatis
    colorStream = ColorStream();
    changeColor();

    // Stream angka
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    Stream stream = numberStreamController.stream;

    // Listener angka
    stream.listen(
      (event) {
        setState(() {
          lastNumber = event;
        });
      },
    );
    // .onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  // Mengembalikan addRandomNumber ke kondisi normal
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);

    numberStream.addNumberToSink(myNum);

    // numberStream.addError(); // dikomentari
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream - Lina'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lastNumber.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
          ],
        ),
      ),
    );
  }
}
