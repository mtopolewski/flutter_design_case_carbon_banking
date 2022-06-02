import 'package:flutter/material.dart';
import 'package:flutter_design_case_carbon_banking/styles/app_colors.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.icon, this.text1, this.text2, this.text3, {Key? key})
      : super(key: key);
  final Widget icon;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Card(
        color: AppColors.appDarkGrey,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          width: 110,
          height: 146,
          padding:
              const EdgeInsets.only(top: 12, bottom: 22, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: const BoxDecoration(
                    color: AppColors.appGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: icon,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text1,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              Text(
                text2,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                text3,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 9,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        // child: Container(
        //   height: 60,
        //   width: 120,
        //   decoration: const BoxDecoration(
        //       color: AppColors.appBlack,
        //       borderRadius: BorderRadius.all(Radius.circular(10))),
        // ),
      ),
    );
  }
}
