import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:planty_app/gen/assets.gen.dart';
import 'package:planty_app/themes/theme.dart';
import 'package:planty_app/widgets/home_banner.dart';
import 'package:planty_app/widgets/home_card.dart';
import 'package:planty_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: AppColors.primary,
            expandedHeight: MediaQuery.sizeOf(context).height * .24,
            flexibleSpace: FlexibleSpaceBar(background: HomeAppBar()),
          ),
          SliverToBoxAdapter(child: HomeBanner()),
          SliverToBoxAdapter(child: MenuSection()),
          SliverToBoxAdapter(child: ServicesSection()),
          SliverToBoxAdapter(child: Assets.trendingDiscoveries.image()),
          SliverToBoxAdapter(child: ItemsSection()),
        ],
      ),
    );
  }
}

class ItemsSection extends StatelessWidget {
  const ItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final padding = 20.0 * 2;
    final crossAxisSpacing = 8.0;
    final availableWidth = screenWidth - padding;
    final itemWidth = (availableWidth - crossAxisSpacing) / 2;
    return Container(
      color: AppColors.darkPrimary,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: 8,
        itemBuilder: (context, index) {
          double getAspectRatio(int index) {
            int pattern = index % 4;

            if (pattern == 1 || pattern == 2) {
              return 3 / 6;
            } else {
              return 3 / 5;
            }
          }

          final aspectRatio = getAspectRatio(index);
          final itemHeight = itemWidth / aspectRatio;

          return SizedBox(
            height: itemHeight,
            width: itemWidth,
            child: HomePlantCard(useAspectRatio: false),
          );
        },
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        spacing: 12,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SERVICES',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(fontSize: 12, color: AppColors.subtitle),
                    ),
                  ],
                ),
                Text(
                  'Recommended based on your preference',
                  style: TextStyle(fontSize: 12, color: AppColors.subtitle),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .4,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return HomePlantCard();
              },
              separatorBuilder: (context, index) => SizedBox(width: 8),
              itemCount: 5,
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 70,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(left: 64, right: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8,
                    children: [
                      Assets.shopPlantsIcon1.image(),
                      Assets.shopPlantsIcon2.image(),
                      Assets.shopPlantsIcon3.image(),
                      Assets.shopPlantsIcon4.image(),
                      Assets.shopPlantsIcon5.image(),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      color: AppColors.grey,
                      child: Assets.shopPlantsIconMain.image(height: 70),
                    ),
                    Container(
                      width: 24,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.grey,
                            AppColors.grey.withValues(alpha: .55),
                            AppColors.grey.withValues(alpha: 0),
                          ],
                          stops: [0, .8, 1],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FilledButton(onPressed: () {}, child: Text('SHOP')),
              ),
              Expanded(
                child: FilledButton(onPressed: () {}, child: Text('SERVICES')),
              ),
              Expanded(
                child: FilledButton(onPressed: () {}, child: Text('POSTS')),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              spacing: 8,
              children: [
                Assets.buttonIcon1.image(),
                Assets.buttonIcon2.image(),
                Assets.buttonIcon3.image(),
                Assets.buttonIcon4.image(),
                Assets.buttonIcon5.image(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
