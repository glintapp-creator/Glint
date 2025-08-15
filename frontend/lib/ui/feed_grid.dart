import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class FeedGrid extends StatefulWidget {
  const FeedGrid({super.key});
  @override State<FeedGrid> createState() => _FeedGridState();
}

class _FeedGridState extends State<FeedGrid> {
  final dio = Dio(BaseOptions(baseUrl: 'http://localhost'));
  List items = [];
  String? cursor;
  bool loading=false;

  @override
  void initState(){ super.initState(); _load(); }

  Future<void> _load() async {
    if (loading) return;
    setState(()=>loading=true);
    final res = await dio.get('/api/feed/public', queryParameters: { if (cursor!=null) 'cursor': cursor });
    final data = res.data;
    setState((){ items.addAll(data['items']); cursor = data['nextCursor']; loading=false; });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (sn){ if(sn.metrics.pixels>sn.metrics.maxScrollExtent-300) _load(); return false; },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: items.length,
        itemBuilder: (_, i) {
          final it = items[i];
          return Image.network('http://localhost/${it['mediaKey']}', fit: BoxFit.cover);
        },
      ),
    );
  }
}
