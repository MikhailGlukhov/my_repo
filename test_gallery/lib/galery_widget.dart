import 'package:flutter/material.dart';
import 'package:test_gallery/picture_model.dart';
import 'package:test_gallery/pixabay_service.dart';

class GaleryWidget extends StatefulWidget {
  const GaleryWidget({super.key});

  @override
  State<GaleryWidget> createState() => _GaleryWidgetState();
}

class _GaleryWidgetState extends State<GaleryWidget> {
  List<PictureModel>? picture;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 243, 204),
        body: FutureBuilder(
          future: PixabayService().getPhotos(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: Text('Empty'),
              );
            }
            var data = snapshot.data;
            return GridView.builder(
              itemCount: snapshot.hasData ? data.length : 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: size ~/ 150),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 140,
                      width: 140,
                      child: FittedBox(
                          fit: BoxFit.fill,
                          child:
                              Image.network(snapshot.data[index].previewURL)),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.remove_red_eye),
                          Text(
                            '${snapshot.data[index].views}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Icon(Icons.heart_broken),
                          Text(
                            '${snapshot.data[index].likes}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            );
          },
        ));
  }
}
