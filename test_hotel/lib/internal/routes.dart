import 'package:go_router/go_router.dart';
import 'package:test_hotel/presentation/hotel_screen.dart';
import 'package:test_hotel/presentation/reservation_screen.dart';
import 'package:test_hotel/presentation/room_screen.dart';
import 'package:test_hotel/presentation/succed_reservation.dart';

final GoRouter routes = GoRouter(routes: [
  GoRoute(path: '/',
  builder: (context, state){
    return const HotelScreen();
  }),
   GoRoute(path: '/rooms/:title',
  builder: (context, state){
    final title = state.pathParameters['title']!;
    
    return RoomScreen(title);
  }),
   GoRoute(path: '/rooms/:title/reservation',
  builder: (context, state){
    return const ReservationScreen();
  }),
   GoRoute(path: '/rooms/:title/reservationsucced',
  builder: (context, state){
    return const SuccedReservation();
  }),

]);