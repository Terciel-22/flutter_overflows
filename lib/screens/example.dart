import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key, required this.isLoading, required this.counter});
  final bool isLoading;
  final int counter;
  @override
  createState() => ExampleState();
}

class ExampleState extends State<Example> {
  late Future<Album> futureAlbum;
  final dio = Dio();
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  Future<Album> fetchAlbum() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/albums/1');
    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.data));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  build(context) {
    return Scaffold(
      body: FutureBuilder(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.hasError) {
              return const SizedBox.shrink();
            }
            final album = snapshot.data;
            return ListTile(
              leading: Text(album!.id.toString()),
              title: Text(album.title),
              subtitle: Text(album.userId.toString()),
            );
          }),
    );
  }
}

class Album {
  final int userId;
  final int id;
  final String title;
  const Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(json) =>
      Album(userId: json["userId"], id: json["id"], title: json["title"]);
}
