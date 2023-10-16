import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/provider/album_provider.dart';
import 'package:provider_sample/provider/plus_provider.dart';
import 'package:provider_sample/view/album_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AlbumProvider>(create: (context) => AlbumProvider()),
      ChangeNotifierProvider<plusProvider>(create: (context) => plusProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AlbumView(),
    );
  }
}
