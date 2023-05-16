import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liveasy_assignment/models/constants/constants.dart';
import 'package:liveasy_assignment/models/constants/size_config.dart';

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
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
              height: SizeConfig.blockSizeVertical * 2,
            ),


          ],
        ),
      ),
    );
  }
}
