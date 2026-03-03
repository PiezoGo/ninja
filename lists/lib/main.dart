import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Mike(),
));

class Mike extends StatefulWidget {
  const Mike({super.key});

  @override
  State<Mike> createState() => _MikeState();
}

class _MikeState extends State<Mike> {
  List<Quote> quotes = [
    Quote(author: 'Michael Ochieng', text: 'Life is an abyss'),
    Quote(author: 'Piento Industries', text: 'I saw you yesterday is a drawback. FOCUS BOY!'),
    Quote(author: 'Piezo', text: 'Your future is determined by the choices that you make right now!'),
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
        crossAxisAlignment: CrossAxisAlignment.start,     
        children: quotes.map((quote) => Text('${quote.author} - ${quote.text}')).toList(),   
      )
    );
  }
}