import 'package:app_notes/constants.dart';
import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());

Color color = const Color(0xffA66E38);//
  addNote(NoteModel note) async
  {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    
    await notesBox.add(note);
    emit(AddNotesSuccess());
  } catch(e) {
    emit(AddNotesFailure(err: 'err'));
    }
  }
}