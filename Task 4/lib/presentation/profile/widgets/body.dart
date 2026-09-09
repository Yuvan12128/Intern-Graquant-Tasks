import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skcl_vms/app/component/custom_button.dart';
import 'package:skcl_vms/app/component/text_field_container.dart';
import 'package:skcl_vms/app/component/typography.dart';
import 'package:skcl_vms/app/constant/component_constant.dart';
import 'package:skcl_vms/app/constant/size_config.dart';
import 'package:skcl_vms/app/log/util/log.dart';
import 'package:skcl_vms/presentation/profile/bloc/person_profile/person_profile_bloc.dart';
import 'package:skcl_vms/presentation/profile/utility/profile_initial_utility.dart';
import 'package:skcl_vms/presentation/profile/utility/profile_utility.dart';

const String fileName = 'profile.component.body.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  File? _imageFile;
  late TextEditingController firstNameTextController;
  late TextEditingController lastNameTextController;
  late TextEditingController emailAddressController;
  late TextEditingController phoneNumberController;
  String? firstNameErrorText;
  String? lastNameErrorText;
  final profileFormGlobalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<PersonProfileBloc>().add(GetPersonProfileEvent());
    firstNameTextController = new TextEditingController();
    lastNameTextController = new TextEditingController();
    emailAddressController = new TextEditingController();
    phoneNumberController = new TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    firstNameTextController.dispose();
    lastNameTextController.dispose();
    emailAddressController.dispose();
    phoneNumberController.dispose();
  }

  void updateImage(XFile? imageFile) async {
    try {
      if (imageFile != null) {
        // final File? croppedImageFile = await ImageCropper.cropImage(
        //   sourcePath: imageFile.path,
        //   aspectRatioPresets: [CropAspectRatioPreset.square],
        // );
        // if (croppedImageFile != null) {
        //   setState(() {
        //     _imageFile = File(croppedImageFile.path);
        //   });
        // }
      }
    } catch (err) {
      Log.error(
        context,
        fileName,
        'updateImage',
        err,
        'Profile cropper and state update',
        'Something went wrong!...',
        false,
        null,
        null,
      );
    }
  }

  Widget profilePicture(PersonProfileState state) {
    return Center(
      child: Stack(
        children: [
          circleAvatar(
            context,
            _imageFile,
            state.nameKeyWord,
          ),
          // CameraContainer.cameraButton(
          //   context,
          //   _imageFile,
          //   updateImage,
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<PersonProfileBloc, PersonProfileState>(
        listener: (context, state) {
          ProfileUtility.errorHandler(
            context,
            state,
            fileName,
          );
          ProfileUtility.loading(state);
          ProfileUtility.updatedSuccessfully(state);
        },
        builder: (context, state) {
          firstNameTextController =
              new TextEditingController(text: state.firstName);
          lastNameTextController =
              new TextEditingController(text: state.lastName);
          emailAddressController =
              new TextEditingController(text: state.emailAddress);
          phoneNumberController =
              new TextEditingController(text: state.phoneNumber);
          return SingleChildScrollView(
            child: Form(
              key: profileFormGlobalKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 4,
                  horizontal: SizeConfig.widthMultiplier * 7,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profilePicture(state),
                    SizedBox(
                      height: SizeConfig.widthMultiplier * 10,
                    ),
                    ...customTextFormField(
                      context,
                      'First Name',
                      'First Name',
                      firstNameTextController,
                      (value) => {ProfileInitialUtility.nameChangedFun(value)},
                      ProfileInitialUtility.nameValidation,
                      null,
                      null,
                      false,
                    ),
                    ...customTextFormField(
                      context,
                      'Last Name',
                      'Last Name',
                      lastNameTextController,
                      (value) =>
                          {ProfileInitialUtility.surnameChangedFun(value)},
                      ProfileInitialUtility.surnameValidation,
                      null,
                      null,
                      false,
                    ),
                    ...customTextFormField(
                      context,
                      'Email address',
                      'Email',
                      emailAddressController,
                      (value) =>
                          {ProfileInitialUtility.emailAddressChangedFun(value)},
                      ProfileInitialUtility.emailValidation,
                      null,
                      null,
                      true,
                    ),
                    ...customTextFormField(
                      context,
                      'Mobile number',
                      'Mobile number',
                      phoneNumberController,
                      (value) =>
                          {ProfileInitialUtility.mobileNumberChangesFun(value)},
                      ProfileInitialUtility.mobileNumberValidation,
                      null,
                      null,
                      true,
                    ),
                    SizedBox(height: SizeConfig.heightMultiplier * 5),
                    Center(
                      child: CustomFlatButton(
                        onpress: () {
                          if (profileFormGlobalKey.currentState!.validate()) {
                            final String firstName =
                                firstNameTextController.text.trim();
                            final String lastName =
                                lastNameTextController.text.trim();
                            context.read<PersonProfileBloc>().add(
                                  PersonProfileUpdate(
                                    personId: state.personId,
                                    firstName: firstName,
                                    lastName: lastName,
                                  ),
                                );
                          }
                        },
                        widget: Text(
                          'Update',
                          style: subtitle1.copyWith(
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 4.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
