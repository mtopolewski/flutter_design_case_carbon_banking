import 'package:flutter/material.dart';

class StylableIcon extends StatelessWidget {
  const StylableIcon(this.icon, {Key? key, this.color, this.size, this.weight})
      : super(key: key);
  final IconData icon;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCode(icon.codePoint),
      style: TextStyle(
        inherit: false,
        color: color ?? Colors.blue,
        fontSize: size ?? 24.0,
        fontWeight: weight ?? FontWeight.w500,
        fontFamily: icon.fontFamily,
        package: icon.fontPackage,
      ),
    );
  }
}
