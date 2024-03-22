import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monietracka/app/modules/home/widgets/home_action_chips.dart';
import 'package:monietracka/app/shared/widgets/app_text.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';
import 'package:monietracka/app/theme/colors.dart';

import '../controllers/home_controller.dart';
import '../widgets/home_menu_button.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.darkGrey,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined),
              label: 'Budget',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings),
              label: 'Savings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online_outlined),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
      body: SafeArea(
        child: Padding(
          padding: simpad(20, 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                        'https://cdn.vanguardngr.com/wp-content/uploads/2023/05/Screenshot_20230517_140323.jpg',
                      ),
                    ),
                    hSpace(30),
                    AppText(
                      'Hi John Koder',
                      customTextSize: 18,
                      weight: FontWeight.w800,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconlyLight.notification,
                        size: 30,
                      ),
                    )
                  ],
                ),
                vSpace(10),
                Row(
                  children: [
                    AppText(
                      'Your Balance',
                      customTextSize: 12,
                    ),
                    hSpace(10),
                    Obx(
                      () => IconButton(
                        onPressed: () {
                          controller.hideBalance.toggle();
                        },
                        icon: controller.hideBalance.isFalse
                            ? const Icon(
                                Icons.visibility,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                size: 20,
                              ),
                      ),
                    ),
                  ],
                ),
                vSpace(10),
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppText(
                            'NGN',
                            customTextSize: 10,
                          )
                        ],
                      ),
                    ),
                    hSpace(10),
                    Obx(() => RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: controller.hideBalance.isFalse
                                    ? '0'
                                    : '****',
                                style: GoogleFonts.manrope(
                                  fontSize:
                                      40, // Adjust the font size as needed
                                  fontWeight: FontWeight.w600,
                                  color: AppColors
                                      .black, // Change the color as needed
                                ),
                              ),
                              TextSpan(
                                text: controller.hideBalance.isFalse
                                    ? '.00'
                                    : '**',
                                style: GoogleFonts.manrope(
                                  fontSize:
                                      27, // Adjust the font size as needed
                                  fontWeight: FontWeight.w200,
                                  color: AppColors
                                      .black, // Change the color as needed
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                vSpace(20),
                Row(
                  children: [
                    const HomeActionChips(
                      icon: IconlyLight.plus,
                      label: 'Fund Wallet',
                    ),
                    hSpace(10),
                    const HomeActionChips(
                      icon: IconlyLight.send,
                      label: 'Send Money',
                    ),
                  ],
                ),
                vSpace(20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    'Daily Budget',
                    customTextSize: 16,
                    weight: FontWeight.bold,
                  ),
                ),
                vSpace(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 150,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add_circle,
                          size: 30,
                        ),
                        vSpace(10),
                        AppText(
                          'Add Budget',
                          customTextSize: 13,
                          color: AppColors.darkGrey,
                        ),
                      ],
                    ),
                  ),
                ),
                vSpace(30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    'Menu',
                    customTextSize: 16,
                    weight: FontWeight.bold,
                  ),
                ),
                vSpace(30),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: simpad(10, 10),
                  width: Get.width,
                  height: 170,
                  child: GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: const [
                      HomeMenuButton(
                        icon: Icons.phone_android_outlined,
                        label: 'Airtime',
                      ),
                      HomeMenuButton(
                        icon: Icons.wifi,
                        label: 'Data',
                      ),
                      HomeMenuButton(
                        icon: Icons.receipt_outlined,
                        label: 'Bills',
                      ),
                      HomeMenuButton(
                        icon: Icons.electric_bolt_outlined,
                        label: 'Electricity',
                      ),
                      HomeMenuButton(
                        icon: Icons.tv_outlined,
                        label: 'TV',
                      ),
                      HomeMenuButton(
                        icon: Icons.style_outlined,
                        label: 'Cards',
                      ),
                      HomeMenuButton(
                        icon: Icons.keyboard_return_outlined,
                        label: 'Cash Backs',
                      ),
                      HomeMenuButton(
                        icon: Icons.group_outlined,
                        label: 'Group Budget',
                      ),
                      HomeMenuButton(
                        icon: Icons.newspaper_outlined,
                        label: 'Contribution',
                      ),
                      HomeMenuButton(
                        icon: Icons.menu,
                        label: 'More',
                      ),
                    ],
                  ),
                ),
                vSpace(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: simpad(0, 3),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: 'all',
                        items: [
                          DropdownMenuItem(
                            value: 'all',
                            child: AppText(
                              'All Transactions',
                              customTextSize: 11,
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
