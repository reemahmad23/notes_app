import 'package:app_notes/constants.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:app_notes/widgets/color_item.dart';
import 'package:flutter/material.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList( {super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex; 

  @override
  void initState()
  {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {
                  
                });

              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index ,
              ),
            ),
          );
        }
      ),
    );
  }
}