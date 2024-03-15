import 'package:api_comicvine/comicvine_model.dart';
import 'package:api_comicvine/comicvine_request.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ComicVineRequestTester(),
    );
  }
}

class ComicVineRequestTester extends StatelessWidget {
  const ComicVineRequestTester({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ComicVine API'),
      ),
      body: FutureBuilder(
        future: NetworkRequest().loadCharacters(),
        builder: (_, AsyncSnapshot<CharactersResponse> req) {
          if (req.hasError) {
            return Text('Une erreur est survenue : ${req.error}');
          } else if (!req.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text('OK : ${req.data!.results.map((e) => e.apiUrl)}');
          }
        },
      ),
    );
  }
}
