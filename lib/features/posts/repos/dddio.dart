// import 'package:dio/dio.dart';
// import 'package:postget/features/posts/models/post_data_ui_model.dart';

// class PostsRepo {
//   static Dio _dio = Dio();

//   static Future<List<PostDataUiModel>> fetchPosts() async {
//     try {
//       Response response = await _dio.get('http://localhost:3000/persons');
//       if (response.statusCode == 200) {
//         List<dynamic> responseData = response.data;
//         return responseData
//             .map((json) => PostDataUiModel.fromJson(json))
//             .toList();
//       } else {
//         throw Exception('Failed to fetch posts');
//       }
//     } catch (e) {
//       print(e.toString());
//       return [];
//     }
//   }

//   static Future<bool> addPost() async {
//     try {
//       Response response = await _dio.post('http://localhost:3000/persons',
//           data: {
//             "firstName": "sir",
//             "lastName": "ji",
//             "age": 26,
//             "address": "ha,raj",
//             "phoneNumbers": "jaksd"
//           });
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return true;
//       } else {
//         return false;
//       }
//     } catch (e) {
//       print(e.toString());
//       return false;
//     }
//   }
// }
