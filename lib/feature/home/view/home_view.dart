import 'package:architecture_lessons/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter/material.dart';

part 'widget/home_view_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _HomeViewAppbar(), body: Container());
  }
}
