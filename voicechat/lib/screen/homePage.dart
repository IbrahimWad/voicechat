import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voicechat/Widget/CustomButton.dart';
import 'package:voicechat/screen/chatRoom.dart';

import '../Widget/IconButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'chat name',
          style: TextStyle(color: Colors.black),
        ),
        leading: CustomIconButton(icon: Icons.person, onPressed: () {}),
        actions: [
          CustomIconButton(icon: Icons.home, onPressed: () {}),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple.withOpacity(0.5),
            Colors.purple.withOpacity(0),
          ],
          stops: [
            0.2,
            1,
          ],
        )),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              //color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Text(
                'Random pics',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              child: Text(
                '<<Online Users (1200)>>',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              height: Get.height * 0.13,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  CustomButton(
                    iconData: Icons.games,
                    text: 'games',
                    onPressed: () {},
                    color: Colors.purple,
                  ),
                  CustomButton(
                    iconData: Icons.voice_chat,
                    text: 'Voice chat',
                    onPressed: () {},
                    color: Colors.amber,
                  ),
                  CustomButton(
                    iconData: Icons.camera,
                    text: 'video call',
                    onPressed: () {},
                    color: Colors.orangeAccent,
                  ),
                  CustomButton(
                    iconData: Icons.text_decrease,
                    text: 'chat room',
                    onPressed: () {
                      Get.to(ChatRoom());
                    },
                    color: Colors.green,
                  ),
                  CustomButton(
                    iconData: Icons.facebook,
                    text: 'facebook',
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                  CustomButton(
                    iconData: Icons.support,
                    text: 'support',
                    onPressed: () {},
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
