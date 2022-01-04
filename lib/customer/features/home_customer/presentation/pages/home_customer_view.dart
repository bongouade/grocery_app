import 'package:flutter/material.dart';

import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:grocery_app/customer/features/home_customer/presentation/widgets/app_bar_widget.dart';
import 'package:grocery_app/customer/features/home_customer/presentation/widgets/drawer_content_widget.dart';

class HomeCustomerView extends StatefulWidget {
  const HomeCustomerView({Key? key}) : super(key: key);

  @override
  State<HomeCustomerView> createState() => _HomeCustomerViewState();
}

class _HomeCustomerViewState extends State<HomeCustomerView> {
  int _index = 0;
  List<Widget> test = [
    const Center(
      child: Text("dqsrheeeeeeee"),
    ),
    const Center(
      child: Text("TFFFFFFFF"),
    ),
    const Center(
      child: Text("TTTTTTTTTTTTTTTTTTTT"),
    ),
    const Center(
      child: Text("dqsrheeeeeeee"),
    ),
  ];

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: Colors.blueGrey,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: true,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Scaffold(
          appBar: _index == 0
              ? AppBarWidget(
                  advancedDrawerController: _advancedDrawerController,
                  context: context,
                ).build()
              : null,
          body: test[_index],
        ),
        drawer: const DrawerContentWidget());
  }
}
