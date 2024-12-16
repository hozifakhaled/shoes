// ignore_for_file: file_names

import 'package:shoes/core/api/dio_consumer.dart';
import 'package:shoes/core/models/shoes.dart';

class Recpiesrepo {
  final DioConsumer dioConsumer;

  Recpiesrepo({required this.dioConsumer});

  Future<List<Shoes>> getRecpies() async {
    try {
      final response = await dioConsumer.get('shoes');
      if (response is List) {
        List<Shoes> shoesList = response
            .map((shoeJson) => Shoes.fromJson(shoeJson))
            .toList();
        return shoesList;
      } else {
        throw Exception('Invalid response format');
      }
    } catch (e) {
      rethrow;
    }
  }
}
