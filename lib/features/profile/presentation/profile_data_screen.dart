import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_custom_button.dart';
import 'package:thimar/core/widgets/app_text_form_field.dart';
import 'package:thimar/features/profile/data/models/get_profile_response_model.dart';
import 'package:thimar/features/profile/logic/profile_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/services/image_picker_services.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/utils/spacing.dart';
import '../../auth/widgets/auth_phone_and_country_widget.dart';
import '../logic/profile_state.dart';

class ProfileDataScreen extends StatefulWidget {
  const ProfileDataScreen({super.key});

  @override
  State<ProfileDataScreen> createState() => _ProfileDataScreenState();
}

class _ProfileDataScreenState extends State<ProfileDataScreen> {
  final profileCubit = sl<ProfileCubit>();

  @override
  void initState() {
    super.initState();
    profileCubit.getProfileData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: profileCubit,
      child: Scaffold(
        appBar: AppCustomAppBar(appBarTitle: "البيانات الشخصية"),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          buildWhen: (previous, current) =>
              previous != current &&
              (current is GetProfileLoading ||
                  current is GetProfileSuccess ||
                  current is GetProfileFailure),
          builder: (context, state) {
            return state.maybeWhen(
              getProfileLoading: () => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              getProfileSuccess: (data) => setupSuccess(data),
              getProfileFailure: (error) => Center(
                child: Text(
                  error,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget setupSuccess(GetProfileResponseModel data) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Stack(
                children: [
                  profileCubit.image != null
                      ? Image.file(
                          profileCubit.image!,
                          height: 71.h,
                          width: 76.w,
                          fit: BoxFit.cover,
                        )
                      : CachedNetworkImage(
                          imageUrl: data.data?.image ?? "",
                          height: 71.h,
                          width: 76.w,
                          fit: BoxFit.cover,
                        ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () async {
                        _showPickImageDialog(context);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        color: AppColors.blackColor,
                        size: 30.r,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(8),
            Text(
              data.data?.fullname ?? "",
              style: AppStyles.font16GreenBold,
            ),
            verticalSpace(4),
            Text(
              data.data?.phone ?? "",
              style: AppStyles.font16GreenMedium,
            ),
            verticalSpace(16),
            AppTextFormField(
              hintText: "اسم المستخدم",
              controller: profileCubit.nameController
                ..text = data.data?.fullname ?? "",
              fillColor: AppColors.lighterGreenColor,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'هذا الحقل مطلوب';
                }
              },
              prefixIcon: Image.asset(
                AppAssets.profileUserImage,
                width: 22.w,
                height: 22.h,
              ),
            ),
            verticalSpace(16),
            AuthPhoneAndCountryWidget(
              phoneController: profileCubit.phoneController
                ..text = data.data?.phone ?? "",
              fillColor: AppColors.lighterGreenColor,
            ),
            verticalSpace(16),
            AppTextFormField(
              fillColor: AppColors.lighterGreenColor,
              hintText: "المدينة",
              controller: profileCubit.cityController
                ..text = data.data?.city?.name ?? "",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'هذا الحقل مطلوب';
                }
              },
              prefixIcon: Image.asset(
                AppAssets.flagImage,
                width: 22.w,
                height: 22.h,
              ),
            ),
            verticalSpace(16),
            AppTextFormField(
              enabled: false,
              onTap: () {},
              fillColor: AppColors.lighterGreenColor,
              hintText: "كلمة المرور",
              validator: (value) {},
              prefixIcon: Image.asset(
                AppAssets.lockImage,
                width: 22.w,
                height: 22.h,
              ),
              suffixIcon: Image.asset(
                AppAssets.arrowLeftImage,
                width: 22.w,
                height: 22.h,
              ),
            ),
            const Spacer(),
            BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                return AppCustomButton(
                  isLoading: state is UpdateProfileLoading,
                  textButton: "تعديل البيانات",
                  onPressed: () {
                    profileCubit.updateProfileData(context).then((value) {
                      context.pop();
                    });
                  },
                );
              },
            ),
            verticalSpace(32),
          ],
        ),
      ),
    );
  }

  void _showPickImageDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading:
                    Icon(Icons.photo_camera, color: AppColors.primaryColor),
                title: Text("التقاط صورة بالكاميرا"),
                onTap: () async {
                  final imageFile = await ImagePickerService().pickImage(
                    source: ImageSource.camera,
                  );
                  if (imageFile != null) {
                    profileCubit.updateSelectedImages(imageFile);
                    setState(() {});
                  }
                  Navigator.pop(ctx);
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.photo_library, color: AppColors.primaryColor),
                title: Text("اختيار من المعرض"),
                onTap: () async {
                  final imageFile = await ImagePickerService().pickImage(
                    source: ImageSource.gallery,
                  );
                  if (imageFile != null) {
                    profileCubit.updateSelectedImages(imageFile);
                    setState(() {});
                  }
                  Navigator.pop(ctx);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
