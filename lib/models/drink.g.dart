// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drink _$DrinkFromJson(Map<String, dynamic> json) => Drink(
      json['id'] as String,
      json['tags'] as String,
      json['instructions'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$DrinkToJson(Drink instance) => <String, dynamic>{
      'id': instance.id,
      'tags': instance.tags,
      'instructions': instance.instructions,
      'name': instance.name,
    };
