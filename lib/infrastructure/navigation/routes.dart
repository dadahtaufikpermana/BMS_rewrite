import 'bindings/domains/home.repository.binding.dart';

class Routes {
  static Future<String> get initialRoute async {
    return HOME;
  }

  static const HOME = '/home';
}
