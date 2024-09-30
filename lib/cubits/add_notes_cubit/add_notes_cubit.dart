import 'package:app_notes/constants.dart';
import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:app_notes/models/note_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
class NotesCubit extends Cubit<AddNotesState>{
  NotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async
  {
    emit(AddNotesLoading());
    try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNotesSuccess());
    await notesBox.add(note);
  } catch(e) {
    emit(AddNotesFailure(err: 'err'));
    }
  }
}