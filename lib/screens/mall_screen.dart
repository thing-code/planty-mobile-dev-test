import 'package:flutter/material.dart';
import 'package:planty_app/extensions/extension.dart';
import 'package:planty_app/gen/assets.gen.dart';
import 'package:planty_app/models/plant.dart';
import 'package:planty_app/themes/theme.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        title: SearchBar(
          leading: Assets.iconSearch.image(height: 20),
          trailing: [Assets.iconFilter.image(height: 20)],
          hintText: 'Search Salon',
          elevation: WidgetStatePropertyAll(2),
        ),
        toolbarHeight: 80,
      ),
      body: GridView.builder(
        itemCount: 8,
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: .55,
        ),
        itemBuilder: (context, index) {
          final plant = Plant(
            title: 'Lorem Ipsum',
            desc: 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
            price: 100,
            discountPercentage: index % 2 == 1 ? .5 : null,
          );

          return MallPlantCard(plant: plant);
        },
      ),
    );
  }
}

class MallPlantCard extends StatelessWidget {
  const MallPlantCard({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
                child: Assets.image.image(),
              ),
              ?_discountTag,
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  plant.title,
                  style: TextStyle(fontSize: 12, color: AppColors.subtitle),
                ),
                Text(
                  plant.desc,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                ?_normalPrice,
                Text(
                  _finalPrice.toMYR,
                  style: TextStyle(fontSize: 15, color: AppColors.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double get _finalPrice {
    if (plant.discountPercentage == null) return plant.price;

    return plant.price * plant.discountPercentage!;
  }

  Widget? get _normalPrice {
    if (plant.discountPercentage == null) return null;

    return Text(
      plant.price.toMYR,
      style: TextStyle(
        fontSize: 12,
        color: AppColors.subtitle,
        decoration: TextDecoration.lineThrough,
      ),
    );
  }

  Widget? get _discountTag {
    if (plant.discountPercentage == null) return null;

    return Positioned(
      top: 12,
      right: 12,
      child: CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${(plant.discountPercentage! * 100).round()}%',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
