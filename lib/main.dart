import 'package:flutter/material.dart';

//boilerpalte01 project

void main() {
  runApp(const MyApp());
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 20,
        icon: (_isFavorited
            ? const Icon(Icons.favorite)
            : const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 28, 28, 119),
              )),
        onPressed: () {
          setState(() {
            if (_isFavorited) {
              _isFavorited = false;
            } else {
              _isFavorited = true;
            }
          });
        });
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, //# color : Color(0xff4B6EB1 )
      ),
      home: const MyHomePage(
        title: 'SODA',
      ),
    );
  }
}

//stful

class Click extends StatefulWidget {
  const Click({super.key});

  @override
  State<Click> createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    return FavoriteIcon();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: Text(
                'SODA',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: FavoriteIcon(),
              title: Text("Icon : Favorites"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff4B6EB1),
        title: Text(widget.title),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Copyright 2022 SODA  All rights reserved.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
