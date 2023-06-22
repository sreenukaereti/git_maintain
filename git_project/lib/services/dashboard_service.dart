// import 'dart:convert';

// import 'package:git_project/models/dashBoard_model.dart';
// import 'package:http/http.dart' as http;

// class DashBoardService {
//   Future<List<DashBoardModel>> _details = [];
//   dassBoardData() async {
//     const _endPoint =
//         "https://jatinderji.github.io/users_pets_api/users_pets.json";
//     final uri = Uri.parse(_endPoint);
//     final responce = await http.get(uri);
//     if (responce.statusCode == 200) {
//       final json = jsonDecode(responce.body) as Map;
//       final _details = json.map((e) {
//         return DashBoardModel();
//       });
//     }
//   }
// }
