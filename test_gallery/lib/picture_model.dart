

class PictureModel {

  String previewURL;
  int views;
  int likes;
  PictureModel({
  
    required this.previewURL,
    required this.views,
    required this.likes,
  });
  
 factory PictureModel.fromJson(Map<dynamic, dynamic> json) =>
      _commentFromJson(json);

  Map<dynamic, dynamic> toJson() => photosModelToJson(this);
}

PictureModel _commentFromJson(Map<dynamic, dynamic> json) {
  return PictureModel(
    previewURL: json['previewURL'], views: json['views'], likes: json['likes'],
  );
}

Map<dynamic, dynamic> photosModelToJson(PictureModel instance) =>
    <dynamic, dynamic>{
      'previewURL': instance.previewURL,
      'views':instance.views,
      'likes': instance.likes
  
};
