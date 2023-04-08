import 'dart:convert';

class ReceivedNotification {
  final String? title;
  final String? body;
  final int? sentAt;
  final String? senderName;
  final String? senderServiceType;
  final String? senderImageUrl;
  ReceivedNotification({
    this.title,
    this.body,
    this.sentAt,
    this.senderName,
    this.senderServiceType,
    this.senderImageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'sentAt': sentAt,
      'senderName': senderName,
      'senderServiceType': senderServiceType,
      'senderImageUrl': senderImageUrl,
    };
  }

  factory ReceivedNotification.fromMap(Map<String, dynamic> map) {
    return ReceivedNotification(
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
      sentAt: map['sentAt'] != null ? map['sentAt'] as int : null,
      senderName:
          map['senderName'] != null ? map['senderName'] as String : null,
      senderServiceType: map['senderServiceType'] != null
          ? map['senderServiceType'] as String
          : null,
      senderImageUrl: map['senderImageUrl'] != null
          ? map['senderImageUrl'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReceivedNotification.fromJson(String source) =>
      ReceivedNotification.fromMap(json.decode(source) as Map<String, dynamic>);
}
