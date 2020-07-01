import 'package:flutter/material.dart';
// import 'package:flutter_tutorials/widgets/nav-drawer.dart';
//ankit

void main() {

  
  runApp(MyApp());
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(title: Text('My First App')),
        backgroundColor: Colors.white,
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: <Widget>[
            Card(
              color: Colors.redAccent,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('login'),
                        SizedBox(height: 2.0),
                        Text('Secondary Text'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.redAccent,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // AspectRatio(
                  //   aspectRatio: 18.0 / 11.0,
                  //   child: Image.asset('assets/diamond.png'),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('password'),
                        SizedBox(height: 2.0),
                        Text('Secondary Text'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.redAccent,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // AspectRatio(
                  //   aspectRatio: 18.0 / 11.0,
                  //   child: Image.asset('assets/diamond.png'),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('email'),
                        SizedBox(height: 2.0),
                        Text('Secondary Text'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.redAccent,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // AspectRatio(
                  //   aspectRatio: 18.0 / 11.0,
                  //   child: Image.asset('assets/diamond.png'),
                  // ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Title'),
                        SizedBox(height: 8.0),
                        Text('Secondary Text'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
