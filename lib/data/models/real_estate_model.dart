import 'nearest_popular_places.dart';

class RealEstateModel {
  final int id;
  final String category;
  final String image;
  final num price;
  final String currency;
  final num area;
  final int numOfRooms;
  final int totalFloors;
  final int floor;
  final NearestPopularPlace nearestPopularPlace;

  RealEstateModel({
    required this.id,
    required this.category,
    required this.image,
    required this.price,
    required this.currency,
    required this.area,
    required this.numOfRooms,
    required this.totalFloors,
    required this.floor,
    required this.nearestPopularPlace,
  });

  factory RealEstateModel.fromJson(Map<String, dynamic> json) {
    return RealEstateModel(
      id: json['id'] as int,
      category: json['category'] as String,
      image: json['image'] as String,
      price: json['price'] as num,
      currency: json['currency'] as String,
      area: json['area'] as num,
      numOfRooms: json['numOfRooms'] as int,
      totalFloors: json['totalFloors'] as int,
      floor: json['floor'] as int,
      nearestPopularPlace: NearestPopularPlace.fromJson(json['nearestPopularPlace'] as Map<String, dynamic>),
    );
  }

}
