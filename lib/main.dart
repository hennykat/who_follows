import 'package:flutter/material.dart';

void main() => runApp(new WhoFollows());

class WhoFollows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // colours
    var darkColour = const Color(0xFF1C2A44);
    var midColour = const Color(0xFF67B9FA);
    var lightColour = const Color(0xFFA89DFB);
    var popColour = const Color(0xFFE981FC);
    var whiteColour = const Color(0xFFF8FDFA);

    return new MaterialApp(
      title: 'Who Follows',
      theme: new ThemeData(
        primaryColor: midColour,
        primaryColorDark: darkColour,
        accentColor: popColour,
        primaryColorLight: lightColour,
        textTheme: new TextTheme(
          title: new TextStyle(
            color: whiteColour,
          ),
          display1: new TextStyle(
            color: darkColour,
          ),
          headline: new TextStyle(
            color: darkColour,
          ),
        ),
        buttonTheme: new ButtonThemeData(
          height: 44.0,
        )
      ),
      home: new HomePage(title: 'Who Follows'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(

        title: new Text(
          widget.title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: new Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '<IG Handle Here>',
              style: Theme.of(context).textTheme.display1,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'Total: ',
                  style: Theme.of(context).textTheme.headline,
                ),
                new Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                  },
                  child: new Text('Followers'),
                ),
                new RaisedButton(
                  onPressed: () {
                  },
                  child: new Text('Mutuals'),
                ),
                new RaisedButton(
                  onPressed: () {
                  },
                  child: new Text('Following'),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
