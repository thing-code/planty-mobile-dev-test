import 'package:flutter/material.dart';
import 'package:planty_app/gen/assets.gen.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          leading: Assets.iconSearch.image(height: 20),
          trailing: [Assets.iconFilter.image(height: 20)],
          hintText: 'Search Salon',
        ),
        toolbarHeight: 80,
      ),
    );
  }
}
