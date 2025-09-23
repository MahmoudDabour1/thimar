import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/about_app_cubit.dart';
import '../../logic/about_app_state.dart';

class SuggestionsAndComplaintsWidgets extends StatelessWidget {
  const SuggestionsAndComplaintsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<AboutAppCubit>();
    return BlocProvider.value(
      value: cubit,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Form(
          key: cubit.formKey,
          child: Column(
            children: [
              verticalSpace(40),
              AppTextFormField(
                hintText: "الإسم",
                controller: cubit.nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'هذا الحقل مطلوب';
                  }
                },
              ),
              verticalSpace(10),
              AppTextFormField(
                hintText: "رقم الموبايل",
                controller: cubit.phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'هذا الحقل مطلوب';
                  }
                },
              ),
              verticalSpace(10),
              AppTextFormField(
                hintText: "عنوان المشكلة",
                controller: cubit.titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'هذا الحقل مطلوب';
                  }
                },
              ),
              verticalSpace(10),
              AppTextFormField(
                hintText: "الموضوع",
                controller: cubit.messageController,
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'هذا الحقل مطلوب';
                  }
                },
              ),
              verticalSpace(30),
              BlocBuilder<AboutAppCubit, AboutAppState>(
                builder: (context, state) {
                  return AppCustomButton(
                    isLoading: state is SendSuggestionLoading,
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate()) {
                        cubit.sendSuggestionAndComplaints(context);
                      }
                    },
                    textButton: "إرسال",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
