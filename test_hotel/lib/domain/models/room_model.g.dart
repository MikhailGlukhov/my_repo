// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) => RoomModel(
      id: (json['id'] as num).toInt(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toInt(),
      pricePer: json['price_per'] as String,
    );

Map<String, dynamic> _$RoomModelToJson(RoomModel instance) => <String, dynamic>{
      'id': instance.id,
      'image_urls': instance.imageUrls,
      'name': instance.name,
      'pecularities': instance.pecularities,
      'price': instance.price,
      'price_per': instance.pricePer,
    };
