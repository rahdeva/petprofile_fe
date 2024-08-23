import 'package:flutter/material.dart';

class DataDetailItem extends StatelessWidget {
  const DataDetailItem({
    super.key, 
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final Widget icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}