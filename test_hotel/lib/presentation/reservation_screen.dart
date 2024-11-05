import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/bloc/reservation_bloc/reservation_bloc.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:test_hotel/domain/models/reservation_model.dart';
import 'package:test_hotel/internal/tourist_form.dart';
import 'package:test_hotel/domain/service/api_hotel_service.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  var maskFormatter = MaskTextInputFormatter(
      initialText: '+7 (***) ***-**-**',
      mask: '+7 (***) ***-**-**',
      filter: {"*": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  bool isValid = true;
  bool isAdd = false;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Бронирование'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: BlocBuilder<ReservationBloc, ReservationState>(
          builder: (context, state) {
            return state.when(
              error: () => const Center(
                child: Text('Ошибка'),
              ),
              succes: () => StreamBuilder<List<ReservationModel>>(
                  stream: locator.get<ApiHotelService>().getReservations(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        List<ReservationModel> reserv = snapshot.data!;
                        return ListView.builder(
                            itemCount: reserv.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        margin: const EdgeInsets.only(
                                            top: 25, left: 15),
                                        decoration: BoxDecoration(
                                            color: Colors.amber[100],
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Wrap(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber[600],
                                            ),
                                            Text(
                                              ' 5  ${reserv[index].ratingName}',
                                              style: TextStyle(
                                                color: Colors.amber[600],
                                              ),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        reserv[index].hotelName,
                                        style: const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        reserv[index].hotelAddress,
                                        style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      height: 10,
                                      width: double.infinity,
                                      color: Colors.grey[300],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _TextDescription('Страна, город'),
                                              _TextDescription('Даты'),
                                              _TextDescription('Кол-во ночей'),
                                              _TextDescription('Отель'),
                                              _TextDescription('Номер'),
                                              _TextDescription('Питание'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.18,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _TextDescriptionFromApi(
                                                reserv[index].arrivalCountry,
                                              ),
                                              _TextDescriptionFromApi(
                                                '${reserv[index].tourDateStart} - ${reserv[index].tourDateStop}',
                                              ),
                                              _TextDescriptionFromApi(
                                                reserv[index].numberOfNights,
                                              ),
                                              _TextDescriptionFromApi(
                                                reserv[index].hotelName,
                                              ),
                                              _TextDescriptionFromApi(
                                                reserv[index].room,
                                              ),
                                              _TextDescriptionFromApi(
                                                reserv[index].nutrition,
                                              ),
                                            ],
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
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Информация о покупателе',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onTap: () {
                                          _phoneController.text =
                                              '+7 (***) ***-**-**';
                                          _phoneController.selection =
                                              TextSelection.fromPosition(
                                                  const TextPosition(
                                                      offset: 4));
                                        },
                                        inputFormatters: [maskFormatter],
                                        controller: _phoneController,
                                        maxLength: 18,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                            counterText: '',
                                            hintText: 'Номер телефона',
                                            hintStyle: const TextStyle(
                                                color: Colors.grey),
                                            labelText: 'Номер телефона',
                                            labelStyle: const TextStyle(
                                                color: Colors.grey),
                                            border: const UnderlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            filled: true,
                                            fillColor: isValid
                                                ? const Color.fromARGB(
                                                    255, 234, 241, 247)
                                                : const Color.fromRGBO(
                                                    235, 87, 87, 0.15)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                            labelText: 'Почта',
                                            labelStyle: const TextStyle(
                                                color: Colors.grey),
                                            hintText: 'Почта',
                                            hintStyle: const TextStyle(
                                                color: Colors.grey),
                                            border: const UnderlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            filled: true,
                                            fillColor: isValid
                                                ? const Color.fromARGB(
                                                    255, 234, 241, 247)
                                                : const Color.fromRGBO(
                                                    235, 87, 87, 0.15)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Эти данные никому не передаются. После оплаты мы вышлим чек на указанный вами номер и почту',
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 10,
                                      width: double.infinity,
                                      color: Colors.grey[300],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Первый турист',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                                'assets/icons/collapse_icon.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                    const TouristForm(),
                                    Container(
                                      height: 10,
                                      width: double.infinity,
                                      color: Colors.grey[300],
                                    ),
                                    isAdd == true
                                        ? Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'Второй турист',
                                                      style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Image.asset(
                                                        'assets/icons/collapse_icon.png')
                                                  ],
                                                ),
                                              ),
                                              const TouristForm(),
                                            ],
                                          )
                                        : const SizedBox(
                                            width: 0.1,
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Добавить туриста',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                            icon: Image.asset(
                                                'assets/icons/add_icon.png'),
                                            onPressed: () {
                                              setState(() {
                                                isAdd = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 10,
                                      width: double.infinity,
                                      color: Colors.grey[300],
                                    ),
                                    _RowDescription(
                                        'Тур', '${reserv[index].tourPrice} ₽'),
                                    _RowDescription('Топливный сбор',
                                        '${reserv[index].fuelCharge} ₽'),
                                    _RowDescription('Сервисный сбор',
                                        '${reserv[index].serviceCharge} ₽'),
                                    _RowDescription('К оплате',
                                        '${reserv[index].tourPrice + reserv[index].serviceCharge + reserv[index].fuelCharge} ₽'),
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
                                        margin: const EdgeInsets.all(10),
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.85,
                                        child: RawMaterialButton(
                                          onPressed: () {
                                            setState(() {
                                              _phoneController.text.length == 18
                                                  ? isValid = true
                                                  : isValid = false;
                                              EmailValidator.validate(
                                                          _emailController
                                                              .text) ==
                                                      true
                                                  ? isValid = true
                                                  : isValid = false;
                                            });
                                            isValid == true
                                                ? context.go(
                                                    '/rooms/:title/reservationsucced')
                                                : null;
                                          },
                                          shape: const CircleBorder(),
                                          child: Text(
                                            'Оплатить ${reserv[index].tourPrice + reserv[index].serviceCharge + reserv[index].fuelCharge} ₽',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            );
          },
        ));
  }
}

class _RowDescription extends StatelessWidget {
  final String title;
  final String titleApi;
  const _RowDescription(this.title, this.titleApi);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.w500)),
          Text(
            titleApi,
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class _TextDescriptionFromApi extends StatelessWidget {
  final String title;
  const _TextDescriptionFromApi(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(title),
    );
  }
}

class _TextDescription extends StatelessWidget {
  final String title;
  const _TextDescription(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold),
      ),
    );
  }
}
