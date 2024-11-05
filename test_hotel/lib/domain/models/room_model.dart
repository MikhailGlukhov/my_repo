import 'package:json_annotation/json_annotation.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel {
  int id;
  @JsonKey(name: 'image_urls')
  List<String> imageUrls;
  String name;
  List<String> pecularities;
  int price;
  @JsonKey(name: 'price_per')
  String pricePer;
  RoomModel({
    required this.id,
    required this.imageUrls,
    required this.name,
    required this.pecularities,
    required this.price,
    required this.pricePer,
  });

   factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
