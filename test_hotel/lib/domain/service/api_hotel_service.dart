import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_hotel/domain/models/hotel_model.dart';

import 'package:test_hotel/domain/models/reservation_model.dart';
import 'package:test_hotel/domain/models/room_model.dart';
part 'api_hotel_service.g.dart';

@RestApi(baseUrl: 'http://node1.flyer-b2b.ru:5001/api/')
abstract class ApiHotelService {
factory ApiHotelService(Dio dio,{String baseUrl})  = _ApiHotelService;

@GET('/hotels',)
Stream<List<HotelModel>> getHotels();

@GET('/rooms')
Stream<List<RoomModel>> getRooms();

@GET('/reservations')
Stream<List<ReservationModel>> getReservations();
}