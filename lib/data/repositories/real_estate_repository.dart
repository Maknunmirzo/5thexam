
import '../../core/client.dart';
import '../models/real_estate_model.dart';


class RealEstateRepository {
  final ApiClient client;

  List<RealEstateModel> realEstates = [];

  RealEstateRepository({required this.client});

  Future<List<RealEstateModel>> fetchRealEstates() async{
    var review = await client.fetchRealEstates();
    realEstates = review.map((e) => RealEstateModel.fromJson(e)).toList();
    return realEstates;
  }
}
