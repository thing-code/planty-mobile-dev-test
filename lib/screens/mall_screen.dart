import 'package:flutter/material.dart';
import 'package:planty_app/gen/assets.gen.dart';
import 'package:planty_app/models/plant.dart';
import 'package:planty_app/themes/theme.dart';
import 'package:planty_app/widgets/mall_card.dart';

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
