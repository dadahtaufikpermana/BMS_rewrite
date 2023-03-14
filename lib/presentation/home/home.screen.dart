import 'package:bank_mas_re_write/presentation/home/widgets/home_blog_widget.dart';
import 'package:bank_mas_re_write/presentation/home/widgets/home_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Assignment"),
          backgroundColor: Colors.blue,
        ),
        body: controller.obx(
            (state) => SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      children: [HomeMenuWidget(state!), HomeBlogWidget(state)],
                    ),
                  ),
                ),
            onLoading: SkeletonAvatar(),
            onError: (err) => Center(child: Text(err.toString()))));
  }
}
