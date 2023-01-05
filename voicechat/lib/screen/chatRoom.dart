import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

String? flag = 'flag';

List<Map> chatRoom = [
  {flag: '🇸🇾', 'name': 'Syria', 'users': '122', 'rooms': '32'},
  {flag: '🇮🇶', 'name': 'Iraq', 'users': '127', 'rooms': '10'},
];

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.purple.withOpacity(0.7),
          Colors.purple.withOpacity(0.3),
        ],
        stops: [
          0.2,
          1,
        ],
      )),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [],
          title: Text('Chat'),
        ),
        backgroundColor: Colors.transparent,
        body: ListView.separated(
            itemCount: chatRoom.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          chatRoom[index]['name'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          '${chatRoom[index]['users']} users',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: Get.width * 0.04,
                  ),
                  Text(
                    chatRoom[index][flag],
                    style: TextStyle(fontSize: 28),
                  ),
                ]),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: Get.height * 0.01,
              );
            }),
      ),
    );
  }
}
