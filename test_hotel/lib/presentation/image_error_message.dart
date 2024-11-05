import 'package:flutter/material.dart';

class ImageErrorMessage extends StatelessWidget {
  const ImageErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      height: 240,
      width: MediaQuery.of(context).size.width - 20,
      child: const Center(child: Text('Изображение временно недоступно')),
    );
  }
}
