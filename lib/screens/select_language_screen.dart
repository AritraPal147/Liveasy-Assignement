import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liveasy_assignment/models/constants/constants.dart';
import 'package:liveasy_assignment/models/constants/size_config.dart';
import 'package:liveasy_assignment/models/widgets/rectangle_button.dart';

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen>
    with SingleTickerProviderStateMixin {
  String dropDownValue = Constants.dropDownMenuItems.first;

  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));

    /// Repeats the animation till infinity
    _controller.repeat();

    animation = Tween<double>(begin: -400, end: 0).animate(_controller);

    /// Begin is set to -400 and end to 0, it will provide the value for
    /// left or right position for Positioned() widget to create movement from left to right

    /// Updates UI on every animation value update
    animation.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.2,
                  width: double.infinity,
                ),
                SvgPicture.asset('assets/images/image.svg'),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Text(
                  'Please Select your Language',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeVertical * 2.5,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Text(
                  'You can change the language',
                  style: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical * 1.8,
                    color: Constants.greyTextColor,
                  ),
                ),
                Text(
                  'at any time',
                  style: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical * 1.8,
                    color: Constants.greyTextColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 2),
                  width: SizeConfig.screenWidth * 0.55,
                  height: SizeConfig.blockSizeHorizontal * 13,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: SizeConfig.blockSizeVertical * 0.2,
                      color: Constants.greyBorder,
                    ),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: dropDownValue,
                    underline: const SizedBox(),
                    style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical * 2,
                      color: Constants.greyBorder,
                    ),
                    onChanged: (String? value) {
                      setState(() => dropDownValue = value!);
                    },
                    items: Constants.dropDownMenuItems
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical,
                ),
                RectangleButton(
                  title: Constants.next,
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                ),
              ],
            ),

            // TODO: Implement waves
            const Positioned(
              bottom: 0,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
