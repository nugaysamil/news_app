import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/views/home/home_screen.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

part 'widgets/text/dont_have_account.dart';
part 'widgets/image/base_image.dart';
part 'widgets/text/facebook_google.dart';
part 'widgets/text/or_sign.dart';
part 'widgets/button/login_button.dart';
part 'widgets/text/login_screen_title.dart';
part 'widgets/text/forgot_and_remember.dart';
part 'widgets/textfield/text_form_field.dart';
part 'widgets/textfield/email_form_field.dart';
part 'widgets/textfield/password_form_field.dart';
part 'widgets/button/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image
            _BaseImage(),
            SizedBox(height: 20),
            //WelcomeBack
            _LoginScreenTitle(),
            SizedBox(height: 20),
            //Email Adress
            _TextFormFieldText(
              label: StringConstant.emailAdress,
            ),
            //FormField
            EmailFormField(),
            //Password 
            _TextFormFieldText(
              label: StringConstant.password,
            ),
            //FormField
            PasswordFormField(),
            _ForgotAndRemember(),
            SizedBox(height: 20),
            _LoginButton(),
            SizedBox(height: 20),
            _OrSignInWith(),
            SizedBox(height: 20),
            _FacebookAndGoogle(),
            SizedBox(height: 20),
            _DontHaveAccount(),
          ],
        ),
      ),
    );
  }
}
