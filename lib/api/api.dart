import 'package:stack/api/key.dart';
import 'package:http/http.dart' as http;
import 'package:stack/model/model.dart';

class Api {
  Future<List<CharacterModel>> fetchUserData() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = response.body;
      return characterModelFromJson(data);
    }
    return [];
  }
}
