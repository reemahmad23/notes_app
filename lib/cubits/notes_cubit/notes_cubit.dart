import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:app_notes/cubits/notes_cubit/notes_state.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';

class NotesCubit extends Cubit<NotesState>{
    NotesCubit() : super(NotesInitial());

    List<NoteModel>? notes;
    fetchAllNotes() async {
    
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    
    notes = notesBox.values.toList();
    emit(NotesSuccess());
    }
}