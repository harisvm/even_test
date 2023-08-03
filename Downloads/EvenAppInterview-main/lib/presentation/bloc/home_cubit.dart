import 'package:EvenAppInterview/data/repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final homeRepoImpl = HomeRepositoryImpl();

  Future<void> getHomeData(String url) async {
    emit(HomeLoading());
    try {
      List<int> res = await homeRepoImpl.getHomeData(url);
      emit(HomeLoaded(homeItems: res));
    } catch (e) {
      emit(HomeError());
    }
  }
}
