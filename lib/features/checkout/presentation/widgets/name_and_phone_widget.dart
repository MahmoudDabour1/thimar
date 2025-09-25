import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../profile/logic/profile_state.dart';

class NameAndPhoneWidget extends StatefulWidget {
  const NameAndPhoneWidget({super.key});

  @override
  State<NameAndPhoneWidget> createState() => _NameAndPhoneWidgetState();
}

class _NameAndPhoneWidgetState extends State<NameAndPhoneWidget> {
  final profileCubit = sl<ProfileCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: profileCubit..getProfileData(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Column(
            children: [
              verticalSpace(20),
              Row(
                children: [
                  Text(
                    "الإسم: ",
                    style: AppStyles.font16GreenExtraBold,
                  ),
                  state.maybeWhen(
                      getProfileSuccess: (data) => Text(
                            data.data.fullname ?? "غير متوفر",
                            style: AppStyles.font16GreenExtraBold,
                          ),
                      orElse: () => SizedBox.shrink()),
                ],
              ),
              verticalSpace(8),
              Row(
                children: [
                  Text(
                    "الجوال: ",
                    style: AppStyles.font16GreenExtraBold,
                  ),
                  state.maybeWhen(
                      getProfileSuccess: (data) => Text(
                        data.data.phone ?? "غير متوفر",
                        style: AppStyles.font16GreenExtraBold,
                      ),
                      orElse: () => SizedBox.shrink()),
                ],
              ),
              verticalSpace(36),
            ],
          );
        },
      ),
    );
  }
}
