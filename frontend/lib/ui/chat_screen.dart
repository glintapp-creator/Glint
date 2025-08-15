import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late IO.Socket socket;
  final msgs = <String>[];

  @override
  void initState() {
    super.initState();
    socket = IO.io('http://localhost:8080/ws', IO.OptionBuilder().setTransports(['websocket']).build());
    socket.on('recvCipher', (data){ setState(()=>msgs.add('Message: ${data['id']} from ${data['senderId']}')); });
    socket.onConnect((_) => print('ws connected'));
  }

  @override
  void dispose() { socket.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Chat')), body: ListView(children: msgs.map((m)=>ListTile(title: Text(m))).toList()));
  }
}
