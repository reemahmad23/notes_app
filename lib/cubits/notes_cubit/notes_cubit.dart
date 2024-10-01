

import 'package:app_notes/cubits/notes_cubit/notes_state.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';

class NotesCubit extends Cubit<NotesState>{
    NotesCubit() : super(NotesInitial());

    fetchAllNotes() async {
    try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    
    List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes, notes: []));
  } catch(e) {
    emit(NotesFailure(e.toString()));
    }
  
    }
}