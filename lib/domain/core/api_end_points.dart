// https://pixabay.com/get/g5c5b1b9bac740d389a00198c6221f173db5516eedce9c1dc45b1c24a679df7bbd02bb7627a32b3be39d38be832c70de761b87163755ce8268a8e97a8522ec4ca_640.jpg
// https://pixabay.com/api/?key=30285019-6ccdbec5c2cee1791fb243916&q=yellow+flowers&image_type=photo

// import '../../infrastructure/api_key.dart';
// import '../../presentation/constants/api_string/string.dart';

import '../../infrastructure/api_key.dart';
import '../../presentation/constants/api_string/string.dart';

class ApiEndPoints {
  static const String imageApi =
      //     'https://pixabay.com/images/search/flower/?manual_search=1';
      // '$kBaseURL/?key=$apiKey=yellow+flowers&image_type=photo';

      '$kBaseURL/?key=$apiKey&q=sun&image_type=photo';
}
