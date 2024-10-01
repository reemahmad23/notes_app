//part of 'notes_cubit.dart';

import 'package:app_notes/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess(List<NoteModel> list, {required this.notes});
}


class NotesFailure extends NotesState {
  final String err;

  NotesFailure(this.err);
}