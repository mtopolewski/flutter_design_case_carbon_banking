import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_case_carbon_banking/styles/app_colors.dart';
import 'package:flutter_design_case_carbon_banking/widgets/cutout_container.dart';
import 'package:flutter_design_case_carbon_banking/widgets/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.appWhite,
      appBar: AppBar(
        titleSpacing: 36,
        backgroundColor: AppColors.appBlack,
        elevation: 0,
        centerTitle: false,
        title: const Text("NBank"),
        actions: [
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0),
                maximumSize: MaterialStateProperty.all(const Size(36, 36)),
                minimumSize: MaterialStateProperty.all(const Size(20, 20)),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () {},
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  const Center(
                    child: Icon(
                      CupertinoIcons.bell,
                      size: 23,
                    ),
                  ),
                  Positioned(
                    //alignment: Alignment.topRight,
                    right: 10,
                    top: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.appBlack,
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      width: 8,
                      height: 8,
                      alignment: Alignment.center,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.appRed,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                        width: 6,
                        height: 6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 28,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  const CutoutContainer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        SizedBox(
                          width: 160,
                          child: DefaultTabController(
                              length: 2,
                              child: TabBar(
                                //indicatorWeight: 0,
                                padding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.zero,
                                //indicator: null,
                                indicatorColor: Colors.transparent,
                                tabs: [
                                  Text("Account".toUpperCase()),
                                  Text("Ballance".toUpperCase())
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$ 18,354.00",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            const Spacer(),
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                //side: MaterialStateProperty(BorderSide(width: 5.0, color: Colors.blue)),
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                      width: 1.0, color: AppColors.appGrey),
                                ),
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.zero),
                                maximumSize: MaterialStateProperty.all(
                                  const Size(60, 60),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(42, 42),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: const Icon(
                                Icons.show_chart,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Card(
                          elevation: 16,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: AppColors.appRed,
                          child: SizedBox(
                            height: 86,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        "\$ 4280",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "AVG Spendings",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 0.3,
                                  height: 40,
                                  color: Colors.white,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        "+3.4%",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        "AVG Shift",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        )
                        //const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              //flex: 3,
              child: Container(
                color: AppColors.appWhite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 36),
                      child: Text(
                        "Send Money",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 20, maxHeight: 56),
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                          dragDevices: {
                            PointerDeviceKind.touch,
                            PointerDeviceKind.mouse,
                          },
                        ),
                        child: ListView(
                          //shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 36, right: 8),
                              alignment: Alignment.center,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.appBlack),
                                  side: MaterialStateProperty.all(
                                    const BorderSide(
                                        width: 1.0, color: AppColors.appGrey),
                                  ),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                  maximumSize: MaterialStateProperty.all(
                                    const Size(60, 60),
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                    const Size(56, 56),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                child: const Icon(
                                  Icons.search_outlined,
                                  size: 26,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/stock-photo-profile-picture-of-smiling-millennial-asian-girl-isolated-on-grey-wall-background-look-at-camera-250nw-1836020740.jpg",
                                  //height: 150.0,
                                  //width: 100.0,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/stock-photo-headshot-portrait-of-smiling-millennial-male-employee-talk-on-video-call-or-web-conference-in-250nw-1667439913.jpg",
                                  //height: 150.0,
                                  //width: 100.0,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/stock-photo-young-adult-profile-picture-with-red-hair-250nw-1655747050.jpg",
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/stock-photo-close-up-headshot-portrait-picture-of-smiling-african-american-businesswoman-happy-attractive-250nw-1733598437.jpg",
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://image.shutterstock.com/image-photo/stock-photo-portrait-of-smiling-red-haired-millennial-man-looking-at-camera-sitting-in-caf-or-coffeeshop-250nw-1194497251.jpg",
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: CircleAvatar(
                                radius: 27,
                                backgroundImage: NetworkImage(
                                  "https://bandlabimages.azureedge.net/v1.0/users/0e5680f9-d61a-4bc5-a52d-be67403497b0/640x640",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 36, top: 30, right: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Quick Payments",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.zero),
                                maximumSize: MaterialStateProperty.all(
                                  const Size(40, 40),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  const Size(38, 38),
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                    AppColors.appBlack)),
                            child: const Icon(
                              Icons.more_horiz,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 156, maxHeight: 176),
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                          dragDevices: {
                            PointerDeviceKind.touch,
                            PointerDeviceKind.mouse,
                          },
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            SizedBox(
                              width: 32,
                            ),
                            ListItem(
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              "Water",
                              "\$432",
                              "Commission is 3%",
                            ),
                            ListItem(
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              "Heating",
                              "\$352",
                              "Commission is 5%",
                            ),
                            ListItem(
                              Icon(
                                Icons.flash_on_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              "Electiricty",
                              "\$570",
                              "Commission is 1%",
                            ),
                            ListItem(
                              Icon(
                                Icons.water_drop_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              "Water",
                              "\$432",
                              "Commission is 1%",
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: AppColors.appWhite,
          elevation: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.home_outlined,
                    color: AppColors.appBlack,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.dns_outlined,
                    color: AppColors.appBlack,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.account_balance_wallet_outlined,
                    color: AppColors.appBlack,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.cached_outlined,
                    color: AppColors.appBlack,
                  ),
                ),
              ],
            ),
          )),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   fixedColor: Colors.transparent,
      //   elevation: 0,
      //   currentIndex: 2,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   items: const [
      //     // BottomNavigationBarItem(
      //     //   backgroundColor: Colors.transparent,
      //     //   // icon: Icon(
      //     //   //   Icons.home_outlined,
      //     //   //   color: AppColors.appBlack,
      //     //   // ),
      //     //   icon: StylableIcon(
      //     //     Icons.dns_outlined,
      //     //     color: AppColors.appBlack,
      //     //   ),
      //     //   label: "",
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.dns_outlined,
      //         color: AppColors.appBlack,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.dns_outlined,
      //         color: AppColors.appBlack,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_balance_wallet_outlined,
      //         color: AppColors.appBlack,
      //       ),
      //       label: "",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.cached_outlined,
      //         color: AppColors.appBlack,
      //       ),
      //       label: "",
      //     ),
      //   ],
      // ),
    );
  }
}
