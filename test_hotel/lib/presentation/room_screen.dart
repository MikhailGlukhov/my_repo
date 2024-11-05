import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:test_hotel/bloc/room_bloc/room_bloc.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/models/room_model.dart';
import 'package:test_hotel/presentation/image_error_message.dart';

import 'package:test_hotel/domain/service/api_hotel_service.dart';

class RoomScreen extends StatefulWidget {
  final String title;
  const RoomScreen(this.title, {super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
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
          title: Text(widget.title),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => context.go('/'),
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: BlocBuilder<RoomBloc, RoomState>(builder: (context, state) {
          return state.when(
            error: () => const Center(
              child: Text('Ошибка'),
            ),
            succes: () => StreamBuilder<List<RoomModel>>(
                stream: locator.get<ApiHotelService>().getRooms(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      final List<RoomModel> room = snapshot.data!;

                      return ListView.builder(
                          itemCount: room.length,
                          itemBuilder: (context, index) {
                            final List<Widget> pages = List.generate(
                                room[index].imageUrls.length, (ind) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: SizedBox(
                                  height: 240,
                                  width: MediaQuery.of(context).size.width - 20,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image.network(
                                      room[index].imageUrls[ind],
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
                                  room[index].imageUrls.isEmpty
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
                                                0.45,
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
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      room[index].name,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.all(10),
                                      child: Wrap(
                                          children: List.generate(
                                              room[index].pecularities.length,
                                              (ind) {
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
                                            room[index].pecularities[ind],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600]),
                                          ),
                                        );
                                      }))),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        borderRadius: BorderRadius.circular(4)),
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4, left: 8, right: 8),
                                    child: const Text(
                                      'Подробнее о номере',
                                      style: TextStyle(
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
                                        Text('От ${room[index].price} ₽',
                                            style: const TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          '       за ${room[index].pricePer}',
                                          style: const TextStyle(
                                              color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.blue[700],
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      margin: const EdgeInsets.all(10),
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      child: RawMaterialButton(
                                        onPressed: () => context
                                            .push('/rooms/:title/reservation'),
                                        shape: const CircleBorder(),
                                        child: const Text(
                                          'Выбрать номер',
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
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                }),
          );
        }));
  }
}
