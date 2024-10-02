//import 'package:app_notes/views/custom_app_bar.dart';
import 'package:app_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_notes/widgets/custom_app_bar.dart';
import 'package:app_notes/widgets/note_item.dart';
import 'package:app_notes/widgets/notes_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  void initState(){
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Notes', 
            icon: Icons.search,
          ),
          
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}