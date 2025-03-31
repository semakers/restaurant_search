// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantPayload _$RestaurantPayloadFromJson(Map<String, dynamic> json) =>
    RestaurantPayload(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
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
      estimatedCost: (json['estimated_cost'] as num).toInt(),
      userRating:
          UserRating.fromJson(json['user_rating'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
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
      votes: (json['votes'] as num).toInt(),
    );

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'average_rating': instance.averageRating,
      'votes': instance.votes,
    };
