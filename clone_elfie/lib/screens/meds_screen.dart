import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../style/style.dart';
import '../widget/widget.dart';

@RoutePage()
class MedsScreen extends StatefulWidget {
  const MedsScreen({super.key});

  @override
  State<MedsScreen> createState() => _MedsScreenState();
}

class _MedsScreenState extends State<MedsScreen> {
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final Map<String, String> _scheduleData = {
    '2025-04-24': 'Take Vitamin C',
    '2025-04-25': 'No medication today',
    '2025-04-26': 'Drink more water',
    '2025-04-27': 'Meeting with doctor',
    '2025-04-28': 'Take medication A',
  };

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        onClickAddButton: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TitleContent(
              preIconImage: "assets/images/elfie_logo.png",
              title: "My Meds",
              tailIcon: Icon(
                Icons.add_circle,
                color: MyColors.blackColor,
                size: 32,
              ),
            ),
            const SizedBox(height: 20),
            _buildCalendar(theme),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.3),
                        end: Offset.zero,
                      ).animate(animation),
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: Text(
                    _selectedDay != null
                        ? (_scheduleData[_selectedDay!
                                .toLocal()
                                .toString()
                                .split(' ')[0]] ??
                            'No medication schedule')
                        : 'Select a day',
                    key: ValueKey(_selectedDay),
                    style: theme.textTheme.displayLarge ??
                        const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle hightLightTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle getDefaultTextStyle() {
    return const TextStyle(
      fontSize: 16,
      color: MyColors.blackColor,
    );
  }

  Widget _buildCalendar(ThemeData theme) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
            });
          },
          calendarFormat: CalendarFormat.week,
          availableGestures: AvailableGestures.horizontalSwipe,
          startingDayOfWeek: StartingDayOfWeek.monday,
          headerVisible: false,
          daysOfWeekVisible: true,
          daysOfWeekStyle: const DaysOfWeekStyle(
            weekendStyle: TextStyle(color: MyColors.blackColor),
            weekdayStyle: TextStyle(color: MyColors.blackColor),
          ),
          calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            isTodayHighlighted: true,
            defaultTextStyle:
                theme.textTheme.bodySmall ?? getDefaultTextStyle(),
            weekendTextStyle:
                theme.textTheme.bodySmall ?? getDefaultTextStyle(),
            todayDecoration: const BoxDecoration(
              color: MyColors.blackColor,
              shape: BoxShape.circle,
            ),
            selectedDecoration: const BoxDecoration(
              color: MyColors.primaryColor,
              shape: BoxShape.circle,
            ),
            todayTextStyle:
                theme.primaryTextTheme.bodySmall ?? hightLightTextStyle(),
            selectedTextStyle:
                theme.primaryTextTheme.bodySmall ?? hightLightTextStyle(),
          ),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              return Center(
                child: Text(
                  _getDayOfWeekText(day),
                  style: theme.textTheme.labelSmall,
                ),
              );
            },
          ),
        ),
        if (_selectedDay != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              isSameDay(_selectedDay, _focusedDay)
                  ? "Today"
                  : _selectedDay!.toLocal().toString().split(' ')[0],
              style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: MyColors.primaryColor,
                  ) ??
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: MyColors.primaryColor,
                  ),
            ),
          ),
      ],
    );
  }

  String _getDayOfWeekText(DateTime dateTime) {
    // Show short day names
    switch (dateTime.weekday) {
      case DateTime.monday:
        return 'MON';
      case DateTime.tuesday:
        return 'TUE';
      case DateTime.wednesday:
        return 'WED';
      case DateTime.thursday:
        return 'THU';
      case DateTime.friday:
        return 'FRI';
      case DateTime.saturday:
        return 'SAT';
      case DateTime.sunday:
        return 'SUN';
      default:
        return '';
    }
  }
}
