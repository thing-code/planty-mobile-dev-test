import 'package:flutter/material.dart';
import 'package:planty_app/gen/assets.gen.dart';
import 'package:planty_app/routers/router.dart';
import 'package:planty_app/themes/theme.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget(this.navigator, {super.key});
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: navigator, bottomNavigationBar: AppBottomNavBar());
  }
}

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final location = (router.state.uri.toString());
    return SafeArea(
      maintainBottomViewPadding: true,
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
            AppBottomNavBarItem(
              isActive: location == HomeRoute().location,
              onTap: () {
                if (location == HomeRoute().location) return;
                HomeRoute().go(context);
              },
              icon: Assets.navIconHome.image(height: 32),
              selectedIcon: Assets.navIconHomeGreen.image(height: 32),
              title: 'HOME',
            ),
            AppBottomNavBarItem(
              isActive: location == MallRoute().location,
              onTap: () {
                if (location == MallRoute().location) return;
                MallRoute().push(context);
              },
              icon: Assets.navIconMall.image(height: 32),
              selectedIcon: Assets.navIconMallGreen.image(height: 32),
              title: 'MALL',
            ),
            AppBottomNavBarItem(
              isActive: location == DiscoverRoute().location,
              onTap: () {
                if (location == DiscoverRoute().location) return;
                DiscoverRoute().push(context);
              },
              icon: Assets.navIconDiscover.image(height: 32),
              title: 'DISCOVER',
            ),
            AppBottomNavBarItem(
              isActive: location == InboxRoute().location,
              onTap: () {
                if (location == InboxRoute().location) return;
                InboxRoute().push(context);
              },
              icon: Assets.navIconInbox.image(height: 32),
              title: 'INBOX',
            ),
            AppBottomNavBarItem(
              isActive: location == AccountRoute().location,
              onTap: () {
                if (location == AccountRoute().location) return;
                AccountRoute().push(context);
              },
              icon: Assets.navIconAccount.image(height: 32),
              title: 'ACCOUNT',
            ),
          ],
        ),
      ),
    );
  }
}

class AppBottomNavBarItem extends StatelessWidget {
  const AppBottomNavBarItem({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.title,
    required this.icon,
    this.selectedIcon,
  });

  final bool isActive;
  final VoidCallback onTap;
  final String title;
  final Widget icon;
  final Widget? selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: isActive
                ? Border(bottom: BorderSide(color: AppColors.primary))
                : null,
          ),
          alignment: Alignment.center,
          child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isActive && selectedIcon != null) ?selectedIcon else icon,
              Text(
                title,
                style: TextStyle(
                  fontSize: 10,
                  color: isActive ? AppColors.primary : AppColors.subtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
