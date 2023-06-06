import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioScreen extends StatefulWidget {
  const DioScreen({super.key});
  static String routeName = '/dio';
  static String name = 'Dio';

  @override
  createState() => DioScreenState();
}

class DioScreenState extends State<DioScreen> {
  late Future<List<Album>> futureAlbums;
  final dio = Dio();
  @override
  void initState() {
    super.initState();
    futureAlbums = fetchAlbums();
  }

  Future<List<Album>> fetchAlbums() async {
    List<Album> dataList = [];
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/albums/');
    if (response.statusCode == 200) {
      final data = response.data;
      data.forEach((item) {
        dataList.add(
          Album.fromJson(item),
        );
      });
      return dataList;
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: futureAlbums,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox.shrink();
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            final albums = snapshot.data!;
            return ListView.builder(
                itemCount: albums.length,
                itemBuilder: (context, index) {
                  final album = albums[index];
                  return ListTile(
                    leading: Text(album.id.toString()),
                    title: Text(album.title),
                    subtitle: Text(album.userId.toString()),
                  );
                });
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
