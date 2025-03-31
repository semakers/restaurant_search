import 'package:json_annotation/json_annotation.dart';

part 'restaurant_payload.g.dart';

@JsonSerializable()
class RestaurantPayload {
  final int page;
  @JsonKey(name: 'per_page')
  final int perPage;
  final int total;
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<Restaurant> data;

  const RestaurantPayload({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory RestaurantPayload.fromJson(Map<String, dynamic> json) =>
      _$RestaurantPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantPayloadToJson(this);
}

@JsonSerializable()
class Restaurant {
  final String city;
  final String name;
  @JsonKey(name: 'estimated_cost')
  final int estimatedCost;
  @JsonKey(name: 'user_rating')
  final UserRating userRating;
  final int id;

  const Restaurant({
    required this.city,
    required this.name,
    required this.estimatedCost,
    required this.userRating,
    required this.id,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}

@JsonSerializable()
class UserRating {
  @JsonKey(name: 'average_rating')
  final double averageRating;
  final int votes;

  const UserRating({
    required this.averageRating,
    required this.votes,
  });

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);

  Map<String, dynamic> toJson() => _$UserRatingToJson(this);
}
