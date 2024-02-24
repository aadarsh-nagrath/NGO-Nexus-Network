
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:vyasa/src/constants/colors.dart';
import 'package:vyasa/src/constants/image_string.dart';
import 'package:vyasa/src/constants/sizes.dart';
import 'package:vyasa/src/constants/text.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(tEditProfile, style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(profileImg))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100), color: primaryColor),
                      child: const Icon(LineAwesomeIcons.camera, color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(fullName), prefixIcon: Icon(LineAwesomeIcons.user)),
                    ),
                    const SizedBox(height: formHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(email), prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                    ),
                    const SizedBox(height: formHeight - 20),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(phoneNo), prefixIcon: Icon(LineAwesomeIcons.phone)),
                    ),
                    const SizedBox(height: formHeight - 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text(password),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon:
                        IconButton(icon: const Icon(LineAwesomeIcons.eye_slash), onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: formHeight),

                    // -- Form Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const UpdateProfileScreen()),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(tEditProfile, style: TextStyle(color: darkColor)),
                      ),
                    ),
                    const SizedBox(height: formHeight),

                    // -- Created Date and Delete Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: tJoined,
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: tJoinedAt,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent.withOpacity(0.1),
                              elevation: 0,
                              foregroundColor: Colors.red,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text(tDelete),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}