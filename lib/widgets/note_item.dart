import 'package:app_notes/widgets/edit_note_view.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 16,),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',
              style: TextStyle(
                fontSize: 26,
              color: Colors.black,
            ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text('Upoade your projects in LinkedIn(chat_app)',
                style: TextStyle(
                  fontSize: 20,
                color: Colors.black.withOpacity(0.6),
                          ),),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon:Icon(Icons.delete, 
                color: Colors.black,
                size: 30,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34),
              child: Text('May 21 2024',
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