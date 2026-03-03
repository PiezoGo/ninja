import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Mike(),
));

class Mike extends StatefulWidget {
  const Mike({super.key});

  @override
  State<Mike> createState() => _MikeState();
}

class _MikeState extends State<Mike> {
  List<String> quotes = [
    'Your are the best you can make youself to be',
    'Your success is determined by the choices that you make right now',
    'Like really you decided to take a peep into my repo!! What inspired you??',
  ];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 88, 98),
      appBar: AppBar(
        title: Text('Awesome Quotes [Piezo]'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
        
      )
    );
  }
}