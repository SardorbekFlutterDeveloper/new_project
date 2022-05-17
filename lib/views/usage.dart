import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_project/core/constants/constatns.dart';
import 'package:new_project/extension/extenmsin.dart';

class UsagePage extends StatefulWidget {
  const UsagePage({Key? key}) : super(key: key);

  @override
  State<UsagePage> createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.h * 3,
            color: ColorConst.blue,
            
          ),
            Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.w * 0.053,
              vertical: context.h * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Text(
                //   data['name'],
                //   style: AppTextStyle.textStyleBold(size: context.h * 0.026),
                // ),

                // SizedBox(height: context.h * 0.01),
                // Text(
                //   data['text'],
                //   style: AppTextStyle.textStyle(size: context.h * 0.02),
                // ),

                // SizedBox(height: context.h * 0.02),

                // Text(
                //   data['text_long'],
                //   style: AppTextStyle.textStyle(size: context.h * 0.02),
                // ),

              ],
            ),
            ),
        ],
      ),
    );
  }
}
