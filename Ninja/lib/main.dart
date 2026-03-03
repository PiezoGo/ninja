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
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Mike Dummy',
        style: TextStyle(
          color: Colors.grey[200],
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count +=1;
        });
      },
      child: Icon(Icons.add)
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpeg'),
              radius: 60.0,
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME: ',
            style: TextStyle(
              color: Colors.grey[600],
        
            ),
            ),
            Text(
              'Michael Ochieng',
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28.0,
        
            ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'CURRENT NINJA LEVEL',
            style: TextStyle(
              color: Colors.grey[600],
        
            ),
            ),
            Text(
              '$count',
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28.0,
        
            ),
            ),
            SizedBox(height: 20.0,),
            Row(children: <Widget>[
              Icon( Icons.email,
              color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text('piezo5go@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
              ),
              ),
            ],),
            
          ],
        ),
      ),

    );
  }
}