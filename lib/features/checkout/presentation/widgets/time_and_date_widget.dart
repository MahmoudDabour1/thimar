import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:thimar/core/theming/app_colors.dart';
import 'package:thimar/core/utils/spacing.dart';
import 'package:thimar/features/checkout/presentation/widgets/time_and_calender_custom_container.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import '../../logic/checkout_cubit.dart';

class TimeAndDateWidget extends StatefulWidget {
  final CheckoutCubit checkOutCubit;

  const TimeAndDateWidget({super.key, required this.checkOutCubit});

  @override
  State<TimeAndDateWidget> createState() => _TimeAndDateWidgetState();
}

class _TimeAndDateWidgetState extends State<TimeAndDateWidget> {
  late CheckoutCubit checkOutCubit;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    checkOutCubit = widget.checkOutCubit;
  }

  @override
  Widget build(BuildContext context) {
    String dateText = selectedDate == null
        ? "اختر اليوم والتاريخ"
        : DateFormat("dd/MM/yyyy").format(selectedDate!);
    String timeText =
    selectedTime == null ? "اختر الوقت" : "${selectedTime!.hour.toString().padLeft(2,'0')}:${selectedTime!.minute.toString().padLeft(2,'0')}";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(32),
        Text(
          "تحديد وقت التوصيل",
          style: AppStyles.font16GreenExtraBold,
        ),
        verticalSpace(10),
        Row(
          children: [
            Flexible(
              child: TimeAndCalenderCustomContainer(
                title: dateText ?? "اختر اليوم والتاريخ",
                iconPath: AppAssets.calenderIcon,
                onTap: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: AppColors.primaryColor,
                            onPrimary: AppColors.whiteColor,
                            onSurface: AppColors.blackColor,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (pickedDate != null) {
                    setState(() => selectedDate = pickedDate);
                    checkOutCubit.date =
                        DateFormat("yyyy-MM-dd").format(pickedDate);
                  }
                },
              ),
            ),
            horizontalSpace(16),
            Flexible(
              child: TimeAndCalenderCustomContainer(
                title: timeText ?? "اختر الوقت",
                iconPath: AppAssets.timeIcon,
                onTap: () async {
                  final pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: AppColors.primaryColor,
                            onPrimary: AppColors.whiteColor,
                            onSurface: AppColors.blackColor,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (pickedTime != null) {
                    setState(() => selectedTime = pickedTime);
                    checkOutCubit.time =
                    "${pickedTime.hour.toString().padLeft(2,'0')}:${pickedTime.minute.toString().padLeft(2,'0')}";
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
