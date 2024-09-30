import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
class NotesCubit extends Cubit<AddNotesState>{
  NotesCubit() : super(AddNotesInitial());

  
}