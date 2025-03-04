import 'dart:ui';

import 'package:flutter/material.dart';

class PlantGrid extends StatefulWidget {
  @override
  State<PlantGrid> createState() => _PlantGridState();
}

class _PlantGridState extends State<PlantGrid> {
  final List<Map<String, String>> plants = [
    {
      'name': 'Indian Mallow',
      'species': 'Abutilon',
      'image': 'assets/images/Indianmallow.png'
    },
    {
      'name': 'Spider Plant',
      'species': 'Chlorophytum comosum',
      'image': 'assets/images/spiderplant.png'
    },
    {
      'name': 'Swiss Cheese Plant',
      'species': 'Monstera deliciosa',
      'image': 'assets/images/swisscheese.png'
    },
    {
      'name': 'Plantain Lilies',
      'species': 'Hosta',
      'image': 'assets/images/plantainlilies.png'
    },
    {
      'name': 'Zanzibar Gem',
      'species': 'Zamioculcas',
      'image': 'assets/images/zanzibargem.png'
    },
    {
      'name': 'Vervain',
      'species': 'Verbena',
      'image': 'assets/images/vervain.png'
    },
    {
      'name': 'Sword Fern',
      'species': 'Nephrolepis exaltata',
      'image': 'assets/images/swordfern.png'
    },
    {
      'name': 'Sword Fern',
      'species': 'Nephrolepis exaltata',
      'image': 'assets/images/swordferm2.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 75, left: 16, right: 16),
      child: GridView.builder(
        itemCount: plants.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2 / 2,
        ),
        itemBuilder: (context, index) {
          return PlantCard(plant: plants[index]);
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
