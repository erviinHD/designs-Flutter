import 'package:fl_disenios/widgets/backgroud.dart';
import 'package:fl_disenios/widgets/bottom_navigation.dart';
import 'package:fl_disenios/widgets/card_table.dart';
import 'package:fl_disenios/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Backgroud(),

          //Home body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const PageTitle(),
          //Card Table
          CardTable()
        ],
      ),
    );
  }
}
