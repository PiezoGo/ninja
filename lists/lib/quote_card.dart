import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
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
}