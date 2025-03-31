part of 'restaurant_search_bloc.dart';

abstract class RestaurantSearchState extends Equatable {
  final RestaurantSearchModel model;

  const RestaurantSearchState({
    required this.model,
  });

  @override
  List<Object?> get props => [
        model,
      ];
}

class LoadingState extends RestaurantSearchState {
  const LoadingState({
    required super.model,
  });
}

class LoadingMoreState extends RestaurantSearchState {
  const LoadingMoreState({
    required super.model,
  });
}

class SuccessState extends RestaurantSearchState {
  const SuccessState({
    required super.model,
  });
}

class FailState extends RestaurantSearchState {
  const FailState({
    required super.model,
  });
}

class LastPageState extends RestaurantSearchState {
  const LastPageState({
    required super.model,
  });
}
