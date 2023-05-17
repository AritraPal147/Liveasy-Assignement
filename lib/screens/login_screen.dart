import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liveasy_assignment/models/constants/constants.dart';
import 'package:liveasy_assignment/models/constants/size_config.dart';
import 'package:liveasy_assignment/models/widgets/rectangle_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String phoneNumber;

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
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Constants.greyBorder,
                      size: SizeConfig.blockSizeVertical * 3,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                  width: double.infinity,
                ),
                Text(
                  'Please enter your mobile number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.blockSizeVertical * 2.5,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                Text(
                  'You\'ll receive a 4 digit code',
                  style: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical * 1.8,
                    color: Constants.greyTextColor,
                  ),
                ),
                Text(
                  'to verify next',
                  style: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical * 1.8,
                    color: Constants.greyTextColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal * 2,
                    vertical: SizeConfig.blockSizeVertical * 0.65,
                  ),
                  width: SizeConfig.screenWidth * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: SizeConfig.blockSizeVertical * 0.15,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/indian_flag.png',
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 3.5,
                      ),
                      Text(
                        '+91',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 3.5,
                      ),
                      Text(
                        '-',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal * 3.5,
                      ),
                      const Flexible(
                        child: TextField(
                          // TODO: implement onChanged
                          // onChanged: null,
                          decoration: InputDecoration(hintText: 'Mobile Number', border: InputBorder.none),
                          keyboardType: TextInputType.phone,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical,
                ),
                RectangleButton(
                  title: Constants.continueText,
                  width: SizeConfig.screenWidth * 0.8,
                  onPressed: () => Navigator.pushNamed(context, '/otp'),
                ),
              ],
            ),

            // TODO: Implement waves and remove them if keyboard is shown
            const Flexible(
              child: Positioned(
                bottom: 0,
                child: Text('Incomplete'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
