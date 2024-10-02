//import 'package:app_notes/views/notes_view_body.dart';
import 'package:app_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_notes/widgets/add_note_button_sheet.dart';
import 'package:app_notes/widgets/note_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              context: context, builder: (context){
                return AddNoteButtonSheet();
              });
          },
        child: Icon(Icons.add),
        ),
        body: NotesViewBody(),
      );
    
  }
}