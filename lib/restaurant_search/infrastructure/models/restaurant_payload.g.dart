// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RestaurantPayloadCWProxy {
  RestaurantPayload page(int page);

  RestaurantPayload perPage(int perPage);

  RestaurantPayload total(int total);

  RestaurantPayload totalPages(int totalPages);

  RestaurantPayload data(List<Restaurant> data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantPayload(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantPayload(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantPayload call({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<Restaurant>? data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRestaurantPayload.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRestaurantPayload.copyWith.fieldName(...)`
class _$RestaurantPayloadCWProxyImpl implements _$RestaurantPayloadCWProxy {
  const _$RestaurantPayloadCWProxyImpl(this._value);

  final RestaurantPayload _value;

  @override
  RestaurantPayload page(int page) => this(page: page);

  @override
  RestaurantPayload perPage(int perPage) => this(perPage: perPage);

  @override
  RestaurantPayload total(int total) => this(total: total);

  @override
  RestaurantPayload totalPages(int totalPages) => this(totalPages: totalPages);

  @override
  RestaurantPayload data(List<Restaurant> data) => this(data: data);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RestaurantPayload(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RestaurantPayload(...).copyWith(id: 12, name: "My name")
  /// ````
  RestaurantPayload call({
    Object? page = const $CopyWithPlaceholder(),
    Object? perPage = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return RestaurantPayload(
      page: page == const $CopyWithPlaceholder() || page == null
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      perPage: perPage == const $CopyWithPlaceholder() || perPage == null
          ? _value.perPage
          // ignore: cast_nullable_to_non_nullable
          : perPage as int,
      total: total == const $CopyWithPlaceholder() || total == null
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
              ? _value.totalPages
              // ignore: cast_nullable_to_non_nullable
              : totalPages as int,
      data: data == const $CopyWithPlaceholder() || data == null
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<Restaurant>,
    );
  }
}

extension $RestaurantPayloadCopyWith on RestaurantPayload {
  /// Returns a callable class that can be used as follows: `instanceOfRestaurantPayload.copyWith(...)` or like so:`instanceOfRestaurantPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RestaurantPayloadCWProxy get copyWith =>
      _$RestaurantPayloadCWProxyImpl(this);
}

abstract class _$RestaurantCWProxy {
  Restaurant city(String city);

  Restaurant name(String name);

  Restaurant estimatedCost(int estimatedCost);

  Restaurant userRating(UserRating userRating);

  Restaurant id(int id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Restaurant(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Restaurant(...).copyWith(id: 12, name: "My name")
  /// ````
  Restaurant call({
    String? city,
    String? name,
    int? estimatedCost,
    UserRating? userRating,
    int? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRestaurant.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRestaurant.copyWith.fieldName(...)`
class _$RestaurantCWProxyImpl implements _$RestaurantCWProxy {
  const _$RestaurantCWProxyImpl(this._value);

  final Restaurant _value;

  @override
  Restaurant city(String city) => this(city: city);

  @override
  Restaurant name(String name) => this(name: name);

  @override
  Restaurant estimatedCost(int estimatedCost) =>
      this(estimatedCost: estimatedCost);

  @override
  Restaurant userRating(UserRating userRating) => this(userRating: userRating);

  @override
  Restaurant id(int id) => this(id: id);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Restaurant(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Restaurant(...).copyWith(id: 12, name: "My name")
  /// ````
  Restaurant call({
    Object? city = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? estimatedCost = const $CopyWithPlaceholder(),
    Object? userRating = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return Restaurant(
      city: city == const $CopyWithPlaceholder() || city == null
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      estimatedCost:
          estimatedCost == const $CopyWithPlaceholder() || estimatedCost == null
              ? _value.estimatedCost
              // ignore: cast_nullable_to_non_nullable
              : estimatedCost as int,
      userRating:
          userRating == const $CopyWithPlaceholder() || userRating == null
              ? _value.userRating
              // ignore: cast_nullable_to_non_nullable
              : userRating as UserRating,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
    );
  }
}

extension $RestaurantCopyWith on Restaurant {
  /// Returns a callable class that can be used as follows: `instanceOfRestaurant.copyWith(...)` or like so:`instanceOfRestaurant.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RestaurantCWProxy get copyWith => _$RestaurantCWProxyImpl(this);
}

abstract class _$UserRatingCWProxy {
  UserRating averageRating(double averageRating);

  UserRating votes(int votes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserRating(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserRating(...).copyWith(id: 12, name: "My name")
  /// ````
  UserRating call({
    double? averageRating,
    int? votes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserRating.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserRating.copyWith.fieldName(...)`
class _$UserRatingCWProxyImpl implements _$UserRatingCWProxy {
  const _$UserRatingCWProxyImpl(this._value);

  final UserRating _value;

  @override
  UserRating averageRating(double averageRating) =>
      this(averageRating: averageRating);

  @override
  UserRating votes(int votes) => this(votes: votes);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserRating(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserRating(...).copyWith(id: 12, name: "My name")
  /// ````
  UserRating call({
    Object? averageRating = const $CopyWithPlaceholder(),
    Object? votes = const $CopyWithPlaceholder(),
  }) {
    return UserRating(
      averageRating:
          averageRating == const $CopyWithPlaceholder() || averageRating == null
              ? _value.averageRating
              // ignore: cast_nullable_to_non_nullable
              : averageRating as double,
      votes: votes == const $CopyWithPlaceholder() || votes == null
          ? _value.votes
          // ignore: cast_nullable_to_non_nullable
          : votes as int,
    );
  }
}

extension $UserRatingCopyWith on UserRating {
  /// Returns a callable class that can be used as follows: `instanceOfUserRating.copyWith(...)` or like so:`instanceOfUserRating.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserRatingCWProxy get copyWith => _$UserRatingCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantPayload _$RestaurantPayloadFromJson(Map<String, dynamic> json) =>
    RestaurantPayload(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantPayloadToJson(RestaurantPayload instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      city: json['city'] as String,
      name: json['name'] as String,
      estimatedCost: json['estimated_cost'] as int,
      userRating:
          UserRating.fromJson(json['user_rating'] as Map<String, dynamic>),
      id: json['id'] as int,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'city': instance.city,
      'name': instance.name,
      'estimated_cost': instance.estimatedCost,
      'user_rating': instance.userRating,
      'id': instance.id,
    };

UserRating _$UserRatingFromJson(Map<String, dynamic> json) => UserRating(
      averageRating: (json['average_rating'] as num).toDouble(),
      votes: json['votes'] as int,
    );

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'average_rating': instance.averageRating,
      'votes': instance.votes,
    };
