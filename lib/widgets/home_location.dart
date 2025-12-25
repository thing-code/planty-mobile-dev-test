import 'package:flutter/material.dart';
import 'package:planty_app/themes/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LocationMap extends StatelessWidget {
  const LocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          'Location',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        // TODO: Implement flutter_map / mapbox_flutter / google_maps_flutter
        AspectRatio(aspectRatio: 16 / 9, child: Placeholder()),
      ],
    );
  }
}

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        _locationDetailItem(
          icon: Icons.location_on,
          data:
              '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
          url:
              'https://www.google.com/maps/dir/?api=1&destination=3.1579170372697676,101.7115347586861',
        ),
        _locationDetailItem(
          icon: Icons.access_time_filled_outlined,
          data: '10am - 10pm',
        ),
      ],
    );
  }

  Widget _locationDetailItem({
    required IconData icon,
    required String data,
    String? url,
  }) {
    var textStyle = url != null
        ? TextStyle(
            color: AppColors.link,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.link,
          )
        : TextStyle(color: AppColors.subtitle);
    return Row(
      spacing: 8,
      children: [
        Icon(icon, color: AppColors.primary, size: 18),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (url == null) return;
              launchUrlString(url);
            },
            child: Text(data, style: textStyle),
          ),
        ),
      ],
    );
  }
}