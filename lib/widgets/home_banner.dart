import 'package:flutter/material.dart';
import 'package:planty_app/gen/assets.gen.dart';

class PlantBanner extends StatelessWidget {
  const PlantBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: CarouselView(
        shape: RoundedRectangleBorder(),
        padding: EdgeInsets.zero,
        itemSnapping: true,
        itemExtent: MediaQuery.sizeOf(context).width,
        children: List.generate(
          3,
          (index) => Assets.homeBanner.image(fit: BoxFit.cover),
        ),
      ),
    );
  }
}