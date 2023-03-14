import '/infrastructure/navigation/bindings/domains/home.repository.binding.dart';
import '/presentation/home/controllers/home.controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final homeRepositoryBinding = HomeRepositoryBinding();

    Get.lazyPut<HomeController>(
          () => HomeController(homeRepository: homeRepositoryBinding.repository),
    );
  }
}
