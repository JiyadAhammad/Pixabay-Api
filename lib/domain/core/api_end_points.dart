import '../../infrastructure/api_key.dart';
import '../../presentation/constants/api_string/string.dart';

class ApiEndPoints {
  static const String imageApi =
      '$kBaseURL/?key=$apiKey&q=$searchQuery&image_type=photo';
}
