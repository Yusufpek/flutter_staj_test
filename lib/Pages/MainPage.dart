// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Constants/ConstantsExport.dart';
import '../Service/DogService.dart';
import '../Widgets/DogCardWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(Texts.appText),
      ),
      body: FutureBuilder(
        future: DogService().getDogs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.custom(
              padding: CustomPaddings.horizontalPadding(16),
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
                childCount: snapshot.data!.length,
                (context, index) => DogCardWidget(dog: snapshot.data![index]),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
