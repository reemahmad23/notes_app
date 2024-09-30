import 'package:app_notes/widgets/custom_button.dart';
import 'package:app_notes/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}