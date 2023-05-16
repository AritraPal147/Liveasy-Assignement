import 'package:flutter/material.dart';
import 'package:liveasy_assignment/models/constants/constants.dart';
import 'package:liveasy_assignment/models/constants/size_config.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  /// [title] is the Title of the button (basically the button text)
  final String title;

  /// [onPressed] is the event that occurs when the button is pressed
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Constants.buttonColor,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: SizeConfig.screenWidth * 0.55,
          height: SizeConfig.blockSizeVertical * 2,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.blockSizeVertical * 2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
