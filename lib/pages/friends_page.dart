import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bạn bè', style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 22)),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search, size:22),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text('Friends Page'),
      ),
    );
  }
}
