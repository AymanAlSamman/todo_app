import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TODO/features/settings/page/settings_view.dart';
import 'package:TODO/features/tasks/page/tasks_view.dart';
import 'settings_provider/settings_provider.dart';

class LayoutView extends StatelessWidget {
  static const String routeName = 'Layout';

  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      extendBody: true,
      body: vm.screens[vm.currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 32,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
            currentIndex: vm.currentIndex,
            onTap: vm.changeIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tasks"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "Settings"),
            ]),
      ),
    );
  }
}
