// domain/entities/chat_message.dart
class ChatMessage {
  final String text;
  final bool isUser; // true = você, false = Lara

  ChatMessage({required this.text, required this.isUser});
}

// domain/repositories/i_chat_repository.dart
abstract class IChatRepository {
  // Inicializa o chat e define a persona
  void initChat();

  // Envia mensagem e recebe resposta (Stream para efeito de digitação)
  Stream<String> sendMessage(String message);

  // Pega histórico atual
  List<ChatMessage> get history;
}
