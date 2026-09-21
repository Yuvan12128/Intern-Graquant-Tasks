import 'package:flutter/material.dart';
import 'package:skcl_vms/app/constant/images.dart';

class LogoImage extends StatefulWidget {
  @override
  State<LogoImage> createState() => _LogoImage();
}

class _LogoImage extends State<LogoImage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.asset(
        Images.logo_combined,
        fit: BoxFit.contain,
      ),
    );
  }
}
