import 'dart:convert';
import 'dart:math';

import 'package:test_gallery/picture_model.dart';
import 'package:http/http.dart';

const appUrl = 'https://pixabay.com/api/';
const apiKey = '46075840-c1e6a7b6e62917af3f4491b84';



class PixabayService {
 Future getData(String url) async {
    
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      log(response.statusCode);
    }
  }

  List<PictureModel> dataList = [];
  Future<List<PictureModel>> getPhotos() async {
    final photosData = await getData('$appUrl?key=$apiKey&per_page=200');
    var data = json.decode(photosData);
    var items = data["hits"];
    items.forEach((element) {
      dataList.add(PictureModel.fromJson(element));
    });

   
    return dataList;
  }

}

  