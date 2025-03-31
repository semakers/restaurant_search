import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview/restaurant_search/infrastructure/api/restaurant_api.dart';
import 'package:flutter_interview/restaurant_search/ui/screens/search_screen/bloc/restaurant_search_bloc.dart';
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
      body: BlocProvider(
        create: (context) => RestaurantScreenBloc(
          restaurantApi: RepositoryProvider.of<RestaurantApi>(context),
        )..add(
            LoadEvent(),
          ),
        child: const _Body(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final bloc = BlocProvider.of<RestaurantScreenBloc>(context);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (bloc.state is! LoadingMoreState) {
          bloc.add(
            LoadMoreEvent(),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RestaurantScreenBloc>(context);
    return BlocBuilder<RestaurantScreenBloc, RestaurantSearchState>(
        builder: (context, state) {
      if (state is SuccessState) {
        if (_scrollController.position.maxScrollExtent <= 0 &&
            bloc.state is SuccessState) {
          bloc.add(LoadMoreEvent());
        }
      }

      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            CityDropDown(
              hint: 'City Name',
              dropdownValue: state.model.city,
              onChanged: (String? newValue) {
                bloc.add(
                  ChangeCityEvent(
                    city: newValue,
                  ),
                );
              },
              items: const <String>['Seattle', 'Denver'],
              isExpanded: true,
            ),
            const SizedBox(height: 18),
            PriceRangeSlider(
              currentMin: state.model.minPrice.toDouble(),
              currentMax: state.model.maxPrice.toDouble(),
              min: 0,
              max: 1000,
              onChanged: (rangeValues) {
                bloc.add(
                  ChangePriceRangeEvent(
                    minPrice: rangeValues?.start ?? 0,
                    maxPrice: rangeValues?.end ?? 1000,
                  ),
                );
              },
            ),
            const SizedBox(height: 18),
            RatingSegmentedControl(
              value: state.model.rating?.toString() ?? 'any',
              onValueChanged: (value) {
                bloc.add(
                  ChangeRatingEvent(
                    rating: double.tryParse(value),
                  ),
                );
              },
              options: const <String>['any', '3.5', '4.0', '4.5'],
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButton(
                  width: 100,
                  text: 'Clear',
                  onPressed: () {
                    bloc.add(
                      ClearEvent(),
                    );
                  },
                  isFilled: false,
                ),
                const SizedBox(width: 18),
                ActionButton(
                  width: 100,
                  text: 'Search',
                  onPressed: () {
                    bloc.add(
                      LoadEvent(),
                    );
                  },
                  isFilled: true,
                )
              ],
            ),
            state is FailState
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: state.model.currentRestaurants.length + 1,
                      itemBuilder: (context, index) {
                        if (index < state.model.currentRestaurants.length) {
                          final restaurant =
                              state.model.currentRestaurants[index];
                          return RestaurantTile(
                            name: restaurant.name,
                            stars: restaurant.userRating.averageRating,
                            price: restaurant.estimatedCost,
                          );
                        } else if (state is LoadingMoreState ||
                            state is LoadingState) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  )
          ],
        ),
      );
    });
  }
}
