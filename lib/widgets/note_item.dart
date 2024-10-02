import 'package:app_notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:app_notes/views/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);

final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 16,),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,
              style: TextStyle(
                fontSize: 26,
              color: Colors.black,
            ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(note.subTitle,
                style: TextStyle(
                  fontSize: 20,
                color: Colors.black.withOpacity(0.6),
                          ),),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon:Icon(Icons.delete, 
                color: Colors.black,
                size: 30,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34),
              child: Text(note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}