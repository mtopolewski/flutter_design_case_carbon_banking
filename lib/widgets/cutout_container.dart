import 'package:flutter/material.dart';
import 'package:flutter_design_case_carbon_banking/styles/colors.dart';

class CutoutContainer extends StatelessWidget {
  const CutoutContainer({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _cutoutContainerClipper(),
      child: Container(
        width: double.infinity,
        color: AppColors.appBlack,
        child: child,
      ),
    );
  }
}

class _cutoutContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const bottomVerticalOffset = 36.0;
    const cornerOffset = 42.0;
    var path = Path();
    path.moveTo(0, size.height - bottomVerticalOffset);
    path.quadraticBezierTo(0, size.height - cornerOffset - bottomVerticalOffset,
        cornerOffset, size.height - cornerOffset - bottomVerticalOffset);
    path.lineTo(size.width - cornerOffset,
        size.height - cornerOffset - bottomVerticalOffset);
    path.quadraticBezierTo(
        size.width,
        size.height - cornerOffset - bottomVerticalOffset,
        size.width,
        size.height - 2 * cornerOffset - bottomVerticalOffset);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
