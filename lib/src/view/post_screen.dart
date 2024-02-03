import 'package:flutter/material.dart';
import 'package:mvp_example/src/widgets/post_card_widget.dart';

import '../../locator.dart';
import '../contoller/post_screen_controller.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late PostScreenController controller;

  @override
  void initState() {
    controller = locator<PostScreenController>();
    controller.fetchPosts().then((value) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
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
            const SizedBox(height: 10),
            ...controller.data.map(
              (data) => PostCardWidget(
                postModel: data,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
