import 'package:flutter/material.dart';
import 'package:movies/app_theme.dart';
import 'package:movies/auth/register_screen.dart';
import 'package:movies/onbording/onbording.dart';
import 'package:movies/onbording/onbording_model.dart';
import 'package:movies/widgets/default_eleveted_button.dart';

class Iteme extends StatefulWidget {
  OnbordingModel onbordingModel;

  Iteme({required this.onbordingModel});

  @override
  State<Iteme> createState() => _ItemeState();
}

class _ItemeState extends State<Iteme> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/${widget.onbordingModel.coverImageName}.png")),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 16,
        right: 16,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Onbording.activeindex == 0
                  ? Colors.transparent
                  : AppTheme.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.onbordingModel.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 16),
              Text(
                widget.onbordingModel.desscription,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppTheme.grey),
              ),
              SizedBox(height: 16),
              DefaultElevetedButton(
                  onpressed: () {
                    if (Onbording.activeindex ==
                        OnbordingModel.onbordingList.length - 1) {
                      Navigator.of(context)
                          .pushReplacementNamed(RegisterScreen.routeName);
                    }
                    Onbording.controller.nextPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeIn);
                    if (Onbording.activeindex <
                        OnbordingModel.onbordingList.length - 1) {
                      Onbording.activeindex++;
                    }
                  },
                  label: Onbording.activeindex ==
                          OnbordingModel.onbordingList.length - 1
                      ? "Finish"
                      : "Expolor Now"),
              SizedBox(height: 16),
              Visibility(
                visible: Onbording.activeindex == 0 ? false : true,
                child: ElevatedButton(
                  onPressed: () {
                    Onbording.controller.previousPage(
                        duration: Duration(microseconds: 500),
                        curve: Curves.easeIn);
                    if (Onbording.activeindex > 0) {
                      Onbording.activeindex--;
                    }
                  },
                  child: Text("Back"),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: AppTheme.primary),
                    foregroundColor: AppTheme.primary,
                    backgroundColor: AppTheme.black,
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 57),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
