import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/data.dart';
import 'package:flutter_app/widgets/avatar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/stories_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:
        SvgPicture.asset(
          "assets/images/logos/facebook_logo.svg",
          color:Colors.blueAccent,
          height: 23,
        ),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.add, size: 22),
            onPressed: () {},
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.search, size: 22),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.facebookMessenger, size: 22),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child:Row(
            children: [
               Padding(
                padding: EdgeInsets.all(15.0),
                child: Avatar(imageUrl: currentUser.imageUrl,),
              ),
              const SizedBox(width:10),
               Expanded(
                  child: InkWell(
                    onTap: (){
                      print("tapped on container");
                    },
                    child: Container(
                      child: Text("Bạn đang nghĩ gì ?"),
                    ),
                  )
              ),
              IconButton(onPressed: (){}, icon: const Icon(
                CupertinoIcons.photo_on_rectangle,
                color: Colors.green,
                size: 30.0,
              ),
              ),
            ],
          ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical:10),
            height: 200,
            color: Colors.white,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StoriesCard(),
                StoriesCard(),
                StoriesCard(),
                StoriesCard(),
                StoriesCard(),
                StoriesCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

}
