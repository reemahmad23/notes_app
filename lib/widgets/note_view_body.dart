//import 'package:app_notes/views/custom_app_bar.dart';
import 'package:app_notes/widgets/custom_app_bar.dart';
import 'package:app_notes/widgets/note_item.dart';
import 'package:app_notes/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomAppBar(),
          
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}