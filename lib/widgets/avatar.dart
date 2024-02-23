import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Avatar extends StatelessWidget {
  final String ? imageUrl;
  final bool isActive;
  final bool hasBorder;

  const Avatar ({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  }) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blueAccent ,
          child:CircleAvatar(
              radius: hasBorder ? 17.0 : 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: CachedNetworkImageProvider(imageUrl!),
        )
        )
      ]
    );
  }
}


