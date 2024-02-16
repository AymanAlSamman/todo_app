import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TODO/features/settings_provider/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  List<String> languageList = [
    'عربي',
    'English',
  ];

  List<String> themeList = [
    'Light',
    'Dark',
  ];

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context);
    Size mediaQuery = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.2,
          color: vm.isDark() ? const Color(0xff5D9CEC) : theme.primaryColor,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60.0),
            child: Text(
              lang!.settings,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Language ****************
              Text(
                lang!.language,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 10),
              CustomDropdown<String>(
                items: languageList,
                initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
                onChanged: (value) {
                  if (value == "English") {
                    vm.changeLanguage("en");
                  } else if (value == "عربي") {
                    vm.changeLanguage("ar");
                  }
                },
                decoration: CustomDropdownDecoration(
                  closedBorderRadius: BorderRadius.circular(4.0),
                  expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,
                      color: vm.isDark() ? theme.primaryColor : Colors.black),
                  closedSuffixIcon: Icon(Icons.keyboard_arrow_down_rounded,
                      color: vm.isDark() ? theme.primaryColor : Colors.black),
                  expandedBorder: Border.all(color: theme.primaryColor),
                  expandedFillColor:
                      vm.isDark() ? const Color(0xff141922) : Colors.white,
                  closedBorder: Border.all(color: theme.primaryColor),
                  closedFillColor:
                      vm.isDark() ? const Color(0xff141922) : Colors.white,
                ),
              ),
              const SizedBox(height: 50),

              // Theme Mode ************
              Text(
                lang.theme,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 10),
              CustomDropdown<String>(
                items: themeList,
                initialItem: vm.isDark() ? "Dark" : "Light",
                onChanged: (value) {
                  if (value == "Dark" || value == "الوضع الداكن") {
                    vm.changeTheme(ThemeMode.dark);
                  } else if (value == "Light" || value == "فاتح") {
                    vm.changeTheme(ThemeMode.light);
                  }
                },
                decoration: CustomDropdownDecoration(
                  closedBorderRadius: BorderRadius.circular(4.0),
                  expandedSuffixIcon: Icon(Icons.keyboard_arrow_up_rounded,
                      color: vm.isDark() ? theme.primaryColor : Colors.black),
                  closedSuffixIcon: Icon(Icons.keyboard_arrow_down_rounded,
                      color: vm.isDark() ? theme.primaryColor : Colors.black),
                  expandedBorder: Border.all(color: theme.primaryColor),
                  expandedFillColor:
                      vm.isDark() ? const Color(0xff141922) : Colors.white,
                  closedBorder: Border.all(color: theme.primaryColor),
                  closedFillColor:
                      vm.isDark() ? const Color(0xff141922) : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
