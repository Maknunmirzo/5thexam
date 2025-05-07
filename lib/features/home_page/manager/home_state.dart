import 'package:equatable/equatable.dart';
import '../../../data/models/real_estate_model.dart';


enum HomeStatus { idle, error, loading }

class HomeState extends Equatable {
  final List<RealEstateModel> estates;
  final HomeStatus status;

  const HomeState({
    required this.estates,
    required this.status,
  });

  factory HomeState.initial() {
    return const HomeState(
      estates: [],
      status: HomeStatus.idle,
    );
  }

  HomeState copyWith({
    List<RealEstateModel>? estates,
    HomeStatus? status,
  }) {
    return HomeState(
      estates: estates ?? this.estates,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [estates, status];
}

