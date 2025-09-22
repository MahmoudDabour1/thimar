import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_header_widget.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_list_widget.dart';

import '../../../core/di/dependency_injection.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileCubit = sl<ProfileCubit>();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocProvider.value(
                value: profileCubit..getProfileData(),
                child: ProfileHeaderWidget(),
              ),
              verticalSpace(34),
              ProfileListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
