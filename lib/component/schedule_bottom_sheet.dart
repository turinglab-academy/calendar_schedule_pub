// schedule_bottom_sheet.dart
import 'package:flutter/material.dart';
import 'package:calendar_scheduler/component/custom_text_field.dart';
import 'package:calendar_scheduler/const/colors.dart';

class ScheduleBottomSheet extends StatefulWidget {
  const ScheduleBottomSheet({super.key});

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return SafeArea(
      child: Container(
        height:
            MediaQuery.of(context).size.height / 2 +
            bottomInset, // 1. 화면 반 높이에 키보드 높이 추가하기
        color: Colors.white,
        child: Padding(
          // 패딩에 키보드 높이 추가해서 위젯 전반적으로 위로 올려주기
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            top: 8,
            bottom: bottomInset,
          ),
          child: Column(children: [Text("Write Code in Here.")]),
        ),
      ),
    );
  }

  void onSavePressed() {}
}
