import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:TODO/features/tasks/widget/task_item_widget.dart';

import '../../settings_provider/settings_provider.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  DateTime focusTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var lang = AppLocalizations.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: const Alignment(0, 2.3),
          clipBehavior: Clip.none,
          children: [
            Container(
              width: mediaQuery.width,
              height: mediaQuery.height * 0.2,
              color: vm.isDark() ? const Color(0xff5D9CEC) : theme.primaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 60.0),
                child: Text(
                  '${lang!.todo}',
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            EasyInfiniteDateTimeLine(
              locale: vm.currentLanguage,
              firstDate: DateTime(2023),
              focusDate: focusTime,
              lastDate: DateTime(2025),
              showTimelineHeader: false,
              timeLineProps: const EasyTimeLineProps(
                separatorPadding: 20,
              ),
              dayProps: EasyDayProps(
                height: 100,
                inactiveDayStyle: DayStyle(
                    dayNumStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    dayStrStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    monthStrStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    decoration: BoxDecoration(
                      color:
                          vm.isDark() ? const Color(0xff141922) : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    )),
                todayStyle: DayStyle(
                    monthStrStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    dayStrStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    dayNumStyle: vm.isDark()
                        ? theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.white)
                        : theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.black),
                    decoration: BoxDecoration(
                        color: vm.isDark()
                            ? const Color(0xff141922)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: theme.primaryColor,
                        ))),
                activeDayStyle: DayStyle(
                  dayNumStyle: theme.textTheme.bodyMedium
                      ?.copyWith(color: theme.primaryColor),
                  dayStrStyle: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.primaryColor),
                  monthStrStyle: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.primaryColor),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
              onDateChange: (selectedDate) {
                setState(() {
                  focusTime = selectedDate;
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
              TaskItemWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
