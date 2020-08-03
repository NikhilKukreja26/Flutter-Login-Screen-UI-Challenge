import 'package:flutter/material.dart';

import '../core/size_config.dart';
import '../core/styling.dart';
import '../widgets/build_text_field.dart';
import '../widgets/build_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildTopContainer(),
          _buildBottomContainer(
            screenHeight,
            screenWidth,
          ),
        ],
      ),
    );
  }

  Widget _buildTopContainer() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: 7.29 * SizeConfig.widthMultiplier,
        top: 7.32 * SizeConfig.heightMultiplier,
      ),
      decoration: containerGradient,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 4.40 * SizeConfig.textMultiplier,
            ),
          ),
          SizedBox(
            height: 1.17 * SizeConfig.heightMultiplier,
          ),
          Text(
            'Welcome Back',
            style: TextStyle(
              color: Colors.white,
              fontSize: 2.92 * SizeConfig.textMultiplier,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomContainer(double screenHeight, screenWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11.74 * SizeConfig.heightMultiplier),
      ),
      child: Container(
        color: Colors.white,
        height: screenHeight * 0.72,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 9 * SizeConfig.widthMultiplier,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 9.71 * SizeConfig.heightMultiplier,
            ),
            _buildTextFields(),
            SizedBox(
              height: 6 * SizeConfig.heightMultiplier,
            ),
            Text(
              'Forgot Password?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 2.34 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            BuildButton(
              width: screenWidth * 0.35,
              onPressed: () {},
              title: 'Login',
              buttonColor: Color(0xFFE65100),
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            Text(
              'Continue with social media',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 2.1 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 5 * SizeConfig.heightMultiplier,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildButton(
                  width: screenWidth * 0.35,
                  onPressed: () {},
                  title: 'Facebook',
                  buttonColor: Colors.blue,
                ),
                BuildButton(
                  width: screenWidth * 0.35,
                  onPressed: () {},
                  title: 'Github',
                  buttonColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFields() {
    return Container(
      padding: EdgeInsets.all(1.94 * SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          2.92 * SizeConfig.heightMultiplier,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.orange[300],
            blurRadius: 15,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        children: [
          BuildTextField(
            hintText: 'Email or Phone number',
            prefixIcon: Icons.email,
          ),
          Divider(
            // height: 8.0,
            color: Colors.grey[800],
          ),
          BuildTextField(
            hintText: 'Password',
            isPasswordField: true,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
