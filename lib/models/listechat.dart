import 'dart:convert';

import 'package:whatsappclone/models/message.dart';
ChatList chatListFromJson(String str) {
  final jsonData = json.decode(str);
  return ChatList.fromJson(jsonData);
}

class ChatList {
  List<Chat> chats;

  int get unreadMessages {
    int i = 0;
    for(Chat c in chats) {
      i += c.unreadMessages;
    }
    return i;
  }

  ChatList({
    required this.chats
  });

  factory ChatList.fromJson(List<dynamic> json) {
    List<Chat> chats = json.map<Chat>((i) => Chat.fromJson(i)).toList();

    return ChatList(
      chats: chats,
    );
  }
}