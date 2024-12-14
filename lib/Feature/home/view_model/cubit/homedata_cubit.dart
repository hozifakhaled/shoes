import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shoes/core/api/Repo.dart';
import 'package:shoes/core/models/shoes.dart';

part 'homedata_state.dart';

class HomedataCubit extends Cubit<HomedataState> {
  final Recpiesrepo recpiesrepo;

  HomedataCubit(this.recpiesrepo) : super(HomedataInitial());

  Future<void> getdata() async {
    try {
      emit(HomedataLoading());
      final List<Shoes> shoesList = await recpiesrepo.getRecpies();

      emit(HomedataLoaded(shoes: shoesList));
    } catch (e) {
      emit(HomedataFailure(error: e.toString()));
    }
  }
}
