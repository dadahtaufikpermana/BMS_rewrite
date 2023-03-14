import 'package:get/get.dart';

import 'login_translate.dart';

class Translate extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {}..addAll(LoginTranslate.translateEN),
    'id': {}..addAll(LoginTranslate.translateID)
  };
}
