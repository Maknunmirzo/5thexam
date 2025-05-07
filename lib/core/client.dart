import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http://192.168.9.174:8888/api/v1"));

  Future<List<dynamic>> fetchRealEstates() async {
    return [
    {
      "id":
    1
    ,
    "
    category
    "
        :
    "
    Kv.
    "
    ,
    "
    image
    "
        :
    "
    https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "
    price
    "
        : 1200000000,
    "currency": "UZS",
    "area": 101.25,
    "numOfRooms": 4,
    "totalFloors": 5,
    "floor": 1,
    "nearestPopularPlace": {
    "title": "Bunyodkor",
    "distance": 500,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 2,
    "category": "Kv.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 57000,
    "currency": "USD",
    "area": 65,
    "numOfRooms": 2,
    "totalFloors": 7,
    "floor": 3,
    "nearestPopularPlace": {
    "title": "Rayhon",
    "distance": 150,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 3,
    "category": "Ofc.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 1600,
    "currency": "USD",
    "area": 50,
    "numOfRooms": 1,
    "totalFloors": 3,
    "floor": 1,
    "nearestPopularPlace": {
    "title": "Korzinka",
    "distance": 120,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 4,
    "category": "Kv.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 720000000,
    "currency": "UZS",
    "area": 72,
    "numOfRooms": 3,
    "totalFloors": 9,
    "floor": 4,
    "nearestPopularPlace": {
    "title": "Bunyodkor",
    "distance": 500,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 5,
    "category": "Kv.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 500,
    "currency": "USD",
    "area": 72,
    "numOfRooms": 3,
    "totalFloors": 9,
    "floor": 4,
    "nearestPopularPlace": {
    "title": "Chilonzor",
    "distance": 300,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 6,
    "category": "Dm.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 800,
    "currency": "USD",
    "area": 140,
    "numOfRooms": 4,
    "totalFloors": 1,
    "floor": 1,
    "nearestPopularPlace": {
    "title": "Novza",
    "distance": 440,
    "image": "assets/sale.svg"
    }
    },
    {
    "id": 7,
    "category": "Dm.",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_Y3YEbu7a26GrmS3DerKfNJjR_VeTyevKQ&s,
    "price": 480000000,
    "currency": "UZS",
    "area": 50,
    "numOfRooms": 2,
    "totalFloors": 7,
    "floor": 2,
    "nearestPopularPlace": {
    "title": "Havas",
    "distance": 240,
    "image": "assets/sale.svg"
    }
    }
    ];


  }


}


//    Future<List<dynamic>> fetchRealEstates() async {
//     var response = await dio.get("/real-estates");
//     List<dynamic> data = response.data;
//     if (response.statusCode == 200) {
//       return data;
//     } else {
//       throw Exception("something went wrong");
//     }
//   }

