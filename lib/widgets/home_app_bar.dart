import 'package:flutter/material.dart';
import 'package:planty_app/extensions/extension.dart';
import 'package:planty_app/themes/theme.dart';
import 'package:thing_toast/thing_toast.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff244B3A),
      child: SafeArea(
        child: Column(
          spacing: 8,
          children: [
            _buildLogo(),
            _buildInfoTitle(),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 28),
              child: Column(
                spacing: 8,
                children: [_buildInfo(context), _buildStat()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildStat() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.center,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarStatItem(title: 'credit', value: 100.toMYR),
            VerticalDivider(),
            AppBarStatItem(title: 'points', value: 10.toThousand),
            VerticalDivider(),
            AppBarStatItem(title: 'package', value: 1.toThousand),
          ],
        ),
      ),
    );
  }

  Row _buildInfo(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              AppBarInfoItem(
                icon: Icons.calendar_today,
                data: DateTime.now().dateF,
              ),
              AppBarInfoItem(
                icon: Icons.access_time_filled,
                data: DateTime.now().timeF,
              ),
              AppBarInfoItem(
                icon: Icons.location_on,
                data: '123 Plant Street, X Regency',
              ),
            ],
          ),
        ),
        IconButton.filledTonal(
          onPressed: () {
            ThingToast.warning(
              context,
              icon: Icon(Icons.warning),
              message: 'Not Implemented',
            );
          },
          icon: Icon(Icons.chevron_right),
        ),
      ],
    );
  }

  Row _buildInfoTitle() {
    return Row(
      spacing: 18,
      children: [
        Expanded(child: Divider(thickness: .5, height: 1, color: Colors.white)),
        Text(
          'NEXT APPOINTMENT',
          style: TextStyle(fontSize: 8, color: Colors.white),
        ),
        Expanded(child: Divider(thickness: .5, height: 1, color: Colors.white)),
      ],
    );
  }

  Text _buildLogo() =>
      Text('LOGO', style: TextStyle(fontSize: 44, color: Colors.white));
}

class AppBarStatItem extends StatelessWidget {
  const AppBarStatItem({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(fontSize: 11, color: AppColors.primary),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarInfoItem extends StatelessWidget {
  const AppBarInfoItem({super.key, required this.icon, required this.data});

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        spacing: 4,
        children: [
          Icon(icon, color: Color(0xff41745E)),
          Flexible(
            child: Text(
              data,
              style: TextStyle(fontSize: 13, color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
