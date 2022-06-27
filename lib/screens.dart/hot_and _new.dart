

import 'package:flutter/material.dart';
import 'package:netflix/widgets/appbar_widget.dart';

class HotAndNew extends StatelessWidget {
  const HotAndNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Hot & New')),
    );

  }
}