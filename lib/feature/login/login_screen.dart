import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constans/string_constant.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.baseImage.path,
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  StringConstant.welcomeBack,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  StringConstant.startExploring,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            _TextFormFieldText(),
            _TextFormField(),
            _TextFormFieldText(),
            _TextFormField(),
            _ForgotAndRemember(),
          ],
        ),
      ),
    );
  }
}

class _ForgotAndRemember extends StatelessWidget {
  const _ForgotAndRemember();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? newValue) {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: BorderSide(
                  color: Colors.orange,
                ),
              ),
              Text(
                StringConstant.rememberMe,
                style: AppStyles.latoTextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            StringConstant.forgotPassword,
            style: AppStyles.latoTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _TextFormFieldText extends StatelessWidget {
  const _TextFormFieldText();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.emailAdress,
      style: AppStyles.latoTextStyle(fontSize: 14),
      textAlign: TextAlign.left,
    );
  }
}

class _TextFormField extends StatelessWidget {
  const _TextFormField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
