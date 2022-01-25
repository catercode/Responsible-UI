import 'dart:html';

import 'package:adminpanel/screens/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_fields.dart';
import 'components/storage_detail.dart';
import 'components/storage_info_card.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Expanded(
                  flex: 5,
                  child: MyFiles()) ,
               SizedBox(
                width: defaultPadding,
              ),
               Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
