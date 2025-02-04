import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {
  const PostCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/person.png"),
        ),
        SizedBox(width: 8),
        Text(
          "What’s in Your Mind?",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xFF898F9C),
            fontSize: 16,
          ),
        ),
        Spacer(),
        SizedBox(width: 100),
        Icon(
          Icons.photo_library,
          color: Color(0xFF0DE571),
        ),
      ],
    );
  }
}
