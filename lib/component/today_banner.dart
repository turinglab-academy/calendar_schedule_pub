// today_banner.dart
import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class TodayBanner extends StatelessWidget {
  final DateTime selectedDate; // 1 선택된 날짜
  final int count; // 2. 일정 개수

  const TodayBanner({
    required this.selectedDate,
    required this.count,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      // 기본으로 사용할 글꼴
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );

    return Container(
      color: PRIMARY_COLOR,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDate.year}년 ${selectedDate.month}월 ${selectedDate.day}일', // “년 월 일” 형태로 표시
              style: textStyle,
            ),
            Text(
              '$count개', // 일정 개수 표시
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
