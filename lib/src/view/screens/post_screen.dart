import 'package:flutter/material.dart';

import '../../contoller/post_screen_controller.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final PostScreenController controller = PostScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
        actions: [
          IconButton(
            onPressed: () {
              controller.fetchPosts().then((value) {
                setState(() {});
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...controller.data.map(
              (data) => Card(
                child: Column(
                  children: [
                    Text(data.title),
                    const SizedBox(height: 10),
                    Text(data.body),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
