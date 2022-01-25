import 'package:adminpanel/screens/constants.dart';
import 'package:adminpanel/screens/dashbord/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Chat(),
          StorageInfoCard(
              title: "Document File",
              svgSrc: "assets/icons/Documents.svg",
              amountOfFiles: "1.3GB",
              numOfFiles: 1329),
          StorageInfoCard(
              title: "Media Files",
              svgSrc: "assets/icons/media.svg",
              amountOfFiles: "15.3GB",
              numOfFiles: 1329),
          StorageInfoCard(
              title: "Other File",
              svgSrc: "assets/icons/folder.svg",
              amountOfFiles: "1.3GB",
              numOfFiles: 1329),
          StorageInfoCard(
              title: " Unknown",
              svgSrc: "assets/icons/unknown.svg",
              amountOfFiles: "1.3GB",
              numOfFiles: 1329),
        ],
      ),
    );
  }
}
