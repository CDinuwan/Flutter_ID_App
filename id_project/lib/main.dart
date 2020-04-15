import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Test()
));


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  int developerlevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
        title:Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton:FloatingActionButton(onPressed: (){
        setState(() {
          developerlevel+=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],
      ) ,
      body: Padding(padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0)
      ,child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          Center(child:CircleAvatar(
            backgroundImage: NetworkImage('https://www.fbi.gov/news/speeches/@@images/image'),
            radius:40.0,
          ),),
          Divider(
            height: 90.0,
            color: Colors.grey[800],
          ),
          Text(
            'NAME',
            style: TextStyle(
              color:Colors.grey,
              letterSpacing:2.0,
            ),),
            SizedBox(height:10.0),
            Text(
            'Chanuka Dinuwan',
            style: TextStyle(
              color:Colors.amberAccent[200],
              letterSpacing:2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height:30.0),
            Text(
            'CURRENT',
            style: TextStyle(
              color:Colors.grey,
              letterSpacing:2.0,
            ),),
            SizedBox(height:10.0),
            Text(
            '$developerlevel',
            style: TextStyle(
              color:Colors.amberAccent[200],
              letterSpacing:2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height:30.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color:Colors.grey[400],
              ),
              SizedBox(width:10.0),
              Text(
                  'hecdinuwan@gmail.com',
                  style: TextStyle(
                    color:Colors.grey[400],
                    fontSize:18.0,
                    letterSpacing:1.0,
                  ),
              ),
            ],
          ),
        ]
      ),
      ),
    );
  }
}