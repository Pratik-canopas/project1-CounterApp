import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/Views/HomeView/homeViewController.dart';
import 'package:project1/utils/Colors.dart';
import 'package:project1/utils/Constants.dart';
import 'package:project1/utils/TextStyle.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewController homeViewController = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyle.bodyTextStyle,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      homeViewController.decrementNumber();
                    },
                    icon: Icon(
                      Icons.remove,
                      color: AppColors.white,
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.backGround,
                  ),
                  child: CircleAvatar(
                    backgroundColor: AppColors.primary,
                    radius: 80,
                    child: Obx(() => Flexible(
                          child: Text(
                            "${homeViewController.num.value}",
                            style: AppTextStyle.bodyTextStyle,
                          ),
                        )),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    homeViewController.incrementNumber();
                  },
                  icon: Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
