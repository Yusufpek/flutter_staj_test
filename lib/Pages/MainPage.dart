// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staj_test/Constants/CustomPaddings.dart';
import 'package:staj_test/Service/DogService.dart';
import '../Constants/Texts.dart';
import '../Models/Dog.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Texts.appText,
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: DogService().getDogs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data!.length);
            return GridView.custom(
              padding: CustomPaddings().horizontalPadding(16),
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: snapshot.data!.length,
                (context, index) => dogWidget(snapshot.data![index]),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget dogWidget(Dog dog) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: [
            Image.network(dog.imageLink),
            const SizedBox(height: 16),
            Text(dog.name),
          ],
        ),
      ),
    );
  }
}
