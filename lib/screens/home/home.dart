import 'package:flutter/material.dart';
import 'package:rpg/models/character.dart';
import 'package:rpg/screens/create/create.dart';
import 'package:rpg/screens/home/character_card.dart';
import 'package:rpg/shared/styled_button.dart';
import 'package:rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle("Your Characters"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (character, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),
            StyledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => Create()),
                );
              },
              child: StyledHeading("Create New"),
            ),
          ],
        ),
      ),
    );
  }
}
