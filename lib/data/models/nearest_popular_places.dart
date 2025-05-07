class NearestPopularPlace {
  final String title;
  final int distance;
  final String image;

  NearestPopularPlace({
    required this.title,
    required this.distance,
    required this.image,
  });

  factory NearestPopularPlace.fromJson(Map<String, dynamic> json) {
    return NearestPopularPlace(
      title: json['title'] as String,
      distance: json['distance'] as int,
      image: json['image'] as String,
    );
  }




}
