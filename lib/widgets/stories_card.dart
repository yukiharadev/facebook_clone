import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        margin:const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
            border: Border.all(color: const Color(0xffdbdbd5))
        )
    );
  }
}

