import 'package:TODO/features/settings_provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      width: mediaQuery.width,
      height: 115,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: vm.isDark() ? const Color(0xff141922) : Colors.white,
        borderRadius: BorderRadius.circular(15.5),
      ),
      child: Row(
        children: [
          // Blue Line *********************
          Container(
            width: 6,
            height: 90,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),

          const SizedBox(width: 20),

          //contents
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Play Basketball',
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.primaryColor),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 20,
                    color: vm.isDark() ? Colors.white : Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '10:30 AM',
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: vm.isDark() ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const Spacer(),

          // Check
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Icon(
                Icons.check_rounded,
                size: 38,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
