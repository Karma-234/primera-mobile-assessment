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
        backgroundColor:
            locator.isdark.value ? Appcolors.blackOut : Appcolors.def,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap(24.h),
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
