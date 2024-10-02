import 'package:app_notes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:app_notes/widgets/color_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
      Color(0xffA66E38),
      Color(0xffFFAD60),
      Color(0xffFFEEAD),
      Color(0xff96CEB4),
      Color(0xffFFB0B0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {
                  
                });

              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index ,
              ),
            ),
          );
        }
      ),
    );
  }
}