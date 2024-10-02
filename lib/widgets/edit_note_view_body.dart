import 'package:app_notes/widgets/custom_app_bar.dart';
import 'package:app_notes/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 30,
          ),
          CustomTextField(hintText: 'Content',
          maxLines: 10,),

        ],
      ),
    );
  }
}