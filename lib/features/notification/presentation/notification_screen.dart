import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/theming/app_assets.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/theming/app_styles.dart';
import 'package:thimar/core/theming/font_weight_helper.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/core/widgets/app_loading_indicator_widget.dart';
import 'package:thimar/features/notification/data/models/get_notification_response_model.dart';
import 'package:thimar/features/notification/logic/notification_cubit.dart';
import 'package:thimar/features/notification/logic/notification_state.dart';

import '../../../core/di/dependency_injection.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationCubit = sl<NotificationCubit>();
    return Scaffold(
      appBar: AppCustomAppBar(
        appBarTitle: "الإشعارات",
        isHaveBackButton: false,
      ),
      body: BlocProvider.value(
        value: notificationCubit..getNotifications(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: BlocBuilder<NotificationCubit, NotificationState>(
            builder: (context, state) {
              return state.maybeWhen(
                  getNotificationsLoading: () => AppLoadingIndicatorWidget(),
                  getNotificationsSuccess: (data) => setupSuccess(data),
                  getNotificationsFailure: (error) => Center(
                        child: Text(
                          error,
                          style: AppStyles.font16BlackBold,
                        ),
                      ),
                  orElse: () => SizedBox.shrink());
            },
          ),
        ),
      ),
    );
  }

  ListView setupSuccess(GetNotificationResponseModel data) {
    final notifications = data.data?.notifications;
    if (notifications == null || notifications.isEmpty) {
      return ListView(
        children: [
          SizedBox(
            height: 200.h,
          ),
          Center(
            child: Text(
              "لا توجد إشعارات",
              style: AppStyles.font16BlackBold,
            ),
          ),
        ],
      );
    }
    return ListView.builder(
        itemCount: data.data?.notifications?.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.thimarIcon,
                      width: 40.w,
                      height: 40.h,
                      fit: BoxFit.contain,
                    ),
                    horizontalSpace(8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notifications[index].title ?? "",
                            style: AppStyles.font16BlackBold,
                          ),
                          verticalSpace(8),
                          Text(
                            notifications[index].body ?? "",
                            style: AppStyles.font14WhiteBold.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeightHelper.regular,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(8),
                          Text(
                            notifications[index].createdAt ?? "",
                            style: AppStyles.font14greenBold,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
