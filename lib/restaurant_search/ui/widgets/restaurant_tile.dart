import 'package:flutter/material.dart';

class RestaurantTile extends StatelessWidget {
  final String name;
  final double stars;
  final int price;

  const RestaurantTile({
    super.key,
    required this.name,
    required this.stars,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          subtitle: Text('$stars stars - \$$price avg'),
        ),
        const Divider(
          height: 1,
          thickness: 1,
        )
      ],
    );
  }
}
