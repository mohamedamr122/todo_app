import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ErrorWidget extends StatelessWidget {
  ErrorWidget({super.key, required this.messageText});
  String messageText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Text(
              messageText,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Try Again'))
        ],
      ),
    );
  }
}
