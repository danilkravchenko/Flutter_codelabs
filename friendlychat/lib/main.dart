// This sample shows adding an action to an [AppBar] that opens a shopping cart.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Friendlychat', home: ChatWidget());
  }
}

class ChatWidget extends StatefulWidget {
  @override
  State createState() => ChatWidgetState();
}

class ChatWidgetState extends State<ChatWidget> {
  final _textController = TextEditingController();

  Widget _buildTextComposer() => Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(hintText: "Send a message"),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: _buildSendButton())
        ],
      ));

  Widget _buildSendButton() => IconButton(
      icon: Icon(Icons.send),
      onPressed: () => _handleSubmitted(_textController.text));

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendlychat"),
      ),
      body: _buildTextComposer(),
    );
  }
}
