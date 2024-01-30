import 'package:flutter/material.dart';

import '../../../locator.dart';
import '../../contoller/post_screen_controller.dart';

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
              (data) => Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 10, right: 20,left: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.title, style: const TextStyle(
                       color: Colors.white,
                      fontWeight: FontWeight.w600,

                      fontSize: 16,
                    ),),
                    const SizedBox(height: 10),
                    Text(data.body,style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,

                      fontSize: 12,
                    ),),
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
