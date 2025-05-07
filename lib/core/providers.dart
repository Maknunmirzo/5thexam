import 'package:exam_5/core/client.dart';
import 'package:exam_5/data/repositories/real_estate_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => RealEstateRepository(client: context.read())),
];
