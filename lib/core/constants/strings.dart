import 'package:flutter_dotenv/flutter_dotenv.dart';

class Strings {
  static String baseApiUrl = dotenv.env['BASE_API_URL']!;
}