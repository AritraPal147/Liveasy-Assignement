import 'package:flutter/material.dart';
import 'package:liveasy_assignment/models/constants/constants.dart';
import 'package:liveasy_assignment/models/constants/size_config.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.width,
  });

  /// [title] is the Title of the button (basically the button text)
  final String title;

  /// [width] is the width of the button
  final double width;

  /// [onPressed] is the event that occurs when the button is pressed
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 2),
      child: Material(
        color: Constants.buttonColor,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: width,
          height: SizeConfig.blockSizeVertical * 2,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.blockSizeVertical * 1.75,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
