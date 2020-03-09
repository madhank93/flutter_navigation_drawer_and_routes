import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternavigationdrawer/page_one.dart';
import 'package:flutternavigationdrawer/page_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: 'Navigation Drawer',
      home: HomePage(),
      // Route navigation method 1
      routes: <String, WidgetBuilder>{
        "/page_one": (BuildContext context) => PageOne('Page one is current')
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation drawer'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('M'),
              ),
              accountName: Text('Madhan'),
              accountEmail: Text('test@mail.com'),
            ),
            ListTile(
              title: Text('Page one'),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/page_one');
              },
            ),
            ListTile(
                title: Text('Page two'),
                trailing: Icon(Icons.arrow_downward),
                onTap: () {
                  Navigator.of(context).pop();
                  // Route navigation method two
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext Context) =>
                          PageTwo("Page two is current"),
                    ),
                  );
                }),
            Divider(),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text('You are in the Home page'),
        ),
      ),
    );
  }
}
