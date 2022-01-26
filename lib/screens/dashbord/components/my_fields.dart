import 'package:adminpanel/models/MyFiles.dart';
import 'package:adminpanel/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My File",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                )),
                icon: const Icon(Icons.add),
                label: const Text('Add New')),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: defaultPadding,
              childAspectRatio: 1.4),
          itemBuilder: (context, index) => FilesInCard(
            info: demoMyFiles[index],
          ),
        )
      ],
    );
  }
}
