import 'package:app_notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:app_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_notes/widgets/add_note_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({super.key});

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:  (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state){
            if (state is AddNotesFailure) {
          
            }
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state){
            return AbsorbPointer(
              absorbing:  state is AddNotesLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom
                  ),
                child: SingleChildScrollView(
                  child: AddNoteForm()
                  ),
              ),
            );
          },
        ),
      ),
    );
  }
}

