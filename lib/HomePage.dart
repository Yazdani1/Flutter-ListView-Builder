import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> names=[
    "Apple","Android","Iphone","Macbook","Product","Food Item","Lichi"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text(
          "List Builder..",
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: Colors.deepOrange,

        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("Kaj Kore"))
        ],

      ),

      body: new Container(

        child: new ListView.builder(
            reverse: true,
            itemBuilder: (_,int index)=>EachList(this.names[index]),
            itemCount: this.names.length,
        )
      )

    );
  }
}

class EachList extends StatelessWidget{

  final String name;

  EachList(this.name);

  @override
  Widget build(BuildContext context) {
    return new Card(

      child: new Container(
        
        padding: EdgeInsets.all(7.0),
        margin: EdgeInsets.all(10.0),

        child: new Row(
          children: <Widget>[

            new CircleAvatar(
              child: new Text(name[0]),
            ),

            new Padding(padding: EdgeInsets.all(8.0)),

            new Text(name,style: TextStyle(fontSize: 13.0),)

          ],
        ),
        
      ),
      
    );
  }
  
}













