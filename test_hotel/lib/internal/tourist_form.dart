import 'package:flutter/material.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/internal/date_format.dart';

class TouristForm extends StatelessWidget {
  const TouristForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Имя',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Фамилия',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            inputFormatters: [locator.get<DateTextFormatter>()],
            keyboardType: TextInputType.datetime,
            decoration: const InputDecoration(
                hintText: 'Дата рождения',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Гражданство',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                hintText: 'Номер загранпаспорта',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                hintText: 'Срок действия загранпаспорта',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 241, 247)),
          ),
        ),
      ],
    );
  }
}