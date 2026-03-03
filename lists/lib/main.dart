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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                
              ),
            ),
            SizedBox(height: 9.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 10.0,
                color: const Color.fromARGB(255, 99, 98, 98),
                
              ),
            )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),   
      )
    );
  }
}