import 'package:flutter/material.dart';
import 'package:flutter_interview/restaurant_search/ui/widgets/action_button.dart';
import 'package:flutter_interview/restaurant_search/ui/widgets/city_dropdown.dart';
import 'package:flutter_interview/restaurant_search/ui/widgets/price_slider.dart';
import 'package:flutter_interview/restaurant_search/ui/widgets/rating_segmented_control.dart';
import 'package:flutter_interview/restaurant_search/ui/widgets/restaurant_tile.dart';

class RestaurantSearchScreen extends StatelessWidget {
  const RestaurantSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            CityDropDown(
              hint: 'City Name',
              dropdownValue: null,
              onChanged: (String? newValue) {},
              items: const <String>['Item 1', 'Item 2'],
              isExpanded: true,
            ),
            const SizedBox(height: 18),
            PriceRangeSlider(
              currentMin: null,
              currentMax: null,
              min: 0,
              max: 20,
              onChanged: (rangeValues) {},
            ),
            const SizedBox(height: 18),
            RatingSegmentedControl(
              value: '3.5',
              onValueChanged: (value) {},
              options: const <String>['any', '3.5', '4.0', '4.5'],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                  width: 100,
                  text: 'Clear',
                  onPressed: () {},
                  isFilled: false,
                ),
                const SizedBox(width: 18),
                ActionButton(
                  width: 100,
                  text: 'Search',
                  onPressed: () {},
                  isFilled: true,
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const RestaurantTile(
                    name: 'Restaurant Name',
                    stars: 4.0,
                    price: 20,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
