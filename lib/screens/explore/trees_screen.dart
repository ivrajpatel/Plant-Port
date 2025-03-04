import 'dart:ui';

import 'package:flutter/material.dart';

class TreesGrid extends StatefulWidget {
  @override
  State<TreesGrid> createState() => _TreesGridState();
}

class _TreesGridState extends State<TreesGrid> {
  final List<Map<String, String>> trees = [
    {
      'name': 'Flowering dogwood',
      'species': 'Cornus florida',
      'image': 'assets/images/Floweringdogwood.png'
    },
    {
      'name': 'Magnolia',
      'species': 'Magnolia',
      'image': 'assets/images/Magnolia.png'
    },
    {
      'name': 'Eastern redbud',
      'species': 'Cercis canadensis',
      'image': 'assets/images/Easternredbud.jpg'
    },
    {
      'name': 'Crepe myrtle',
      'species': 'Lagerstroemia',
      'image': 'assets/images/Crepemyrtle.png'
    },
    {
      'name': 'Southern magnolia',
      'species': 'Magnolia grandiflora',
      'image': 'assets/images/Southern magnolia.png'
    },
    {
      'name': 'Japanese tree lilac',
      'species': 'Syringa reticulata',
      'image': 'assets/images/Syringareticulata.png'
    },
    {
      'name': 'Dogwood',
      'species': 'Cornus',
      'image': 'assets/images/Dogwood.png'
    },
    {
      'name': 'Shadbush',
      'species': 'Amelanchier',
      'image': 'assets/images/Shadbush.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 75, left: 16, right: 16),
      child: GridView.builder(
        itemCount: trees.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2 / 2,
        ),
        itemBuilder: (context, index) {
          return PlantCard(plant: trees[index]);
        },
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  final Map<String, String> plant;

  PlantCard({required this.plant});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        // clipBehavior: Clip.hardEdge,
        children: [
          Container(
            width: 162,
            height: 160,
            child: Image(
              image: AssetImage(plant['image']!),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    height: 56,
                    width: 156,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(plant['name']!,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        Text(plant['species']!,
                            style:
                            TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
