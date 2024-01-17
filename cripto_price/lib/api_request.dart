import 'package:cripto_price/entity/coin.dart';
import 'package:dio/dio.dart';




class ApiRequest{
Future<List<Coin>> fetchPrice() async{

    
    const url ='https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB,SOL,XRP,AVAX,TIA,DOGE,ADA,LINK,ASTR,ICP&tsyms=USD';
    
    final response = await Dio().get(url);
   final data = response.data as Map<String, dynamic>;
   final dataList = data.entries.map((e) => Coin(name: e.key, price: (e.value as Map<String,dynamic>)['USD']));
   return dataList.toList();
   
   
  }
}
