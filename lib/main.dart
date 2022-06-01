import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_case_carbon_banking/styles/colors.dart';
import 'package:flutter_design_case_carbon_banking/widgets/cutout_container.dart';

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
      backgroundColor: AppColors.appWhite,
      appBar: AppBar(
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
                        //color: AppColors.appRed,
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
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              const CutoutContainer(),
              Column(
                children: [
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
                  Row(
                    children: [
                      const Text(
                        "\$ 18,354.00",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                          //side: MaterialStateProperty(BorderSide(width: 5.0, color: Colors.blue)),
                          side: MaterialStateProperty.all(
                            const BorderSide(
                                width: 1.0, color: AppColors.appGrey),
                          ),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
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
                      )
                      // OutlinedButton.icon(
                      //   onPressed: () {},
                      //   icon: const Icon(Icons.show_chart),
                      //   label: const Text(""),
                      // ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Card(
                      elevation: 16,
                      color: AppColors.appRed,
                      child: SizedBox(
                        height: 86,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text("\$ 4280"),
                                  Text("AVG Spendings")
                                ],
                              ),
                            ),
                            Container(
                              width: 0.5,
                              height: 50,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text("+3.4%"),
                                  Text("AVG Shift")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  )
                  //const Spacer(),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: AppColors.appWhite,
          ),
        ),
      ]),
    );
  }
}
