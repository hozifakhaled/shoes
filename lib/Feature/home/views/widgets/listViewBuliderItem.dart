import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes/Feature/home/view_model/cubit/homedata_cubit.dart';
import 'package:shoes/Feature/home/views/details_view.dart';
import 'package:shoes/Feature/home/views/widgets/itemInHome.dart';
import 'package:shoes/core/routing/routes.dart';

class ListViewBuliderItem extends StatelessWidget {
  const ListViewBuliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomedataCubit, HomedataState>(
      builder: (context, state) {
        if (state is HomedataLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomedataLoaded) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.shoes.length,
              itemBuilder: (BuildContext context, int index) {
                final shoe = state.shoes[index];
                return InkWell(
                  onTap: () {
                 Navigator.of(context).push(
  MaterialPageRoute(
    builder: (_) {
      return DetailsView(shoes: state.shoes[index]);
    },
  ),
);
                  },
                  child: ItemInHome(shoes: shoe),
                );
              },
            ),
          );
        } else if (state is HomedataFailure) {
          return Center(child: Text('Error: ${state.error}'));
        } else {
          return const Center(child: Text('No data available'));
        }
      },
    );
  }
}

