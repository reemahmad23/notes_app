import 'package:app_notes/constants.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:app_notes/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'), 
          home: const NotesView(),
    );
  }
}