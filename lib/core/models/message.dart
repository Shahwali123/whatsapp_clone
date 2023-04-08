import 'dart:convert';

class ChatMessage {
  String? id;
  String? message;
  int? time;
  String? senderUid;
  String? recieverUid;
  ChatMessage({
    this.id,
    this.message,
    this.time,
    this.senderUid,
    this.recieverUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'message': message,
      'time': time,
      'senderUid': senderUid,
      'recieverUid': recieverUid,
    };
  }

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      id: map['id'] != null ? map['id'] as String : null,
      message: map['message'] != null ? map['message'] as String : null,
      time: map['time'] != null ? map['time'] as int : null,
      senderUid: map['senderUid'] != null ? map['senderUid'] as String : null,
      recieverUid:
          map['recieverUid'] != null ? map['recieverUid'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMessage.fromJson(String source) =>
      ChatMessage.fromMap(json.decode(source) as Map<String, dynamic>);
}
