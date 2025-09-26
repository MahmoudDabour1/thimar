import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_header_widget.dart';
import 'package:thimar/features/profile/presentation/widgets/profile_list_widget.dart';

import '../../../core/di/dependency_injection.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final profileCubit = sl<ProfileCubit>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocProvider.value(
              value: profileCubit..getProfileData(),
              child: ProfileHeaderWidget(),
            ),
            verticalSpace(34),
            ProfileListWidget(
              profileCubit: profileCubit,
            ),
          ],
        ),
      ),
    );
  }
}
