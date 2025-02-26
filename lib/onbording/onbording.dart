import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/onbording/iteme.dart';
import 'package:movies/onbording/onbording_model.dart';
import 'package:movies/widgets/default_eleveted_button.dart';

class Onbording extends StatefulWidget {
  static int activeindex = 0;
  static String routeName = '/onbording';
  static PageController controller = PageController();
  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  // OnbordingModel? onbordingModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      controller: Onbording.controller,
      onPageChanged: (index) {
        Onbording.activeindex = index;
        setState(() {});
      },
      itemBuilder: (BuildContext context, int index) {
        return Iteme(
          onbordingModel: OnbordingModel.onbordingList[Onbording.activeindex],
        );
      },
      itemCount: OnbordingModel.onbordingList.length,
    )
        //  Column(
        //   children: [
        //     SvgPicture.asset(
        //       "assets/images/caver.svg",
        //       width: 100,
        //       height: 100,
        //       fit: BoxFit.scaleDown,
        //     )
        //   ],
        // ),
        );
  }
}
