import 'package:flutter/material.dart';
import 'package:test_hotel/bloc/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/bloc/reservation_bloc/reservation_bloc.dart';
import 'package:test_hotel/bloc/room_bloc/room_bloc.dart';
import 'package:test_hotel/internal/hotel_app.dart';
import 'package:test_hotel/internal/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => HotelBloc(),
      ),
      BlocProvider(
        create: (context) => RoomBloc(),
      ),
      BlocProvider(
        create: (context) => ReservationBloc(),
      ),
    ],
    child: const HotelApp(),
  ));
}
