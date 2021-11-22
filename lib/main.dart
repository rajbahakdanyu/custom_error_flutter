import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Error Demo',
      home: const MyHomePage(),
      builder: (BuildContext context, Widget? widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return CustomError(errorDetails: errorDetails);
        };

        return Container(child: widget);
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw Exception(' Hello There');
    return const Scaffold(
      body: Center(
        child: Text('Body'),
      ),
    );
  }
}

class CustomError extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const CustomError({
    Key? key,
    required this.errorDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: Padding(
          child: Text(
            "Niraj Daka",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.all(8.0),
        ),
        color: Colors.green,
        margin: EdgeInsets.zero,
      ),
    );
  }
}
