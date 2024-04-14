import 'package:flutter/material.dart';
import 'package:responsive_dash_doard/views/widgets/all_excpences_headrs.dart';
import 'package:responsive_dash_doard/views/widgets/all_excpences_items_list_view.dart';
//import 'package:responsive_dash_doard/views/widgets/all_excpences_items_list_view.dart';
import 'package:responsive_dash_doard/views/widgets/custom_background_container.dart';
//import 'package:responsive_dash_doard/views/widgets/all_excpences_headrs.dart';

class AllExcpenses extends StatelessWidget {
  const AllExcpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExcpencesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExcpencesItemsListView()
        ],
      ),
    );
  }
}
