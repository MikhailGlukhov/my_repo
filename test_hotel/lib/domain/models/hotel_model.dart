import 'package:json_annotation/json_annotation.dart';

part 'hotel_model.g.dart';

@JsonSerializable()
class HotelModel {
  int id;
  String name;
  String address;
  @JsonKey(name: 'minimal_price')
  int minimalPrice;
  int rating;
  @JsonKey(name: 'rating_name')
  String ratingName;
  @JsonKey(name: 'image_urls')
  List<String> imageUrls;
 Map<String,dynamic> aboutHotel;
  HotelModel({
    required this.id,
    required this.name,
    required this.address,
    required this.minimalPrice,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutHotel,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelModelToJson(this);
}
