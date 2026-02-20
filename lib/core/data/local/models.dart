class ConversationEntity {
  final int? id;
  final String title;
  final int createdAt;

  ConversationEntity({this.id, required this.title, required this.createdAt});

  Map<String, Object?> toMap() => {
    if (id != null) 'id': id,
    'title': title,
    'createdAt': createdAt,
  };

  static ConversationEntity fromMap(Map<String, Object?> map) =>
      ConversationEntity(
        id: map['id'] as int?,
        title: map['title'] as String? ?? '',
        createdAt: map['createdAt'] as int? ?? 0,
      );
}

class MessageEntity {
  final int? id;
  final int conversationId;
  final String text;
  final bool isUser;
  final int createdAt;

  MessageEntity({
    this.id,
    required this.conversationId,
    required this.text,
    required this.isUser,
    required this.createdAt,
  });

  Map<String, Object?> toMap() => {
    if (id != null) 'id': id,
    'conversationId': conversationId,
    'text': text,
    'isUser': isUser ? 1 : 0,
    'createdAt': createdAt,
  };

  static MessageEntity fromMap(Map<String, Object?> map) => MessageEntity(
    id: map['id'] as int?,
    conversationId: map['conversationId'] as int,
    text: map['text'] as String? ?? '',
    isUser: (map['isUser'] as int? ?? 0) == 1,
    createdAt: map['createdAt'] as int? ?? 0,
  );
}
