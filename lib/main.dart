import 'package:flutter/material.dart';
import 'package:vyasa/src/util/theme/theme.dart';

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}


class AppHome extends StatelessWidget {
  const AppHome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("LAMAO...."),
          leading: const Icon(Icons.account_box_outlined)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit_sharp),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Hello",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "World",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}