import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/sub_chp_screen/sub_chp_header.dart';
import '../widgets/sub_chp_screen/sub_chp_main_view.dart';


class SubChpScreen extends StatefulWidget {
  const SubChpScreen({Key? key}) : super(key: key);
   static const routename = "/sub_chp";
  @override
  _SubChpScreenState createState() => _SubChpScreenState();
}

class _SubChpScreenState extends State<SubChpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.3,
            width: width,
            //color: Colors.amber,
            child: SubChpHeader(),
          ),
          Container(
            height: height * 0.65,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.08,
            ),
            //color: Colors.amber,
            child: SubChpMainView(height: height, width: width),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          BottomBar(height: height),
        ],
      ),
    );
  }
}



