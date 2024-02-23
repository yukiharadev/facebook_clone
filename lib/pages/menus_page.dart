import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenusPage extends StatelessWidget {
  const MenusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 22)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(
            icon: Icon(CupertinoIcons.search, size:22),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Menu'),
          ],
        )
      )
    );
  }
}
