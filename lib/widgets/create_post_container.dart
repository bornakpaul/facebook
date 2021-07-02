import 'package:facebook/models/user_model.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imgUrl: currentUser.imageUrl),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              )
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionButton(
                    icon: Icons.videocam,
                    iconSize: 28,
                    name: 'Live',
                    onPressed: () {},
                    colors: Colors.red),
                VerticalDivider(
                  width: 8.0,
                ),
                OptionButton(
                    icon: Icons.photo_library,
                    name: 'Photo',
                    iconSize: 24,
                    onPressed: () {},
                    colors: Colors.green),
                VerticalDivider(
                  width: 8.0,
                ),
                OptionButton(
                    icon: Icons.video_call,
                    name: 'Room',
                    iconSize: 28,
                    onPressed: () {},
                    colors: Colors.purpleAccent),
              ],
            ),
          )
        ],
      ),
    );
  }
}
