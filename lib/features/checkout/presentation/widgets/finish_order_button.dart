import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/features/checkout/presentation/widgets/card_list_view.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class FinishOrderButton extends StatefulWidget {
  const FinishOrderButton({super.key});

  @override
  State<FinishOrderButton> createState() => _FinishOrderButtonState();
}

class _FinishOrderButtonState extends State<FinishOrderButton> {
  @override
  Widget build(BuildContext context) {
    return AppCustomButton(
      textButton: "إنهاء الطلب",
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setSheetState) {
                return Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "البطاقات المحفوظة",
                          style: AppStyles.font16GreenBold,
                        ),
                      ),
                      verticalSpace(16),
                      CardListView(),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "إضافة بطاقة دفع",
                          style: AppStyles.font14greenBold,
                        ),
                        icon: Image.asset(
                          AppAssets.addIconImage,
                          width: 26.w,
                          height: 26.h,
                        ),
                      ),
                      verticalSpace(16),
                      AppCustomButton(
                        textButton: "تأكيد الأختيار",
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            // isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16.r)),
                            ),
                            builder: (
                              context,
                            ) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  verticalSpace(16),
                                  Image.asset(
                                    AppAssets.thanksImage,
                                    width: 250.w,
                                    height: 250.h,
                                    fit: BoxFit.contain,
                                  ),
                                  Text(
                                    "شكرا لك لقد تم تنفيذ طلبك بنجاح",
                                    style: AppStyles.font16GreenBold,
                                  ),
                                  Text(
                                    "يمكنك متابعة حالة الطلب او الرجوع للرئسيية",
                                    style: AppStyles.font16GreenMedium.copyWith(
                                        color: AppColors.darkerGrayColor),
                                  ),
                                  verticalSpace(16),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: AppCustomButton(
                                            textButton: "طلباتي",
                                            onPressed: () {
                                              context.pushNamed(
                                                Routes.bottomNavBarLayout,
                                                arguments: 1,
                                              );
                                            },
                                          ),
                                        ),
                                        horizontalSpace(8),
                                        Expanded(
                                            child: AppCustomButton(
                                          textButton: "الرئيسية",
                                          onPressed: () {
                                            context.pushNamed(
                                              Routes.bottomNavBarLayout,
                                            );
                                          },
                                          isBorder: true,
                                        )),
                                      ],
                                    ),
                                  ),
                                  verticalSpace(16)
                                ],
                              );
                            },
                          );
                        },
                      ),
                      verticalSpace(32),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
