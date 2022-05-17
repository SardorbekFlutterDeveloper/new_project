import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UsagePage extends StatefulWidget {
  const UsagePage({Key? key}) : super(key: key);

  @override
  State<UsagePage> createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Positioned.fill(
                child:
                    Image.asset("assets/images/video.jpg", fit: BoxFit.cover),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
