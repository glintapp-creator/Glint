import 'package:flutter/material.dart';
import 'ui/feed_grid.dart';
import 'ui/chat_screen.dart';

void main() => runApp(const GlintApp());

class GlintApp extends StatelessWidget {
  const GlintApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glint',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Glint')),
      body: const FeedGrid(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ChatScreen())),
      ),
    );
  }
}
