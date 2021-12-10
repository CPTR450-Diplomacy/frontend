//https://www.freecodecamp.org/news/build-a-chat-app-ui-with-flutter/
class ChatMessage {
  String messageContent;
  String messageType;
  String messageFrom;
  ChatMessage(
      {required this.messageFrom,
      required this.messageContent,
      required this.messageType});
}
