import 'package:flutter/material.dart';
import 'package:neaon_movie_app_ui/widgets/text_field_container.dart';

import '../utils/colors.dart';

class RoundedInputField extends StatelessWidget {
  final IconData icons;
  final ValueChanged<String> onChanged;

  RoundedInputField({
    Key? key,
    this.icons = Icons.search_rounded,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return TextFieldContainer(
      child: TextField(
        style: TextStyle(
          color: AppColors.searchBarColor,
          fontSize: size.height * 0.021,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icons,
            color: Colors.white.withOpacity(0.5),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
          suffixIcon: Icon(
            Icons.keyboard_voice_rounded,
            color: Colors.white.withOpacity(0.5),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
