import 'package:flutter/material.dart';
import 'package:skcl_vms/app/component/custom_appbar.dart';
import 'package:skcl_vms/presentation/profile/widgets/body.dart';

const String fileName = 'profile.screen';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
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
    return Scaffold(
      appBar: CustomAppBar.appBar(
        context,
        'My Profile',
        true,
        null,
        null,
        true,
      ),
      body: Body(),
    );
  }
}
