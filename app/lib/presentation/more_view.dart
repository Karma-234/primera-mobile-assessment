import 'package:app/core/appcolors.dart';
import 'package:app/presentation/more_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

import '../reusable_widgets/exports.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final locator = Get.put(MoreViewState());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leadingWidth: 300.w,
          leading: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: AppText(
              text: 'More',
              weight: FontWeight.w700,
              height: 28,
              size: 24,
              color:
                  locator.isdark.value ? Appcolors.neutral : Appcolors.blackOut,
            ),
          ),
        ),
        backgroundColor:
            locator.isdark.value ? Appcolors.blackOut : Appcolors.def,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppText(
                text: 'Account',
                color: Appcolors.text60,
              ),
              Gap(8.h),
              Appcontainer(
                bgColor: Appcolors.neutral,
                child: Column(
                  children: [
                    const OptionTile(
                      icon: Icons.model_training,
                      text: 'My Profile',
                    ),
                    Gap(24.h),
                    const OptionTile(
                      icon: Icons.shield,
                      text: 'Account Verification',
                      suffixChild: Appcontainer(
                        bgColor: Appcolors.green100,
                        child: AppText(
                          text: 'Verified',
                          weight: FontWeight.w500,
                          color: Appcolors.neutral,
                        ),
                      ),
                    ),
                    Gap(24.h),
                    const OptionTile(
                      icon: Icons.lock,
                      text: 'Biometric & 2FA',
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              const AppText(
                text: 'Security',
                color: Appcolors.text60,
              ),
              Gap(8.h),
              Appcontainer(
                bgColor: Appcolors.neutral,
                child: Column(
                  children: [
                    const OptionTile(
                      icon: Icons.key,
                      text: 'Change Password',
                    ),
                    Gap(24.h),
                    const OptionTile(
                      icon: Icons.lock,
                      text: 'Change Transaction Pin',
                    ),
                    Gap(24.h),
                    const OptionTile(
                      icon: Icons.lock,
                      text: 'Biometric & 2FA',
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              const AppText(
                text: 'Finances',
                color: Appcolors.text60,
              ),
              Gap(8.h),
              Appcontainer(
                bgColor: Appcolors.neutral,
                child: Column(
                  children: const [
                    OptionTile(
                      icon: Icons.card_giftcard,
                      text: 'Cards',
                    ),
                  ],
                ),
              ),
              Gap(24.h),
              const AppText(
                text: 'Preferences',
                color: Appcolors.text60,
              ),
              Gap(8.h),
              Appcontainer(
                bgColor: Appcolors.neutral,
                child: Column(
                  children: [
                    OptionTile(
                      icon: Icons.key,
                      text: 'System Preference',
                      suffixChild: Switch(
                        value: locator.isdark.value,
                        onChanged: (value) => locator.isdark.value = value,
                        activeColor: Appcolors.primary100,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
