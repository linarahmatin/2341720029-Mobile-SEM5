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

  // === Variabel baru untuk transformer ===
  late StreamTransformer<int, int> transformer;

  // Method warna
  void changeColor() {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    // Warna berjalan otomatis
    colorStream = ColorStream();
    changeColor();

    // Stream angka
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    Stream stream = numberStreamController.stream;

    // === Tambahkan StreamTransformer ===
    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10); // semua angka dikali 10
      },
      handleError: (error, trace, sink) {
        sink.add(-1); // jika error → kirim -1
      },
      handleDone: (sink) => sink.close(),
    );

    // === Listener memakai transformer ===
    stream.transform(transformer).listen(
      (event) {
        setState(() {
          lastNumber = event;
        });
      },
    ).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  // Kembali ke angka random normal
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);

    numberStream.addNumberToSink(myNum);

    // numberStream.addError(); // tetap dikomentari
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
