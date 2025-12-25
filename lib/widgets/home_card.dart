import 'package:flutter/material.dart';
import 'package:planty_app/extensions/extension.dart';
import 'package:planty_app/gen/assets.gen.dart';
import 'package:planty_app/themes/theme.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key, this.useAspectRatio = true});

  final bool useAspectRatio;

  @override
  Widget build(BuildContext context) {
    final cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Assets.image.image(fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
          ),
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum',
                style: TextStyle(fontSize: 12, color: AppColors.subtitle),
              ),
              Text(
                'Lorem Ipsum Dolor Sit Amet Consectetur',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(50.toMYR, style: TextStyle(color: AppColors.primary)),
            ],
          ),
        ),
      ],
    );

    if (useAspectRatio) {
      return AspectRatio(aspectRatio: 3 / 5, child: cardContent);
    }

    return cardContent;
  }
}
