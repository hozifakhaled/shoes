import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes/Feature/home/view_model/cubit/homedata_cubit.dart';
import 'package:shoes/Feature/home/views/widgets/home_view_body.dart';
import 'package:shoes/core/api/Repo.dart';
import 'package:shoes/core/api/dio_consumer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomedataCubit(Recpiesrepo(dioConsumer: DioConsumer(dio: Dio())))..getdata(),
      child: const HomeViewBody(),
    );
  }
}
