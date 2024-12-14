
import 'package:shoes/core/api/dio_consumer.dart';
import 'package:shoes/core/models/shoes.dart';

class Recpiesrepo {
  final  DioConsumer dioConsumer;

  Recpiesrepo({required this.dioConsumer});

  Future<List<Shoes>> getRecpies(String categories) async {
    final recpies = await dioConsumer.get('shoes');
    List<Shoes> data = [];
    
      for (var recpie in recpies) {
        data.add(Shoes.fromJson(recpie));
      }
      return data;
  
  }
}
