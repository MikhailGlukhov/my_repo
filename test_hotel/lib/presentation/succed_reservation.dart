import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccedReservation extends StatelessWidget {
  const SuccedReservation({super.key});

  @override
  Widget build(BuildContext context) {
    var a = Random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заказ оплачен'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => context.go('/rooms/:title/reservation'),
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 234, 241, 247)),
              width: 60,
              height: 60,
              child: Image.asset('assets/icons/party_image.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Ваш Заказ принят в работу',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Text(
                textAlign: TextAlign.center,
                'Подтверждение заказа №${a.nextInt(5000)} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление ',
                style: TextStyle(
                    color: Colors.grey[400], fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.blue[700], borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(10),
        height: 40,
        width: MediaQuery.of(context).size.width * 0.85,
        child: RawMaterialButton(
          onPressed: () => context.go('/'),
          shape: const CircleBorder(),
          child: const Text(
            'Супер!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
