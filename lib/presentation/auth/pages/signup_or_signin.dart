
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';


class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
         BasicAppbar(),
       Align(
        alignment: Alignment.topRight,
        child: SvgPicture.asset(
          AppVectors.topPattern,
        ),
       ),
       Align(
        alignment: Alignment.bottomRight,
        child: SvgPicture.asset(
          AppVectors.bottomPattern,
        ),
       ),
        Align(
        alignment: Alignment.bottomLeft,
        child: Image.asset(
          AppImages.authBG
        )
       ),
        Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              SvgPicture.asset(
                AppVectors.logo,
              ),
               const SizedBox(height: 55,),
              const Text(
                 'Enjoy Listening To Music',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                 ),
              ),
              const SizedBox(height: 21,),
                 const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0), // Adjust padding
              child: Text(
                'Spotify is an indian audio streaming media and services provider',
                style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: AppColors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),  
               const SizedBox(height: 30,),
               Row(
           children: [
            Expanded(
              flex: 1,
              child:BasicAppButton(
                onPressed:(){
                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (BuildContext context) => 
                      SignupPage() 
                      ));
                },
                 title: 'Register'
                 ),
                 
               ),
               const SizedBox(width : 20),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: (){},
                  child: Text('Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: context.IsDarkMode ? Colors.white : Colors.black,
                  ),
                  ) 
                  ),
              )
           ],
           
               ),
               
          
             ],
          ),
        ),
       ),
        ],

      ),
    );
  }
}