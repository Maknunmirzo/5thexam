import 'package:bloc/bloc.dart';
import 'package:exam_5/data/repositories/real_estate_repository.dart';
import 'package:exam_5/features/home_page/manager/home_state.dart';

part "home_event.dart";

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RealEstateRepository _repo;

  HomeBloc({required RealEstateRepository repo})
    : _repo = repo,
      super(HomeState.initial()) {
    on<HomeLoading>(_load);
    add(HomeLoading());
  }

  Future _load(HomeLoading event, Emitter<HomeState> emit) async {
    state.copyWith(status: HomeStatus.loading);
    final estates = await _repo.fetchRealEstates();
    emit(state.copyWith(status: HomeStatus.idle, estates: estates));
  }
}
