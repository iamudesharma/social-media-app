import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  String? content;
  String? senderUid;
  // MessageType type;
  Timestamp? time;

  Message({this.content, this.senderUid, this.time});

  Message.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    senderUid = json['senderUid'];
    //   if (json['type'] == 'text') {
    //     type = MessageType.TEXT;
    //   } else {
    //     type = MessageType.IMAGE;
    //   }
    time = json['time'];
    // }

    // ignore: unused_element
    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['content'] = content;
      data['senderUid'] = senderUid;
      // if (type == MessageType.TEXT) {
      //   data['type'] = 'text';
      // } else {
      //   data['type'] = 'image';
      // }
      data['time'] = time;
      return data;
    }
  }
}
