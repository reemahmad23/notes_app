import 'package:app_notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:app_notes/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:app_notes/models/note_model.dart';
import 'package:app_notes/widgets/color_item.dart';
import 'package:app_notes/widgets/colors_list_view.dart';
import 'package:app_notes/widgets/custom_button.dart';
import 'package:app_notes/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          ColorsListView(),
          SizedBox(
            height: 20,
          ),
          
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNotesLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()){
                  formKey.currentState!.save();

                  var currentDate = DateTime.now();
                  var formattedCurrentDate = DateFormat('dd-mm-yyyy')
                  .format(currentDate);
                  
                  var noteModel = NoteModel(
                    title: title!, 
                    subTitle: subTitle!, 
                    date: formattedCurrentDate, 
                    color: Colors.blue.value);
            
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);  
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            );
            }
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

