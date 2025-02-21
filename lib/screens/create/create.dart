import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rpg/shared/styled_text.dart';
import 'package:rpg/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle("Character Creation"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.code,
                color: AppColors.primaryColor,
              ),
            ),
            Center(
              child: StyledHeading('Welcome, new player.'),
            ),
            Center(
              child: StyledText('Create a name and slogan for your character.'),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText('Character Name'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character Slogan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
