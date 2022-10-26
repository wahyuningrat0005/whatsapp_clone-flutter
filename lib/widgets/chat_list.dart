import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/my_messagge_card.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: message.length,
      itemBuilder: ((context, index) {
        if (message[index]['isMe'] == true) {
          return MyMessageCard(
            message: message[index]['text'].toString(),
            date: message[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: message[index]['text'].toString(),
          date: message[index]['time'].toString(),
        );
      }),
    );
  }
}
