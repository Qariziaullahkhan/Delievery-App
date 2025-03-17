import 'package:delievery_app/core/app_colors.dart';
import 'package:delievery_app/core/app_strings.dart';
import 'package:delievery_app/core/app_styles.dart';
import 'package:delievery_app/domain/controllers/checkbox_controller.dart';
import 'package:delievery_app/presentations/screens/auth/otp_screen.dart';

import 'package:delievery_app/presentations/screens/auth/registeremail_screen.dart';
import 'package:delievery_app/presentations/widgets/custom_button.dart';
import 'package:delievery_app/presentations/widgets/custom_textfield.dart';
import 'package:delievery_app/presentations/widgets/my_size.dart';
import 'package:delievery_app/presentations/widgets/my_text.dart';
import 'package:delievery_app/presentations/widgets/password_field.dart';
import 'package:delievery_app/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();
    final phonecontroller = TextEditingController();
    final emailcontroller = TextEditingController();
    final addresscontroller = TextEditingController();
    final passwordController = TextEditingController();
    final confirmpasswordController = TextEditingController();
    final CheckBoxController checkboxController = Get.put(CheckBoxController());

    final formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Stack(
            children: [
              Positioned(
                bottom: 0, // Moves image to the bottom
                left: -73,
                right: 0,
                top: 900,
                child: Image.asset(
                  'assets/images/bgimage.png', // Background Image
                  fit: BoxFit.cover,
                  height: 232, // Adjust the height as needed
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 50), // Adjust the top padding as needed
                      child: MyText(
                        text: Constants.signup,
                        style: AppStyles.subheadingstyle3,
                      ),
                    ),
                  ),
                    MySize(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 109, right: 109),
                      child: Image.asset(
                        'assets/images/person.png',
                        height: 180,
                      ),
                    ),
                    MyText(
                      text: "User Name",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyTextField(
                      controller: namecontroller,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      fillColor: Colors.white,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your User Name";
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Phone Number",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyTextField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      fillColor: Colors.white,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your Phone Number";
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Email",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyTextField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      fillColor: Colors.white,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Address",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyTextField(
                      controller: addresscontroller,
                      keyboardType: TextInputType.streetAddress,
                      textInputAction: TextInputAction.next,
                      fillColor: Colors.white,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your Address";
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Password",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyPasswordField(
                      controller: passwordController,
                      isPassword: true,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    MySize(height: Responsive.height(0.02)),
                    MyText(
                      text: "Confirm Password",
                      style: AppStyles.bodyStyle,
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyPasswordField(
                      controller: confirmpasswordController,
                      isPassword: true,
                      borderColor: AppColors.white,
                      textColor: AppColors.primary,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Confirm password';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),

                    // Terms and Conditions Section
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: checkboxController.isChecked.value,
                            onChanged: checkboxController.toggleCheckbox,
                            activeColor: AppColors.white,
                            checkColor: AppColors.secondry,
                            fillColor: WidgetStateProperty.resolveWith<Color>(
                              (states) {
                                if (states.contains(WidgetState.selected)) {
                                  return Colors.white;
                                }
                                return Colors.transparent;
                              },
                            ),
                            side: WidgetStateBorderSide.resolveWith(
                              (states) {
                                if (states.contains(WidgetState.selected)) {
                                  return BorderSide(
                                    color: AppColors.secondry,
                                    width: 1.5,
                                  );
                                }
                                return BorderSide(
                                  color: AppColors.secondry,
                                  width: 1.5,
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Accept ",
                                  style: AppStyles.bodyStyle,
                                ),
                                TextSpan(
                                  text: "terms & conditions",
                                  style: AppStyles.bodyStyle.copyWith(
                                    color: AppColors.secondry,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: AppStyles.bodyStyle,
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: AppStyles.bodyStyle.copyWith(
                                    color: AppColors.secondry,
                                    letterSpacing: 0.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    MySize(
                      height: Responsive.height(0.02),
                    ),
                    MyButton(
                      text: Constants.signup,
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.white,
                      width: double.infinity,
                      height: 48,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          if (checkboxController.isChecked.value) {
                            Get.to(() => const OtpScreen());
                          } else {
                            Get.snackbar(
                              "Terms & Conditions",
                              "Please accept terms & conditions",
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          }
                        } else {
                          Get.snackbar(
                            "Validation Error",
                            "Please fill all the required fields correctly",
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      },
                    ),
                    MySize(
                      height: Responsive.height(0.1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: Constants.dontHaveAccount,
                          style: AppStyles.bodyStyle,
                        ),
                        TextButton(
                          child: MyText(
                            text: Constants.signin,
                            style: AppStyles.bodyStye2,
                          ),
                          onPressed: () {
                            Get.to(() => const RegisteremailScreen());
                          },
                        ),
                      ],
                    ),
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