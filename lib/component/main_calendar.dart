// main_calendar.dart

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:calendar_scheduler/const/colors.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected; // 가. 날짜 선택 시 실행할 함수
  final DateTime selectedDate; // 나. 선택된 날짜

  const MainCalendar({
    required this.onDaySelected,
    required this.selectedDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ko_kr', // 한국어로 언어 변경
      onDaySelected: onDaySelected, // 다. 날짜 선택 시 실행할 함수
      selectedDayPredicate:
          (date) => // 라. 선택된 날짜를 구분할 로직
              date.year == selectedDate.year &&
              date.month == selectedDate.month &&
              date.day == selectedDate.day,

      firstDay: DateTime(1800, 1, 1), // 1. 첫째 날
      lastDay: DateTime(3000, 1, 1), // 2. 마지막 날
      focusedDay: DateTime.now(), // 3. 화면에 보여지는 날

      headerStyle: const HeaderStyle(
        // A. 달력 최상단 스타일
        titleCentered: true, // 제목 중앙에 위치하기
        formatButtonVisible: false, // 달력 크기 선택 옵션 없애기
        titleTextStyle: TextStyle(
          // 제목 글꼴
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),

      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: BoxDecoration(
          // B. 기본 날짜 스타일
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        weekendDecoration: BoxDecoration(
          // C. 주말 날짜 스타일
          borderRadius: BorderRadius.circular(6.0),
          color: HIGHLIGHTING_COLOR,
        ),
        selectedDecoration: BoxDecoration(
          // D. 선택된 날짜 스타일
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: PRIMARY_COLOR, width: 1.0),
        ),
        defaultTextStyle: TextStyle(
          // E. 기본 글꼴
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        weekendTextStyle: TextStyle(
          // F. 주말 글꼴
          fontWeight: FontWeight.w600,
          color: DARK_GREY_COLOR,
        ),
        selectedTextStyle: const TextStyle(
          // G. 선택된 날짜 글꼴
          fontWeight: FontWeight.w600,
          color: PRIMARY_COLOR,
        ),
      ),
    );
  }
}
