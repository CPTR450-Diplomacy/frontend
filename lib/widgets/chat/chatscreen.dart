import 'package:flutter/material.dart';
import 'package:frontend/widgets/chat/chatmessages.dart';

//https://www.freecodecamp.org/news/build-a-chat-app-ui-with-flutter/
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

List<ChatMessage> messages = [
  ChatMessage(
      messageFrom: "Bill: ",
      messageContent: "Hello, world!",
      messageType: "receiver"),
  ChatMessage(
      messageFrom: "Susan: ",
      messageContent: "Random text here!!!",
      messageType: "receiver"),
  ChatMessage(
      messageFrom: "Bob: ",
      messageContent: "Some question about game?",
      messageType: "sender"),
  ChatMessage(
      messageFrom: "Auther: ",
      messageContent: "CoooooooooLLLLLLLLLLL",
      messageType: "receiver"),
  ChatMessage(
      messageFrom: "Bob: ",
      messageContent: "LALALALALLALALALALA",
      messageType: "sender"),
];

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lobby Chat"),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors
                              .grey.shade200 //Message bubbles on the left side
                          : Colors
                              .blue[200]), // Message bubbles on the right side
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageFrom +
                          messages[index].messageContent,
                      style: const TextStyle(fontSize: 15), //Text bubble text
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.blue, //Bar where text is entered
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(
                              color: Colors.black54), //'Write message...' text
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if (textController.text != "") {
                        var newMessage = ChatMessage(
                            messageFrom: "Bob: ",
                            messageType: "sender",
                            messageContent: textController.text);
                        messages.add(newMessage);
                        textController.clear();
                        setState(() {});
                      }
                    }, // Create message
                    child: const Icon(
                      Icons.send,
                      color: Colors.white, //Paper plane icon on send message
                      size: 18,
                    ),
                    backgroundColor: Colors.red, //Send message button
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
