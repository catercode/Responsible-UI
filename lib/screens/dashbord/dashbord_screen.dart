// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:adminpanel/models/RecentFile.dart';
import 'package:adminpanel/models/myfiles.dart';
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
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiles(),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        Container(
                          padding: EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recent File',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: DataTable(
                                    horizontalMargin: 0,
                                    columnSpacing: defaultPadding,
                                    columns: const [
                                      DataColumn(
                                        label: Text("File Name"),
                                      ),
                                      DataColumn(
                                        label: Text("Date"),
                                      ),
                                      DataColumn(
                                        label: Text("Size"),
                                      ),
                                    ],
                                    rows: List.generate(
                                        demoRecentFiles.length,
                                        (index) => recentFileDataRow(
                                            demoRecentFiles[index]))),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
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
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title),
          ),
        ],
      )),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size))
    ]);
  }
}
