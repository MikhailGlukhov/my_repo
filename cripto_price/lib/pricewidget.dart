

import 'package:cripto_price/api_request.dart';

import 'package:flutter/material.dart';

import 'entity/coin.dart';


class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  
  List<Coin>? _coin;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(centerTitle: true,
      title: const Text('Cripro Price',),
      
    ),floatingActionButton: FloatingActionButton(onPressed: () async {
      _coin = await ApiRequest().fetchPrice();
      setState(() {
        
      });
    },child: const Icon(Icons.price_check),),backgroundColor: Colors.greenAccent,
   body: (_coin == null) 
   ? SizedBox()
   : ListView.separated(
   itemCount: _coin!.length ,
   itemBuilder: (BuildContext context, int index) { 
    final coin = _coin![index];
       
   return CoinPrice(coin: coin, );
     
   }, separatorBuilder: (BuildContext context, int index) => const Divider(height: 2,) ,), );
  }

  
}

class CoinPrice extends StatelessWidget {
 
   final  Coin coin;

  const CoinPrice({
    super.key, required this.coin, 
  });
  

  @override
  Widget build(BuildContext context) {
        return Padding(
      padding: const EdgeInsets.all(12.0),
      child:  Container(decoration: BoxDecoration(
        color: Colors.orangeAccent,
        border: Border.all(color: Colors.black.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.hardEdge,
        height: 60,
       child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(coin.name),
          Text('${coin.price}')
        ],
      ),),
    );
  }
}