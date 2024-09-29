import 'package:app_notes/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 80,
        ),
        Text('Notes',
        style: TextStyle(
          fontSize: 32,
          fontFamily: 'Poppins'
        ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}