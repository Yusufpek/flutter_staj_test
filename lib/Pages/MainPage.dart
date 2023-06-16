// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Constants/ConstantsExport.dart';
import '../Models/Dog.dart';
import '../Service/DogService.dart';
import '../Widgets/DogCardWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<List<Dog>> dogFuture;

  @override
  void initState() {
    dogFuture = DogService().getDogs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(Texts.appText),
      ),
      body: FutureBuilder(
        future: dogFuture,
        builder: (context, snapshot) => snapshot.hasData
            ? gridViewWidget(snapshot.data!)
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget gridViewWidget(List<Dog> data) => GridView.custom(
        padding: CustomPaddings.mediumPadding,
        gridDelegate: SliverWovenGridDelegate.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          pattern: [
            const WovenGridTile(1),
            const WovenGridTile(0.9),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: data.length,
          (context, index) => DogCardWidget(dog: data[index]),
        ),
      );
}
