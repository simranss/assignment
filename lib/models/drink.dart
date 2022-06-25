import 'package:json_annotation/json_annotation.dart';

part 'drink.g.dart';

@JsonSerializable()
class Drink {
  final String id, tags, instructions, name;
  const Drink(this.id, this.tags, this.instructions, this.name);

  factory Drink.fromJson(Map<String, dynamic> item) => _$DrinkFromJson(item);
}
