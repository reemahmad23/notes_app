import 'package:app_notes/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});

final String title;
final IconData icon;

final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(
          height: 80,
        ),
        Text( title ,
        style: TextStyle(
          fontSize: 32,
        ),
        ),
        Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,),
      ],
    );
  }
}