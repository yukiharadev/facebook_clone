import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DatesPage extends StatelessWidget {
  const DatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hẹn hò', style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 22)),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.person_crop_circle, size:22),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hẹn hò', style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 22)),
          ],
        ),
    ),
    );
  }
}
