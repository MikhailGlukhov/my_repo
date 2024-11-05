import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:test_hotel/bloc/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/models/hotel_model.dart';
import 'package:test_hotel/presentation/image_error_message.dart';

import 'package:test_hotel/domain/service/api_hotel_service.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  void dispose() {
    _pageController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Отель',
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<HotelBloc, HotelState>(builder: (context, state) {
          return state.when(
            error: () => const Center(
              child: Text('Ошибка'),
            ),
            succes: () => StreamBuilder<List<HotelModel>>(
                stream: locator.get<ApiHotelService>().getHotels(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      final List<HotelModel> hotel = snapshot.data!;
                      return ListView.builder(
                          itemCount: hotel.length,
                          itemBuilder: (context, index) {
                            final List<Widget> pages = List.generate(
                                hotel[index].imageUrls.length, (ind) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  height: 240,
                                  width: MediaQuery.of(context).size.width - 20,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image.network(
                                      hotel[index].imageUrls[ind],
                                      errorBuilder: (context, _, stackTrace) {
                                        return locator.get<ImageErrorMessage>();
                                      },
                                    ),
                                  ),
                                ),
                              );
                            });

                            return Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  hotel[index].imageUrls.isEmpty
                                      ? locator.get<ImageErrorMessage>()
                                      : Stack(children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                20,
                                            height: 240,
                                            child: PageView(
                                              onPageChanged: (value) {
                                                _currentPageNotifier.value =
                                                    value;
                                              },
                                              controller: _pageController,
                                              children: pages,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.41,
                                            child: Container(
                                              margin: const EdgeInsets.all(4),
                                              width: pages.length > 1 ? 45 : 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: CirclePageIndicator(
                                                  selectedSize: 12,
                                                  size: 12,
                                                  dotSpacing: 5,
                                                  dotColor: Colors.grey,
                                                  selectedDotColor:
                                                      Colors.black,
                                                  itemCount: pages.length,
                                                  currentPageNotifier:
                                                      _currentPageNotifier,
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 25, left: 15),
                                    padding: const EdgeInsets.all(5),
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.amber[100],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Wrap(children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber[600],
                                      ),
                                      Text(
                                        '${hotel[index].rating} ${hotel[index].ratingName}',
                                        style: TextStyle(
                                            color: Colors.amber[600],
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      hotel[index].name,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      hotel[index].address,
                                      style: const TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'От ${hotel[index].minimalPrice} ₽',
                                          style: const TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          '        за тур с перелетом',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      'Об отеле',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Wrap(
                                          children: List.generate(
                                              hotel[index]
                                                  .aboutHotel['pecularities']
                                                  .length, (ind) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300],
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          padding: const EdgeInsets.only(
                                              top: 4,
                                              bottom: 4,
                                              left: 8,
                                              right: 8),
                                          margin: const EdgeInsets.all(4),
                                          child: Text(
                                            '${hotel[index].aboutHotel['pecularities'][ind]}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600]),
                                          ),
                                        );
                                      }))),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      '${hotel[index].aboutHotel['description']}',
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/icons/happy_emoji_icon.png'),
                                    title: const Text(
                                      'Удобства',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: const Text(
                                      'Самое необходимое',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Icon(
                                        Icons.arrow_forward_ios_sharp),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/icons/checked_icon.png'),
                                    title: const Text(
                                      'Что включено',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: const Text(
                                      'Самое необходимое',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Icon(
                                        Icons.arrow_forward_ios_sharp),
                                  ),
                                  ListTile(
                                    leading: Image.asset(
                                        'assets/icons/close_icon.png'),
                                    title: const Text(
                                      'Что не включено',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: const Text(
                                      'Самое необходимое',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: const Icon(
                                        Icons.arrow_forward_ios_sharp),
                                  ),
                                  Container(
                                    height: 10,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue[700],
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      margin: const EdgeInsets.all(4),
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          return context.go(
                                              '/rooms/${hotel[index].name}');
                                        },
                                        shape: const CircleBorder(),
                                        child: const Text(
                                          'К выбору номера',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    }
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
          );
        }));
  }
}
