import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentTheme = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theming app',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      themeMode: currentTheme,
      home: MyHomePage(
        toggleTheme: _toggleTheme,
      ),
    );
  }

  void _toggleTheme() {
    setState(() {
      currentTheme = currentTheme == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }
}

class MyHomePage extends StatelessWidget {
  final Function toggleTheme;

  const MyHomePage({
    Key key,
    this.toggleTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theming app'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: toggleTheme,
          child: Text('Toggle theme mode')
        ),
      ),
    );
  }
}
